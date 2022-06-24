<?php 
    include '../api_function.php';
    include '../html_function.php';
    include '../api/config_transcation.php';

    $tech = 'transaction';  
    $title = 'transaction_list'; 
    $action = $api_url.'transcation/updationtransactionlist.php?id='.$_GET['id'];
    $data = json_decode(file_get_contents($action),true);
    $transcation_data = $data['rows'];
    //DFA($data);exit;

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
                    <?php 
                        if(($transcation_data['transStatus']['iId'])== 2 || ($transcation_data['transStatus']['iId'])== 3)
                        {
                    ?>
                            <div class="col-lg-5 d-none d-lg-block p-5">
                                <img src="<?php echo (isset($transcation_data['transImage'])) ? $transcation_data['transImage']:'-'; ?>" style="width: 400px;height: auto;object-fit: cover;">
                            </div>
                    <?php
                        }
                    ?>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4"><?php echo (isset($transcation_data['transStatus']['vName'])) ? $transcation_data['transStatus']['vName']:'-'; ?></h1>
                            </div>
                            <form class="user">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <label>Rescuer Name</label>
                                        <input type="text" class="form-control form-control-user" value="<?php echo (isset($transcation_data['transRescuerId']['vName'])) ? $transcation_data['transRescuerId']['vName']:'-'; ?>" disabled="true">
                                    </div>
                                    <div class="col-sm-6">
                                    <label>User Name</label>
                                    <input type="text" class="form-control form-control-user" value="<?php echo (isset($transcation_data['transUserId']['vName'])) ? $transcation_data['transUserId']['vName']:'-'; ?>" disabled="true">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    <label>Snake Name</label>
                                    <input type="text" class="form-control form-control-user" value="<?php echo (isset($transcation_data['transSnakeId']['vName'])) ? $transcation_data['transSnakeId']['vName']:'-'; ?>" disabled="true">
                                    </div>
                                    <div class="col-sm-6">
                                    <label>Rescued Date</label>
                                    <input type="text" class="form-control form-control-user" value="<?php echo $transcation_data['transRescuerDate'];?>" disabled="true">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    <label>Rescued Address</label>
                                        <input type="text" class="form-control form-control-user" value="<?php echo $transcation_data['transRescuerAddress'];?>" disabled="true">
                                    </div>
                                    <div class="col-sm-6">
                                    <label>Length</label>
                                    <input type="text" class="form-control form-control-user" value="<?php echo $transcation_data['transSnakeLength'];?>" disabled="true">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    <label>Weight</label>
                                        <input type="text" class="form-control form-control-user" value="<?php echo $transcation_data['transSnakeWeight'];?>" disabled="true">
                                    </div>
                                    <div class="col-sm-6">
                                    <label>Comment</label>
                                    <input type="text" class="form-control form-control-user" value="<?php echo $transcation_data['transComment'];?>" disabled="true">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    <label>Rate</label>
                                        <input type="text" class="form-control form-control-user" value="<?php echo $transcation_data['transRate'];?>" disabled="true">
                                    </div>
                                    <!-- <div class="col-sm-6">
                                    <label>Comment</label>
                                    <input type="text" class="form-control form-control-user" value="<?php echo $transcation_data['transComment'];?>" disabled="true">
                                    </div> -->
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
</div>
<?php include 'components/footer.php';?>
