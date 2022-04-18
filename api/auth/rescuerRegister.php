<?php
    include "../config_rescuer.php";
	include "../../api_function.php";
	$postdata = json_decode(file_get_contents("php://input"), true);
	$modules = "rescuer";
	// print_r($postdata);
	// exit(1);


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
			
			if($val['clientname'] != 'createdDate') //if everything is fine then proceed further
				$sample_array[$key] = (isset($postdata[$val['clientname']])) ? $postdata[$val['clientname']]:'';
			else
				$sample_array[$key] = NOW;
		}
		
		if(singleInsert($modules,$sample_array,$con))
		{
			echo json_encode(array("message"=>$modules." created Successfully","flag"=>true));
			exit;
		}
	}
   
	// if($_SERVER['REQUEST_METHOD'] == "POST")
	// {
	// 	$error = false;
	// 	if(empty($postdata['rescuerName']))
	// 	{
	// 		echo json_encode(validate_feilds($postdata['rescuerName'],'Rescuer Name'));
    //     	exit;
	// 	}
	// 	if(empty($postdata['rescuerPhone']))
	// 	{
	// 		echo json_encode(validate_feilds($postdata['rescuerPhone'],'Rescuer Phone'));
    //     	exit;
	// 	}
	// 	if(empty($postdata['rescuerUsername']))
	// 	{
	// 		echo json_encode(validate_feilds($postdata['rescuerUsername'],'Rescuer Username'));
    //     	exit;
	// 	}
	// 	if(empty($postdata['rescuerPassword']))
	// 	{
	// 		echo json_encode(validate_feilds($postdata['rescuerPassword'],'Rescuer Password'));
    //     	exit;
	// 	}
	// 	if(empty($postdata['rescuerAddress']))
	// 	{
	// 		echo json_encode(validate_feilds($postdata['rescuerAddress'],'Rescuer Address'));
    //     	exit;
	// 	}
	// 	if(empty($postdata['rescuerAge']))
	// 	{
	// 		echo json_encode(validate_feilds($postdata['rescuerAge'],'Rescuer Age'));
    //     	exit;
	// 	}
	// 	if(empty($postdata['rescuerEmail']))
	// 	{
	// 		echo json_encode(validate_feilds($postdata['rescuerEmail'],'Rescuer Email'));
    //     	exit;
	// 	}
	// 	if(empty($postdata['rescuerGender']))
	// 	{
	// 		echo json_encode(validate_feilds($postdata['rescuerGender'],'Rescuer Gender'));
    //     	exit;
	// 	}
	// 	if(empty($postdata['rescuerCertificate']))
	// 	{
	// 		echo json_encode(validate_feilds($postdata['rescuerCertificate'],'Rescuer Certificate'));
    //     	exit;
	// 	}
	// 	if(empty($postdata['rescuerExperience']))
	// 	{
	// 		echo json_encode(validate_feilds($postdata['rescuerExperience'],'Rescuer Experience'));
    //     	exit;
	// 	}
	// 	if(empty($postdata['rescuerImage']))
	// 	{
	// 		echo json_encode(validate_feilds($postdata['rescuerImage'],'Rescuer Image'));
    //     	exit;
	// 	}
	// 	if(empty($postdata['rescuerAchievement']))
	// 	{
	// 		echo json_encode(validate_feilds($postdata['rescuerAchievement'],'Rescuer Achievement'));
    //     	exit;
	// 	}

	// 	$data = array(
	// 		'vName'=>$postdata['rescuerName'],
	// 		'vPhone'=>$postdata['rescuerPhone'],
	// 		'vUsername'=>$postdata['rescuerUsername'],
	// 		'vPassword'=>md5($postdata['rescuerPassword']),
	// 		'tAddress'=>$postdata['rescuerAddress'],
	// 		'iAge'=>$postdata['rescuerAge'],
	// 		'vEmail'=>$postdata['rescuerEmail'],
	// 		'vGender'=>$postdata['rescuerGender'],
	// 		'vCertificate'=>$postdata['rescuerCertificate'],
	// 		'vExperience'=>$postdata['rescuerExperience'],
	// 		'vImage'=>$postdata['rescuerImage'],
	// 		'vAchievement'=>$postdata['rescuerAchievement'],
	// 		'vStatus'=>"1",
	// 	);

	// 	if(singleInsert('rescuer',$data,$con))
	// 	{
	// 		echo json_encode(success_msg('Rescuer Registeration Done Successfully',$error));
    //     	exit;
	// 	}
	// }
?>