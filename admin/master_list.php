<?php 
	include '../api_function.php';
    include '../html_function.php';
	include '../api/config_master.php';

	$tech = ($_GET['type']) ? $_GET['type']:'Dashboard';	
	$title = ($_GET['type']) ? ucwords($_GET['type']):'Dashboard';	
	$action = $api_url.'master/sample.php?modules='.$tech;
	$data = json_decode(file_get_contents($action),true);
	$get_data_table_str = getDataTable($master_config[$tech],$data['rows'],$tech,'edit');
?>

<?php include 'components/header.php';?>
<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800"><?php echo $title;?></h1>
        <a href="master_add.php?type=<?php echo $tech;?>" class="btn btn-success">+</a>
    </div>
   	<!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">List</h6>
        </div>
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
            url: '<?php echo $action;?>'+'&id='+deleteItemValue,
            data: {},
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