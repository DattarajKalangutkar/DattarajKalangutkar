<?php
	$service_config = array(
		'iCatId'=>array(
			'validate'=>'0',
			'clientname'=>'service_id',
			'type'=>'array'
		),
		'iRate'=>array(
			'validate'=>'1',
			'clientname'=>'rate',
			'type'=>'number',
		),

		'iTrate'=>array(
			'validate'=>'1',
			'clientname'=>'transport_charges',
			'type'=>'number',
		
		),
		'vCity'=>array(
			'validate'=>'0',
			'clientname'=>'city',
			'type'=>'string'
		),
		'iType'=>array(
			'validate'=>'0',
			'clientname'=>'online',
			'type'=>'string'
		),
		'vStatus'=>array(
			'validate'=>'1',
			'clientname'=>'status',
			'type'=>'string'
		)
	)
?>