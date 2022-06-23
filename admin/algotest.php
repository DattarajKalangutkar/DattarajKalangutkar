
<?php
    include '../api_function.php';
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
?>