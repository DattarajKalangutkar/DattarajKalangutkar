<?php 
    include '../api_function.php';
	include '../html_function.php';
	include '../api/config_rescuer.php';

	$tech = 'rescuer';//($_GET['type']) ? $_GET['type']:'Dashboard';	
	$title = 'Disapproval';	
	$action = $api_url.'rescuer/getdisapprovedlist.php';
	$data = json_decode(file_get_contents($action),true);
	$get_data_table_str = getDataTable($rescuer_config,$data['rows'],$tech,'view',$con);

    $deleted_api = $api_url.'rescuer/getRescuerlist.php';
?>

<?php include 'components/header.php';?>
<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Disapproved Rescuer List <?php echo (isset($data['rows'])) ? '('.count($data['rows']).')':'';?></h1>
    </div>
   	<!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-body">
            <?php echo $get_data_table_str;?>
        </div>
    </div>
</div>
<!-- Logout Modal-->
<div class="modal fade" id="deleteButton" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Are you sure want to delete?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="javascript:;" data-dismiss="modal" onclick="deleteItem()">Yes</a>
            </div>
        </div>
    </div>
</div>
<?php include 'components/footer.php';?>
<script type="text/javascript">
    var deleteItemValue = 0;
    function assignItem(id)
    {
        deleteItemValue=id;   
    }

    function deleteItem()
    {
        $.ajax({
            type: "DELETE",
            url: '<?php echo $deleted_api;?>'+'?id='+deleteItemValue,
            data: {},
            success: function(res){
                alert(JSON.parse(res).message);
                window.location.reload();
            },
        });
    }

    function getstatus(id,value)
    {
        var obj = {
            "rescuerVerification":value
        };
        adata = JSON.stringify(obj);
        $.ajax({
            type: "PUT",
            url: '<?php echo $api_url;?>'+'rescuer/rescuerverification.php?id='+id,
            data: adata,
            success: function(res){
                alert(JSON.parse(res).message);
                window.location.reload();
            },
        });
    }

    $(document).ready( function () {
        $('#myTable').DataTable();
    });
</script>