
<?php
    include '../api_function.php';
// class Snake 
// {
//     protected $total_entropy = 0 , $total_count = 0; // Data set 1
//     protected $gain_ratio_type = 0, $gain_ratio_color = 0, $gain_ratio_head_shape = 0, $gain_ratio_eye_shape = 0;


//     function get_snakes_data() 
//     {
//         //total records in data set with distinct snakes and their counts 
//         $this->total_count = 10;
//         $snakes_count = array(
//             '1' => 1,
//             '2' => 2,
//             '3' => 2,
//             '4' => 3,
//             '5' => 2,
//         );
//         // $this->total_entropy = $this->get_total_entropy($snakes_count,$this->total_count);

//         //procedure to calculate type entropy
//         //mysqli query to fetch the venomous snakes details
//         $total_venom_count = 5;
//         $snakes_venom_count = array(
//             '1' => 2,
//             '2' => 3,
//         );
//         //mysqli query to fetch the non-venomous snakes details
//         $total_non_venom_count = 4;
//         $snakes_non_venom_count = array(
//             '1' => 2,
//             '2' => 2,
//         );    
//         //mysqli query to fetch the mild venomous snake details
//         $total_mild_venom_count = 1;
//         $snakes_mild_venom_count = array(
//             '1' => 1,
//         );

//         $data_set = array
//         (
//             "total_venom_count" => "$total_venom_count",
//             "snakes_venom_count" => array
//                                    (
//                                     '1' => 2,
//                                     '2' => 3
//                                    ),
//             "total_non_venom_count" => "$total_non_venom_count",
//             "snakes_non_venom_count" => array
//                                         (
//                                         '1' => 2,
//                                         '2' => 2  
//                                         ),
//             "total_mild_venom_count" => "$total_mild_venom_count",
//             "snakes_mild_venom_count" => array
//                                         (
//                                         '1' => 1
//                                         )                                                   
//         );                           

//        // $this->gain_ratio_type = $this->total_gain_ratio_type($type_array); 
        
        
//          //mysqli query to fetch all the distinct color and their count details
//          $total_brown_count = 6;
//          $snakes_brown_count = array(
//              '1' => 1,
//              '2' => 1,
//              '3' => 1,
//              '4' => 1,
//              '5' => 2,
//          );
//          $total_black_count = 1;
//          $snakes_black_count = array(
//              '1' => 1,
//          );    
//          $total_yellow_count = 1;
//          $snakes_yellow_count = array(
//              '1' => 1,
//          );
//          $total_reddish_count = 2;
//          $snakes_reddish_count = array(
//              '1' => 2,
//          );
//         $color_array = array
//         (
//              "total_brown_count" => "$total_brown_count",
//              "snakes_brown_count" => array
//                                     (
//                                     '1' => 1,
//                                     '2' => 1,
//                                     '3' => 1,
//                                     '4' => 1,
//                                     '5' => 2   
//                                     ),
//              "total_black_count" => "$total_black_count",
//              "snakes_black_count" => array
//                                     (
//                                     '1' => 1     
//                                     ),
//              "total_yellow_count" => "$total_yellow_count",
//              "snakes_yellow_count" => array
//                                     (
//                                     '1' => 1     
//                                     )                                            
//              "total_reddish_count" => "$total_black_count",
//              "snakes_reddish_count" => array
//                                     (
//                                     '1' => 1     
//                                     )                                            
//         );  
//         //$this->gain_ratio_color = $this->total_gain_ratio_color($color_array);



//         //mysqli query to fetch all the head shape details
//         $total_triangular_count = 6;
//         $headshape_triangular_count = array(
//             '1' => 2,
//             '2' => 3,
//             '3' => 1,
//             '4' => 1,
//         );
//         $total_braoder_count = 3;
//         $headshape_broader_count = array(
//             '1' => 2,
//             '2' => 1,
//         ); 
//         $headshape_array = array
//         (
                                    
//         );  
//         $this->gain_ratio_head_shape = $this->total_gain_ratio_head_shape($headshape_array);



