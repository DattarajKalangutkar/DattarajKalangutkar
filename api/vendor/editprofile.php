<?php
	include "../../api_function.php";
    include "../config_priest.php";
	$postdata = json_decode(file_get_contents("php://input"), true);
	if(isset($_GET['modules']))
		$modules = $_GET['modules'];
	if(isset($_GET['id']))
		$id = $_GET['id'];
	$temp_get_array = $_GET;
	unset($temp_get_array['modules']);
	if(validate_with_db('priest',decodejwt(getallheaders()['Authorization'])->data->email,decodejwt(getallheaders()['Authorization'])->data->password,$con))
	{
		if($_SERVER['REQUEST_METHOD'] == "GET")
		{
		
			if(isset($id))
			{
				$data_from_db = getspecificdata($con,$modules,'iId',$id);//get specific data from database
				$let=count($data_from_db);
				if($let > 0)
				{
					for($i=0;$i < $let ;$i++)
					{
						$data_from_db[$i]['upgradehistory']=getspecificdata($con,'invoices','iUserId',$id);
					}
				}
			
			}
			echo json_encode(array("rows"=>$data_from_db));
			exit;
		}

		if($_SERVER['REQUEST_METHOD'] == "PUT")
		{
			$error=false;
			$err_array = array();
			$sample_array_basic = array();
			$bad_words = get_badwords($con);
			$getemail=getspecificfield($con,'customer','vEmail',$postdata['priestEmail'],'vEmail');
			if(isset($id))
			{
				foreach($priest_config as $key => $val) 
				{
					if($val['clientname'] !='priestPassword')
					{
						if($val['validate'] == '1')
						{
							if($val['type'] == 'string') //validate based on type
								validate_to_string($postdata[$val['clientname']],$val['clientname']);
							else if($val['type'] == 'array')
								validate_to_array($postdata[$val['clientname']],$val['clientname']);
							else if($val['type'] == 'date')
								validate_to_date($postdata[$val['clientname']],$val['clientname']);
							else
								validate_to_number($postdata[$val['clientname']],$val['clientname']);     
						}   
						if(count($val['other_validation']) > 0)
						{    
							foreach($val['other_validation'] as $validateKey => $validateValue) 
							{
								if(in_array($validateValue,$validation_filter_array))
								{  
									validate_other_function($validateValue,$postdata,$val['clientname'],$bad_words,$getemail);   
								} 
							}
						}
					}
					if($key != 'Created_date') //if everything is fine then proceed further
					{
						$sample_array_basic[$key] = (isset($postdata[$val['clientname']])) ? $postdata[$val['clientname']]:''; 
					}	
					else
					{
						$sample_array_basic[$val['clientname']]  = NOW;
					}
				}
				updateData($con,$modules,$sample_array_basic,'iId',$id);
				echo json_encode(array("message"=>$modules." Updated Successfully","flag"=>true));
				exit;
			}
		}

		if($_SERVER['REQUEST_METHOD'] == 'DELETE')
		{
			if(specific_data_id($con,$modules,$id))
			{
				echo json_encode(array("message"=>$modules." Delete Successfully"));
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