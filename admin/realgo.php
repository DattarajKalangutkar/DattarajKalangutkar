<?php
function searchForId($search_value, $array, $id_path) 
{
		// Iterating over main array
		foreach ($array as $key1 => $val1) 
		{
			$temp_path = $id_path;  
			// Adding current key to search path
			array_push($temp_path, $key1);
			// Check if this value is an array with atleast one element
			if(is_array($val1) and count($val1)) 
			{
				// Iterating over the nested array
				foreach ($val1 as $key2 => $val2) 
				{
					if($val2 == $search_value) 
					{		  
						// Adding current key to search path
						array_push($temp_path, $key2);		  
						return join(" --> ", $temp_path);
					}
				}
			}
			elseif($val1 == $search_value) 
			{
				return join(" --> ", $temp_path);
			}
		} 
		return null;
	}
    include '../api_function.php';
    $data_set = array(
        "row_1"=>array
		(
            "type"=>"venomous",
            "color"=>"black",
            "headshape"=>"triangular spade shaped",
            "texture"=>"yellowish white",
            "eyepupil"=>"round",
            "symptoms"=>"redness",
            "name"=>"cobra"
        ),
        "row_2"=>array
        (
            "type"=>"venomous",
            "color"=>"black",
            "headshape"=>"triangular spade shaped",
            "texture"=>"yellowish white",
            "eyepupil"=>"round",
            "symptoms"=>"swelling",
            "name"=>"cobra"
        ),
        "row_3"=>array
        (
            "type"=>"venomous",
            "color"=>"black",
            "headshape"=>"triangular spade shaped",
            "texture"=>"yellowish white",
            "eyepupil"=>"round",
            "symptoms"=>"severe pain at the area",
            "name"=>"cobra"
        ),
        "row_4"=>array
        (
            "type"=>"venomous",
            "color"=>"black",
            "headshape"=>"triangular spade shaped",
            "texture"=>"yellowish white",
            "eyepupil"=>"round",
            "symptoms"=>"breathing problem",
            "name"=>"cobra"
        ),
        "row_5"=>array
        (
            "type"=>"venomous",
            "color"=>"black",
            "headshape"=>"triangular spade shaped",
            "texture"=>"yellowish white",
            "eyepupil"=>"round",
            "symptoms"=>"vomiting",
            "name"=>"cobra"
        ),
        "row_6"=>array
        (
            "type"=>"venomous",
            "color"=>"black",
            "headshape"=>"triangular spade shaped",
            "texture"=>"yellowish white",
            "eyepupil"=>"round",
            "symptoms"=>"kidney failure",
            "name"=>"cobra"
        ),
        "row_7"=>array
        (
            "type"=>"venomous",
            "color"=>"dark brown",
            "headshape"=>"triangular spade shaped",
            "texture"=>"yellowish white",
            "eyepupil"=>"round",
            "symptoms"=>"redness",
            "name"=>"cobra"
        ),
        "row_8"=>array
        (
            "type"=>"venomous",
            "color"=>"dark brown",
            "headshape"=>"triangular spade shaped",
            "texture"=>"yellowish white",
            "eyepupil"=>"round",
            "symptoms"=>"swelling",
            "name"=>"cobra"
        ),
        "row_9"=>array
        (
            "type"=>"venomous",
            "color"=>"dark brown",
            "headshape"=>"triangular spade shaped",
            "texture"=>"yellowish white",
            "eyepupil"=>"round",
            "symptoms"=>"severe pain at the area",
            "name"=>"cobra"
        ),
        "row_10"=>array
        (
            "type"=>"venomous",
            "color"=>"dark brown",
            "headshape"=>"triangular spade shaped",
            "texture"=>"yellowish white",
            "eyepupil"=>"round",
            "symptoms"=>"vomiting",
            "name"=>"cobra"
        )
    );

$gain_ratio = array(
    "type"=>0,
    "color"=>0,
    "headshape"=>0,
    "eyeshape"=>0,
);

$main_tree = array();

$total_dataset_count = count($data_set);
//to get total number of records in dataset and their counts
$get_name_snake = getuniquedataset($data_set,'name');
//Get the Total Gain Entropy
$total_entropy = total_dataset_entropy($total_dataset_count,$get_name_snake);