//         //mysqli query to fetch all the distinct eye shapes and their count details
//         $total_round_count = 5;
//         $eyeshape_round_count = array(
//             '1' => 2,
//             '2' => 2,
//             '3' => 1,
//         );
//         $total_vertical_count = 4;
//         $eyeshape_vertical_count = array(
//             '1' => 2,
//             '2' => 1,
//             '3' => 1,
//         );    
//         $total_pear_shaped_count = 1;
//         $eyeshape_pear_shaped_count = array(
//             '1' => 1,
//         );
//         $eyeshape_array = array
//                          (
//                             "total_round_count" => "$total_round_count",
//                             "eyeshape_round_count" => "$eyeshape_round_count",
//                             "total_vertical_count" => "$total_vertical_count",
//                             "eyeshape_vertical_count" => "$eyeshape_vertical_count",
//                             "total_pear_shaped_count" => "$total_pear_shaped_count",
//                             "eyeshape_pear_shaped_count" => "$eyeshape_pear_shaped_count"
//                          );
//         $this->gain_ratio_eye_shape = $this->total_gain_ratio_eye_shape($eyeshape_array);
        
        
//         //check the highest gain ratio
//         $gain_array = array(
//             "type"=>$this->gain_ratio_type,
//             "color"=>$this->gain_ratio_color,
//             "head_shape"=>$this->gain_ratio_head_shape,
//             "eye_shape"=>$this->gain_ratio_eye_shape
//         );

//         $highest = max($gain_array);
//         $root_element = '';
//         foreach($gain_array as $key=>$val)
//         {
//             if($val == $highest)
//                 $root_element = $key;
//         }   
//         echo $this->total_entropy; 
//     }

//     //completed function
//     //returns total entropy
//     function get_total_entropy($snakes_count,$total_count) 
//     {
//         return $this->calculate_entropy($snakes_count, $total_count);
//     }







//     function total_gain_ratio_type($type_array)
//     {
//         //decoding the array
//         /*
//         foreach($type_array as $key=>$value)
//         {
//             if($a)
//         }
//         */

//         // get type entropy
//         $type_venom_entropy = $this->get_all_entropiess($snakes_venom_count,$total_venom_count);
//         $type_non_venom_entropy = $this->get_all_entropiess($snakes_non_venom_count,$total_non_venom_count);
//         $type_mild_venom_entropy = $this->get_all_entropiess($snakes_mild_venom_count,$total_mild_venom_count);

//         // get net entropy
//         $data_array_set = [$type_venom_entropy, $type_non_venom_entropy, $type_mild_venom_entropy];
//         $net_entropy = $this->get_net_entropy($data_array_set);

//         // Get total gain
//         $total_gain = $this->total_entropy - $net_entropy;
        
//         // Get total split info
//         $total_type_count = [
//                                 array_key_first($type_venom_entropy),
//                                 array_key_first($type_non_venom_entropy),
//                                 array_key_first($type_mild_venom_entropy),
//                             ];
//         $total_split_info = $this->calculate_entropy($total_type_count, $this->total_count);

//         // Get total gain ratio
//         return ($total_gain / $total_split_info);
//     }






//     function total_gain_ratio_color()
//     {
//         // get color entropy
//         $color_brown_entropy = $this->get_all_entropiess($snakes_brown_count,$total_brown_count);
//         $color_black_entropy = $this->get_all_entropiess($snakes_black_count,$total_black_count);
//         $color_yellow_entropy = $this->get_all_entropiess($snakes_yellow_count,$total_yellow_count);
//         $color_reddish_entropy = $this->get_all_entropiess($snakes_reddish_count,$total_reddish_count);

//         // get net entropy
//         $data_array_set = [$color_brown_entropy, $color_black_entropy, $color_yellow_entropy, $color_reddish_entropy];
//         $net_entropy = $this->get_net_entropy($data_array_set);

//         // Get total gain
//         $total_gain = $this->total_entropy - $net_entropy;
        
//         // Get total split info
//         $total_color_count = [
//                                 array_key_first($color_brown_entropy),
//                                 array_key_first($color_black_entropy),
//                                 array_key_first($color_yellow_entropy),
//                                 array_key_first($color_reddish_entropy),
//                             ];
//         $total_split_info = $this->calculate_entropy($total_color_count, $this->total_count);

