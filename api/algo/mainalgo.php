<?php
include "../../api_function.php";
$postdata = json_decode(file_get_contents("php://input"), true);
$gain_ratio = array(
    "snaketype"=>0,
    "color"=>0,
    "headshape"=>0,
    "eyeshape"=>0,
    "pattern"=>0,
    "symptoms"=>0
);

$data_set_all = getalldataAlgo($con,'algo');
$data_set = data_mining($data_set_all,$con);

$main_tree = array();
$iterate = 1;
$branches = array();

while($iterate)
{
    if(count($main_tree) == 0)
    {
        $letcountofsnakes = getuniquedataset($data_set,'name');
        $total_count_data = getTotalcount($data_set);
        $total_entropy = total_dataset_entropy($total_count_data,$letcountofsnakes);
        
        foreach($gain_ratio as $iden=>$value)
        {
            $gain_entropy = 0;
            $get_count_of_every_attribute_values = getuniquedataset($data_set,$iden);
            
            $get_count_of_every_attribute_values_based_on_snake = getcrossattribute($data_set,$get_count_of_every_attribute_values,$letcountofsnakes,$iden,'name');
            $gain_entropy = getgainentropy($data_set,$iden,$get_count_of_every_attribute_values,$get_count_of_every_attribute_values_based_on_snake,$total_count_data,$total_entropy); 
            $gain_ratio[$iden] = $gain_entropy;
        }

       
        $attribute_with_highest_gain_ratio = getmaxvalue($gain_ratio);
        
        $main_tree[$attribute_with_highest_gain_ratio] = array(
            "root_element"=>$attribute_with_highest_gain_ratio,
            "done"=>1,
            "trace"=>[$attribute_with_highest_gain_ratio]
        );
        
        $get_count_of_every_attribute_values = getuniquedataset($data_set,$attribute_with_highest_gain_ratio);
        if(count($get_count_of_every_attribute_values) > 0)
        {
            foreach($get_count_of_every_attribute_values as $key=>$value)
            {
                if($value > 1)
                    array_push($branches,$key);
            }
        }
        $main_tree = updateMainTree($main_tree,$get_count_of_every_attribute_values,$attribute_with_highest_gain_ratio,"name",$data_set);
        unset($gain_ratio[$attribute_with_highest_gain_ratio]);
        
    }
    else 
    {
        if(checkforbranches($main_tree))
        {
            $statuszerodata = getbranchwithzerostatus($main_tree);
            $main_tree[$statuszerodata['root']]['done'] = 1;
            $new_data_set = getfilterdata($data_set,$statuszerodata['trace']);
            
            $letcountofsnakes = getuniquedataset($new_data_set,'name');
            $total_count_data = getTotalcount($new_data_set);
            $total_entropy = total_dataset_entropy($total_count_data,$letcountofsnakes);
           
            foreach($gain_ratio as $iden=>$value)
            {
                
                $gain_entropy = 0;
                $get_count_of_every_attribute_values = getuniquedataset($new_data_set,$iden);
                
                $get_count_of_every_attribute_values_based_on_snake = getcrossattribute($new_data_set,$get_count_of_every_attribute_values,$letcountofsnakes,$iden,'name');
                $gain_entropy = getgainentropy($new_data_set,$iden,$get_count_of_every_attribute_values,$get_count_of_every_attribute_values_based_on_snake,$total_count_data,$total_entropy); 
                $gain_ratio[$iden] = $gain_entropy;
            }
            
            $attribute_with_highest_gain_ratio = getmaxvalue($gain_ratio);
            
            $new_trace = $statuszerodata['trace'];
            array_push($new_trace,$attribute_with_highest_gain_ratio);
            $main_tree[$statuszerodata['root']]['child'][$attribute_with_highest_gain_ratio] = array(
                "root"=>$attribute_with_highest_gain_ratio,
                "done"=>1,
                "trace"=>$new_trace
            );
            
            $get_count_of_every_attribute_values = getuniquedataset($new_data_set,$attribute_with_highest_gain_ratio);         
            $main_tree = updateMainTreeWithbranches($main_tree,$get_count_of_every_attribute_values,$attribute_with_highest_gain_ratio,"name",$new_data_set,$statuszerodata['root']); 
        }
        else
        {
            foreach($branches as $branch)
            {
                $whileloop = 1;
                while($whileloop)
                {
                    if(alldoneturnone($main_tree,$branch))
                    {
                        $statuszerodata = getdataithzerostatus($main_tree,$branch);
                        $main_tree[$branch]['child'][$statuszerodata['root']]['done'] = 1;
                        $new_data_set = getfilterdata($data_set,$statuszerodata['trace']);
                        
                        $letcountofsnakes = getuniquedataset($new_data_set,'name');
                        $total_count_data = getTotalcount($new_data_set);
                        $total_entropy = total_dataset_entropy($total_count_data,$letcountofsnakes);
                        
                        foreach($gain_ratio as $iden=>$value)
                        {
                            
                            $gain_entropy = 0;
                            $get_count_of_every_attribute_values = getuniquedataset($new_data_set,$iden);
                           
                            $get_count_of_every_attribute_values_based_on_snake = getcrossattribute($new_data_set,$get_count_of_every_attribute_values,$letcountofsnakes,$iden,'name');
                            $gain_entropy = getgainentropy($new_data_set,$iden,$get_count_of_every_attribute_values,$get_count_of_every_attribute_values_based_on_snake,$total_count_data,$total_entropy); 
                            $gain_ratio[$iden] = $gain_entropy;
                        }

                        $attribute_with_highest_gain_ratio = getmaxvalue($gain_ratio);
                        
                        $new_trace = $statuszerodata['trace'];
                        array_push($new_trace,$attribute_with_highest_gain_ratio);
                        $main_tree[$branch]['child'][$attribute_with_highest_gain_ratio] = array(
                            "root"=>$attribute_with_highest_gain_ratio,
                            "done"=>1,
                            "trace"=>$new_trace
                        );
                        
                        $get_count_of_every_attribute_values = getuniquedataset($new_data_set,$attribute_with_highest_gain_ratio);        
                        $main_tree = updateMainTreeWithbranches($main_tree,$get_count_of_every_attribute_values,$attribute_with_highest_gain_ratio,"name",$new_data_set,$branch); 
                    }
                    else
                    {
                        $whileloop = 0;
                    }
                }
            }
            $iterate = 0;
        } 
    }
}


