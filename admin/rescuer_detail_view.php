<?php 
    include '../api_function.php';
    include '../html_function.php';
    include '../api/config_rescuer.php';

    $tech = 'user_detail';  
    $title = 'Rescuer Detail'; 
    $action = $api_url.'rescuer\rescuergetdata.php?id='.$_GET['id'];
    $data = json_decode(file_get_contents($action),true);
    $rescuer_data = $data['rescuer'];
?>

<?php include 'components/header.php';?>
<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800"><?php echo $title;?></h1>
    </div>

    <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block p-5">
                        <img src="<?php echo $rescuer_data['rescuerImage'];?>" style="width: 400px;height: auto;object-fit: cover;">
                    </div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4"><?php echo $rescuer_data['rescuerUsername'];?></h1>
                            </div>
                            <form class="user">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <label>Name</label>
                                        <input type="text" class="form-control form-control-user" value="<?php echo $rescuer_data['rescuerName'];?>" disabled="true">
                                    </div>
                                    <div class="col-sm-6">
                                    <label>Phone No</label>
                                    <input type="text" class="form-control form-control-user" value="<?php echo $rescuer_data['rescuerPhone'];?>" disabled="true">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    <label>Email</label>
                                        <input type="text" class="form-control form-control-user" value="<?php echo $rescuer_data['rescuerEmail'];?>" disabled="true">
                                    </div>
                                </div>
                    
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
</div>
<?php include 'components/footer.php';?>