//         // Get total gain ratio
//         return ($total_gain / $total_split_info);
//     }






//     function total_gain_ratio_head_shape()
//     {
//         // get head shape entropy
//         $headshape_triangular_entropy = $this->get_all_entropiess($headshape_triangular_count,$total_triangular_count);
//         $headshape_broader_entropy = $this->get_all_entropiess($headshape_broader_count,$total_braoder_count);  

//         // get net entropy
//         $data_array_set = [$headshape_triangular_entropy, $headshape_broader_entropy];
//         $net_entropy = $this->get_net_entropy($data_array_set);

//         // Get total gain
//         $total_gain = $this->total_entropy - $net_entropy;
        
//         // Get total split info
//         $total_head_shape_count = [
//                                 array_key_first($headshape_triangular_entropy),
//                                 array_key_first($headshape_broader_entropy),
//                             ];
//         $total_split_info = $this->calculate_entropy($total_head_shape_count, $this->total_count);

//         // Get total gain ratio
//         return ($total_gain / $total_split_info);
//     }






//     function total_gain_ratio_eye_shape()
//     {
//         // get eyeshape entropy
//         $eyeshape_round_entropy = $this->get_all_entropiess($eyeshape_round_count,$total_round_count);
//         $eyeshape_vertical_entropy = $this->get_all_entropiess($eyeshape_vertical_count,$total_vertical_count);
//         $color_pear_shaped_entropy = $this->get_all_entropiess($eyeshape_pear_shaped_count,$total_pear_shaped_count);


//         // get net entropy
//         $data_array_set = [$eyeshape_round_entropy, $eyeshape_vertical_entropy, $color_pear_shaped_entropy];
//         $net_entropy = $this->get_net_entropy($data_array_set);

//         // Get total gain
//         $total_gain = $this->total_entropy - $net_entropy;
        
//         // Get total split info
//         $total_eyeshape_count = [
//                                 array_key_first($eyeshape_round_entropy),
//                                 array_key_first($eyeshape_vertical_entropy),
//                                 array_key_first($color_pear_shaped_entropy),
//                             ];
//         $total_split_info = $this->calculate_entropy($total_eyeshape_count, $this->total_count);

//         // Get total gain ratio
//         return ($total_gain / $total_split_info);
//     }

//     //completed function
//     //Finding net entropy
//     function get_net_entropy($data_array_set)
//     {
//         $net_entropy = 0;

//         if (isset($data_array_set))
//         {
//             foreach ($data_array_set as $data_key => $data_val)
//             {
//                 $key_pointer = array_key_first($data_val);
//                 $net_entropy += ($key_pointer/$this->total_count * $data_val[$key_pointer]);
//             }
//         }

//         return $net_entropy;
//     }

//     //completed function
//     //part 1: find log
//     function get_log($val1, $val2)
//     {
//         return log($val1/$val2, 2) * $val1/$val2;
//     }

//     //completed function
//     //part 2: multiply by -1
//     function get_entropy($entropy_internal)
//     {
//         return -1 * ($entropy_internal);
//     }

//     //completed function
//     //calculate entropies part 1
//     function get_all_entropiess($snakes_count,$total_count)
//     {
//         return array($total_count => $this->calculate_entropy($snakes_count, $total_count));
//     }

//     //completed function
//     //calculate entropies part 2
//     function calculate_entropy($array_val, $total_count)
//     {
//         $entropy_internal = 0;
//         foreach ($array_val as $pointer_id => $pointer_val) 
//         {
//             $entropy_internal += $this->get_log($pointer_val, $total_count);
//         }
//             return $entropy = $this->get_entropy($entropy_internal);	
//     }
//   }
  
























//   $snakes = new Snake();
//   echo $snakes->get_snakes_data();

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
$leveltostart++;
for($i=0;$i<10;$i++)
{
    $identifier = checkeverythingisdone($main_tree);
    if(isset($identifier['done']))
    {   
        if($identifier['done'] != '1' && $identifier['level'] == '1')
        {
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
?>