foreach($gain_ratio as $iden=>$value)
{
    $gain_entropy = 0;
    $get_color_snake = getuniquedataset($data_set,$iden);
    $getcrossattributevalue = getcrossattribute($data_set,$get_color_snake,$get_name_snake,$iden,'name');
    $gain_entropy = getgainentropy($data_set,$iden,$get_color_snake,$getcrossattributevalue,$total_dataset_count,$total_entropy);
    $gain_ratio[$iden] = $gain_entropy;
}

$leveltostart = 1;
$higgestattribute = getmaxvalue($gain_ratio);
$main_tree['parent'] = $higgestattribute;
$main_tree['name'] = $higgestattribute;
$main_tree['level'] = 0;
$main_tree['child'] = gettreeformat(getuniquedataset($data_set,$higgestattribute),$data_set,$higgestattribute,'','',$leveltostart);
$main_tree['done'] = 1;
unset($gain_ratio[$higgestattribute]);

$checkattribute = $higgestattribute;
//check if any done = 0, othersie break the condition
for($i=0;$i<10;$i++)
{
    $identifier = checkeverythingisdone($main_tree);
    if(isset($identifier['done']))
    {   
        if($identifier['done'] != '1' && $identifier['level'] == '1')
        {
            $leveltostart = 2;
            $ne_data_Set = array();
            foreach($data_set as $key=>$value)
            {
                if($value[$checkattribute] == $identifier['name'])
                {
                    array_push($ne_data_Set,$value);
                }
            } 

            $total_dataset_count = count($ne_data_Set);
            $get_name_snake = getuniquedataset($ne_data_Set,'name');
            $total_entropy = total_dataset_entropy($total_dataset_count,$get_name_snake);

            foreach($gain_ratio as $iden=>$value)
            {
                $gain_entropy = 0;
                $get_color_snake = getuniquedataset($ne_data_Set,$iden);
                $getcrossattributevalue = getcrossattribute($ne_data_Set,$get_color_snake,$get_name_snake,$iden,'name');
                $gain_entropy = getgainentropy($ne_data_Set,$iden,$get_color_snake,$getcrossattributevalue,$total_dataset_count,$total_entropy);
                $gain_ratio[$iden] = $gain_entropy;
            }

            $higgestattribute_level = getmaxvalue($gain_ratio);
            $main_tree['child'][$identifier['name']]['child'] = gettreeformat(getuniquedataset($ne_data_Set,$higgestattribute_level),$ne_data_Set,$higgestattribute_level,$identifier['name'],$identifier['parent'],$leveltostart);
            $main_tree['child'][$identifier['name']]['done'] = 1;
        }
        else if($identifier['done'] != '1' && $identifier['level'] == '2')
        {
            $leveltostart = 3;
            $checkattribute = $higgestattribute_level;
            $ne_data_Set = array();
            foreach($data_set as $key=>$value)
            {
                if($value[$checkattribute] == $identifier['name'] && $value[$identifier['parent_attr']] == $identifier['parent_slug'])
                {
                    array_push($ne_data_Set,$value);
                }
            } 

            $total_dataset_count = count($ne_data_Set);
            $get_name_snake = getuniquedataset($ne_data_Set,'name');
            $total_entropy = total_dataset_entropy($total_dataset_count,$get_name_snake);

            foreach($gain_ratio as $iden=>$value)
            {
                $gain_entropy = 0;
                $get_color_snake = getuniquedataset($ne_data_Set,$iden);
                $getcrossattributevalue = getcrossattribute($ne_data_Set,$get_color_snake,$get_name_snake,$iden,'name');
                $gain_entropy = getgainentropy($ne_data_Set,$iden,$get_color_snake,$getcrossattributevalue,$total_dataset_count,$total_entropy);
                $gain_ratio[$iden] = $gain_entropy;
            }

            $higgestattribute_level = getmaxvalue($gain_ratio);

            
            $main_tree['child'][$identifier['parent_slug']]['child'][$identifier['name']]['child'] = gettreeformat(getuniquedataset($ne_data_Set,$higgestattribute_level),$ne_data_Set,$higgestattribute_level,$identifier['name'],$identifier['parent'],$leveltostart);
            $main_tree['child'][$identifier['parent_slug']]['child'][$identifier['name']]['done'] = 1;
        }
        else
        {

        }
    }
    
}
DFA($main_tree);
DFA(count($main_tree['child']));
//$search_path = searchForId('cobra',$data_set, array('$'));
//print($search_path);
?>