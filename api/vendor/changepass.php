<?php
	include "../../api_function.php";
    include "../config_pass.php";

	$postdata = json_decode(file_get_contents("php://input"), true);
  
	if(isset($_GET['modules']))
		$modules = $_GET['modules'];
	if(isset($_GET['id']))
		$id = $_GET['id'];
	$temp_get_array = $_GET;
	unset($temp_get_array['modules']);

	if(validate_with_db('priest',decodejwt(getallheaders()['Authorization'])->data->email,decodejwt(getallheaders()['Authorization'])->data->Password,$con))
	{
        if($_SERVER['REQUEST_METHOD'] == "PUT")
        {
            if(isset($id))
            {
                $error = false;
                $err_array = array();
                $sample_array_basic = array();
                $getoldpassword=getspecificfield($con,'priest','iId',$id,'vPassword');
                
                foreach($password_config as $key => $val) 
                {
                    if($val['validate'] == '1')
                    {
                        if($val['type'] == 'string') //validate based on type
                            validate_to_string($postdata[$val['clientname']],$val['clientname']);
                    }
                    
                    if(count($val['other_validation']) > 0)
                    {
                        foreach($val['other_validation'] as $validateKey => $validateValue) 
                        {
                            if(in_array($validateValue,$validation_filter_array))
                            {
                                validate_other_function($validateValue,$postdata,$val['clientname'],'','',$getoldpassword);
                            }
                        }
                    }

                    $sample_array_basic[$key]=md5($postdata[$val['clientname']]);
                }

                updateData($con,'priest',$sample_array_basic,'iId',$id);
                echo json_encode(array("message"=>"Password Changed Successfully","flag"=>true));
                exit; 
            }
        }
    }
    else
    {
        echo json_encode(array("message"=>"Invalid Token","error"=>true));
        exit;
    }
?>