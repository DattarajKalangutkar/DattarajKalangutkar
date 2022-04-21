<?php
    include "../config_rescuer.php";
	include "../../api_function.php";
	$postdata = json_decode(file_get_contents("php://input"), true);

    if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//validation
		$error = false;
		if(empty($postdata['rescuerPhone']))
		{
			echo json_encode(validate_feilds($postdata['rescuerPhone'],'Rescuer Phone'));
            exit;
		}
		if(empty($postdata['rescuerPassword']))
		{
			echo json_encode(validate_feilds($postdata['rescuerPassword'],'Rescuer Password'));
        	exit;
		}

		$data = validate_with_db_data('resuer',$postdata['rescuerPhone'],$postdata['rescuerPassword'],$con);
    //    DFA($data);

		if($data['vVerificationstatus'] == '0')
		{
			echo json_encode(array("validate"=>false,"message"=>'You Are Not verifierd By Admin'));
			exit;
		}
		else if($data['vVerificationstatus'] == '2')
		{
			echo json_encode(array("validate"=>false,"message"=>'You Are dissapproved By Admin'));
			exit;
		}
		else
		{
			echo json_encode(array("token"=>encodejwt($postdata['rescuerPhone'],$postdata['rescuerPassword']),"validate"=>true,"message"=>'','userid'=>getrescuerdata('rescuer',$con,'iId')));
			exit;
		}
	}
?>