$snaketype_post = ($postdata['snaketype'] == '') ? '':'snaketype_'.$postdata['snaketype'];
$snakecolor_post = ($postdata['color'] == '') ? '':'color_'.$postdata['color'];
$snakeheadshape_post = ($postdata['headshape'] == '') ? '':'headshape_'.$postdata['headshape'];
$snakeEyeshape_post = ($postdata['eyeshape'] == '') ? '':'eyeshape_'.$postdata['eyeshape'];
$snakeopattern_post = ($postdata['pattern'] == '') ? '':'pattern_'.$postdata['pattern'];
$snakesymptoms_post = ($postdata['symptoms'] == '') ? '':'symptoms_'.$postdata['symptoms'];

$input_data = array(
    "snaketype"=>$snaketype_post,
    "color"=>$snakecolor_post,
    "headshape"=>$snakeheadshape_post,
    "eyeshape"=>$snakeEyeshape_post,
    "pattern"=>$snakeopattern_post,
    "symptoms"=>$snakesymptoms_post
);

$snake_data = array();

$root_element = '';
foreach($main_tree as $key=>$value)
{
    if(isset($value['root_element']))
    {
        $root_element = $key;
    }
}

if(isset($input_data[$root_element]))
{
    $root_value = $input_data[$root_element];
    if(isset($main_tree[$root_value]))
    {
        if(isset($main_tree[$root_value]['child']))
            $get_all_child = $main_tree[$root_value]['child'];
        else if(isset($main_tree[$root_value]['snake_name']))
            array_push($snake_data,$main_tree[$root_value]['snake_name']);
        else
        {

        }
    }
}

unset($input_data[$root_element]);
foreach($input_data as $key=>$value)
{
    if(isset($get_all_child[$value]))
    {
        $snake_data_info = $get_all_child[$value];
        if(isset($snake_data_info['snake_name']))
        {
            array_push($snake_data,$snake_data_info['snake_name']);
        }

        foreach($get_all_child as $iden=>$valuesss)
        {
            if(isset($valuesss['snake_name']) && in_array($value,$valuesss['trace']))
            {
                array_push($snake_data,$valuesss['snake_name']);
            }
        }
    }
}

echo json_encode(array("snakes"=>$snake_data,"flag"=>true));
exit;
?>