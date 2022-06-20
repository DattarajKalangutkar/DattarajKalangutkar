<?php 
	include '../api_function.php';
    $title = 'Analysis';  
    $barchart_data = getTopfiverescuer($con);
    $action = $api_url.'services/analysis.php';
    $data = json_decode(file_get_contents($action),true);
	include 'components/header.php';
?>
<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Analysis</h1>
    </div>
    <div class="row">
        <div class="col-xl-3 col-md-6 mb-4">
            <a href="user_list.php">
                <div class="card border-left-primary shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Number Of User</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $data['total_user'];?></div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-user fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-xl-3 col-md-6 mb-4">
            <a href="approvedrescuerlist.php">
                <div class="card border-left-primary shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Number Of Approve Rescuer</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $data['total_approve_rescuer'];?></div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-user fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-xl-3 col-md-6 mb-4">
            <a href="registeredlist.php">
                <div class="card border-left-primary shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Number Of Request</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $data['total_request'];?></div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-user fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Number Of Disapproved Rescuer</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $data['total_disapprove_rescuer'];?></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-user fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xl-6 col-md-6 mb-4">
            <canvas id="toprankingchart" style="width:100%;max-width:600px"></canvas>
        </div>
    </div>
</div>
<?php include 'components/footer.php';?>
<script src="js/charts.js"></script>
<script>
var xValues = <?php echo json_encode($barchart_data['names']);?>;
var yValues = <?php echo json_encode($barchart_data['values']);?>;
var barColors = ["#bb7022", "#317a1e","#5252b9","#afb31a","#440f0f"];

new Chart("toprankingchart", {
  type: "bar",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    legend: {display: false},
    title: {
      display: true,
      text: "Top 5 Ranking"
    }
  }
});
</script>
