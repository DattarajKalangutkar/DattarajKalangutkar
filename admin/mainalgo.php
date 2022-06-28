
<?php
include '../api_function.php';
$gain_ratio = array(
    "type"=>0,
    "color"=>0,
    "headshape"=>0,
    "eyeshape"=>0,
);



// $file = fopen("snake_data.csv","r");
// while(! feof($file))
// {
//     $file_data = fgetcsv($file);
//     if($file_data[0] != "")
//     {
//         $sample_array = array(
//             "snake"=>trim($file_data[6]),
//             "type"=>trim($file_data[0]),
//             "color"=>trim($file_data[1]),
//             "headshape"=>trim($file_data[2]),
//             "texture"=>trim($file_data[3]),
//             "eyeshape"=>trim($file_data[4]),
//             "symptoms"=>trim($file_data[5]),
//         );

//         singleInsert('algo_data',$sample_array,$con);
//     }
// }

// fclose($file);
// exit;

$data_set = getalldataAlgo($con,'algo');
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
        //DFA($main_tree);
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

DFA($main_tree);
?>