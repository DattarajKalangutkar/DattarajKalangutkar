<?php
    include "../config_user.php";
	include "../../api_function.php";
	$postdata = json_decode(file_get_contents("php://input"), true);
	$modules = "user";
    // print_r($postdata);
	// exit();

	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		$sample_array = array();
		foreach($user_config as $key=>$val) //Validation each feilds which are mandatory
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
	// 	if(empty($postdata['userName']))
	// 	{
	// 		echo json_encode(validate_feilds($postdata['userName'],'User Name'));
    //     	exit;
	// 	}
	// 	if(empty($postdata['userPhone']))
	// 	{
	// 		echo json_encode(validate_feilds($postdata['userPhone'],'User Phone'));
    //     	exit;
	// 	}
	// 	if(empty($postdata['userEmail']))
	// 	{
	// 		echo json_encode(validate_feilds($postdata['userEmail'],'User Email'));
    //     	exit;
	// 	}
	// 	if(empty($postdata['userUsername']))
	// 	{
	// 		echo json_encode(validate_feilds($postdata['userUsername'],'User Username'));
    //     	exit;
	// 	}
	// 	if(empty($postdata['userPassword']))
	// 	{
	// 		echo json_encode(validate_feilds($postdata['userPassword'],'User Password'));
    //     	exit;
	// 	}

	// 	$data = array(
	// 		'vName'=>$postdata['userName'],
	// 		'vPhone'=>$postdata['userPhone'],
	// 		'vEmail'=>$postdata['userEmail'],
	// 		'vUsername'=>$postdata['userUsername'],
	// 		'vPassword'=>md5($postdata['userPassword']),
	// 		'vStatus'=>"1",
	// 	);

	// 	if(singleInsert('user',$data,$con))
	// 	{
	// 		echo json_encode(success_msg('User Registeration Done Successfully',$error));
    //     	exit;
	// 	}
	// }
?>