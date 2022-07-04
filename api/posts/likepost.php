<?php
	include "../../api_function.php";
    $postdata = json_decode(file_get_contents("php://input"), true);

    if($_SERVER['REQUEST_METHOD'] == "POST")
    {
        updateDataForIncrement($con,'post',array('iLikes'=>1),'iId',$postdata['postid']);

        $rescuerid = 0;
        $userid = 0;

        if($postdata['type'] == '1')
        {
            $rescuerid = $postdata['client'];
        }
        else
        {
            $userid = $postdata['client'];
        }


        $sample_array = array(
            "iPostId"=>$postdata['postid'],
            "iUserId"=>$userid,
            "iRescuerId"=>$rescuerid,
            "dCreatedDate"=>NOW,
            "vStatus"=>"1"
        );

        if(singleInsert("post_liked",$sample_array,$con))
        {
            echo json_encode(array("message"=>"Liked Updated Successfully","flag"=>true));
            exit;
        }
    }
    
?>    

