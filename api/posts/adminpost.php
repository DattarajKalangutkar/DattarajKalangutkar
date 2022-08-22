<?php
	include "../config_post.php";
	include "../../api_function.php";
	$postdata = json_decode(file_get_contents("php://input"), true);
	$modules = 'post';
	$temp_get_array = $_GET;
	unset($temp_get_array['modules']);
	
	if($_SERVER['REQUEST_METHOD'] == "GET")
	{
		$sample_array = array();
		$count = 0;
		if(isset($id))
		{
			$data_from_db = getspecificdata($con,$modules,'iId',$id);//get specific data from database
			$sample_array['id'] = $data_from_db['iId'];
			foreach($post_config as $key=>$val)
			{
				if($key == 'vImage')
				{
					$sample_array[$val['clientname']] = $api_url.$data_from_db[$key];
				}
				else
				{
					if(isset($val['data_fetch']))
					{
						$sample_array[$val['clientname']] = GETXFROMYID($con,$val['data_fetch'],'vName',$data_from_db[$key]);
					}
					else{
						$sample_array[$val['clientname']] = $data_from_db[$key];
					}
				}
			}
			$count = 1;
		} 
		else
		{
			//search Functionality here
			$search_str = '';
			if(count($temp_get_array) > 0)
			{
				foreach ($post_config as $key=>$val) 
				{
					if(array_key_exists($val['clientname'],$temp_get_array))
					{
						$search_str .= " and $key LIKE '".$temp_get_array[$val['clientname']]."'";
					}
				}
			}

			$data_from_db = getalldata($con,$modules,$search_str); //get all the data from the database
			foreach($data_from_db as $key=>$val)
			{
				$sample_array[$key]['id'] = $data_from_db[$key]['iId'];
				foreach($post_config as $keys=>$val)
				{
					if($keys == 'vImage')
					{
						$sample_array[$key][$val['clientname']] = $api_url.$data_from_db[$key][$keys];
					}
					else
					{
						if(isset($val['data_fetch']))
						{
							$sample_array[$key][$val['clientname']] = GETXDATAFROMYID($con,$val['data_fetch'],'vName',$data_from_db[$key][$keys]);
						}
						else{
							$sample_array[$key][$val['clientname']] = $data_from_db[$key][$keys];
						}
					}
					
				}
			}	
			$count = count($sample_array);
		}
		echo json_encode(array("count"=>$count,"rows"=>$sample_array));
		exit;
	}

?>