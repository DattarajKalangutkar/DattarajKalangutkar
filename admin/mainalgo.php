
<?php
include '../api_function.php';
$gain_ratio = array(
    "type"=>0,
    "color"=>0,
    "headshape"=>0,
    "eyeshape"=>0,
);
$main_tree = array();
$data_set = array(
    "row_1"=>array(
        "type"=>"venomous",
        "color"=>"brown",
        "headshape"=>"triangular",
        "eyeshape"=>"round",
        "name"=>"cobra"
    ),
    "row_2"=>array
    (
        "type"=>"venomous",
        "color"=>"black",
        "headshape"=>"triangular",
        "eyeshape"=>"round",
        "name"=>"cobra"
    ),
    "row_3"=>array
    (
        "type"=>"venomous",
        "color"=>"brown",
        "headshape"=>"triangular",
        "eyeshape"=>"vertical",
        "name"=>"saw-scaled viper"
    ),
    "row_4"=>array
    (
        "type"=>"venomous",
        "color"=>"reddish",
        "headshape"=>"triangular",
        "eyeshape"=>"pear-shaped",
        "name"=>"saw-scaled viper"
    ),
    "row_5"=>array
    (
        "type"=>"non-venomous",
        "color"=>"yellow",
        "headshape"=>"broader",
        "eyeshape"=>"round",
        "name"=>"rat snake"
    ),
    "row_6"=>array
    (
        "type"=>"non-venomous",
        "color"=>"brown",
        "headshape"=>"broader",
        "eyeshape"=>"round",
        "name"=>"rat snake"
    ),
    "row_7"=>array
    (
        "type"=>"mild-venomous",
        "color"=>"brown",
        "headshape"=>"triangular",
        "eyeshape"=>"vertical",
        "name"=>"cat snake"
    ),
    "row_8"=>array
    (
        "type"=>"non-venomous",
        "color"=>"brown",
        "headshape"=>"triangular",
        "eyeshape"=>"round",
        "name"=>"wolf snake"
    ),
    "row_9"=>array
    (
        "type"=>"non-venomous",
        "color"=>"brown",
        "headshape"=>"broader",
        "eyeshape"=>"vertical",
        "name"=>"wolf snake"
    ),
    "row_10"=>array
    (
        "type"=>"venomous",
        "color"=>"reddish",
        "headshape"=>"triangular",
        "eyeshape"=>"vertical",
        "name"=>"saw-scaled viper"
    )
);

$iterate = 1;


for($i=0;$i<15;$i++)
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
            "root"=>$attribute_with_highest_gain_ratio,
            "done"=>1,
            "trace"=>[$attribute_with_highest_gain_ratio]
        );
        
        $get_count_of_every_attribute_values = getuniquedataset($data_set,$attribute_with_highest_gain_ratio);
        $main_tree = updateMainTree($main_tree,$get_count_of_every_attribute_values,$attribute_with_highest_gain_ratio,"name",$data_set);
        unset($gain_ratio[$attribute_with_highest_gain_ratio]);
    }
    else 
    {
        if(alldoneturnone($main_tree))
        {
            $statuszerodata = getdataithzerostatus($main_tree);
            if($statuszerodata['root'] == "broaderaaa")
            {
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
                $main_tree[$attribute_with_highest_gain_ratio] = array(
                    "root"=>$attribute_with_highest_gain_ratio,
                    "done"=>1,
                    "trace"=>$new_trace
                );
                //$get_count_of_every_attribute_values = getuniquedataset($new_data_set,$attribute_with_highest_gain_ratio);            
                //$main_tree = updateMainTree($main_tree,$get_count_of_every_attribute_values,$attribute_with_highest_gain_ratio,"name",$new_data_set);
                     
            }
            else
            {
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
                $main_tree[$attribute_with_highest_gain_ratio] = array(
                    "root"=>$attribute_with_highest_gain_ratio,
                    "done"=>1,
                    "trace"=>$new_trace
                );
                $get_count_of_every_attribute_values = getuniquedataset($new_data_set,$attribute_with_highest_gain_ratio);            
                $main_tree = updateMainTree($main_tree,$get_count_of_every_attribute_values,$attribute_with_highest_gain_ratio,"name",$new_data_set);
            }         
        }
        else
        {
            $iterate = 0;
        }
    }
}

DFA($main_tree);
?>