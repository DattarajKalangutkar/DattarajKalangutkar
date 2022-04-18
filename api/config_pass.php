<!-- Rutvij gawas||17-03-2021 -->
<?php
	$password_config = array(
		'vPassword'=>array(
			'validate'=>'1',
			'clientname'=>'Newpassword',
			'type'=>'string',
			'other_validation'=>array(
                'password_check','compare_with_password'
                )
		    ),

        // 'vPassword'=>array(
		// 	'validate'=>'1',
		// 	'clientname'=>'customerpass',
		// 	'type'=>'string',
		// 	'other_validation'=>array('Valid_full_name','Space_between','Exist_bad_word')
		// ),
        );	
?>