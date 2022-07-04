<?php
    include "../config_rescuer.php";
	include "../../api_function.php";
	$postdata = json_decode(file_get_contents("php://input"), true);
	$modules = "rescuer";
	// print_r($postdata);
	// exit(0);

	if(isset($_GET['id']))
		$id = $_GET['id'];

	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		$sample_array = array();
		foreach($rescuer_config as $key=>$val) //Validation each feilds which are mandatory
		{
			if($val['validate'] == '1')
			{
				if($val['type'] == 'string') //validate based on type
					validate_to_string($postdata[$val['clientname']],$val['clientname']);
				else
					validate_to_number($postdata[$val['clientname']],$val['clientname']);
			}
			
			if(isset($val['other_validation']))
			{
				if(checkExist($con,$modules,$postdata[$val['clientname']],$val['other_validation']))
				{
					echo json_encode(error_msg($val['clientname'].' already Present in the Database',false));
					exit;
				}
			}

			if($val['clientname'] != 'createdDate' && $val['clientname'] != 'rescuerPassword') //if everything is fine then proceed further
				$sample_array[$key] = (isset($postdata[$val['clientname']])) ? $postdata[$val['clientname']]:'';
			else if($val['clientname'] == 'rescuerPassword')
				$sample_array[$key] = md5($postdata[$val['clientname']]);
			else
				$sample_array[$key] = NOW;
		}

		if(checkemailId($con,$postdata['rescuerEmail']))
		{
			echo json_encode(array("message"=>"Email Id Already Exist","flag"=>true,"error"=>true));
			exit;
		}
		else
		{
			$inserted_id = singleInsert($modules,$sample_array,$con);
			if($inserted_id)
			{
				echo json_encode(array("message"=>$modules." created Successfully","flag"=>true,"error"=>false,"id"=>$inserted_id));
				exit;
			}
		}
		
	}

	if($_SERVER['REQUEST_METHOD'] == "PUT")
	{
		$sample_array = array();
		foreach($rescuer_config as $key=>$val) //Validation each feilds which are mandatory
		{
			if($val['validate'] == '1')
			{
				if($val['type'] == 'string') //validate based on type
					validate_to_string($postdata[$val['clientname']],$val['clientname']);
				else
					validate_to_number($postdata[$val['clientname']],$val['clientname']);
			}

			if($val['clientname'] != 'createdDate' && $val['clientname'] != 'rescuerPassword') //if everything is fine then proceed further
				$sample_array[$key] = (isset($postdata[$val['clientname']])) ? $postdata[$val['clientname']]:'';
			else if($val['clientname'] == 'rescuerPassword')
				$sample_array[$key] = md5($postdata[$val['clientname']]);
			else
				$sample_array[$key] = NOW;
		}

		if(updateData($con,$modules,$sample_array,'iId',$id))
		{
			echo json_encode(array("message"=>$modules." Updated Successfully","flag"=>true,"error"=>false));
			exit;
		}
	}
?>