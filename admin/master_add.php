<?php 
	include '../api_function.php';
	include '../html_function.php';
	include '../api/config_master.php';

	$tech = ($_GET['type']) ? $_GET['type']:'Dashboard';	
	$title = ($_GET['type']) ? ucwords($_GET['type']):'Dashboard';	
	$action = $api_url.'master/sample.php?modules='.$tech;
	$primary_key = (isset($_GET['id'])) ? $_GET['id']:'';
	$data = [];
	if($primary_key != '')
	{
		$action .= '&id='.$primary_key;
		$data = json_decode(file_get_contents($action),true);
		$data = $data['rows'];
	}
?>

<?php include 'components/header.php';?>
<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800"><?php echo $title;?></h1>
    </div>
    <form class="htmlform" id="myForm" name="myForm" enctype="multipart/form-data">
    	<input type="hidden" id="primary_key" name="primary_key" value="<?php echo $primary_key;?>">
    	<input type="hidden" id="modules" name="modules" value="<?php echo $tech;?>">
        <div class="row">
        	<?php 
        		foreach($master_config[$tech] as $key=>$val)
        		{
        			if($val['html'] != '')
        			{
        				$idname = $val['clientname'];
        				$type = $val['html'];
        				$req = ($val['validate'] == '1') ? true:false;
        				$value = (isset($data[$val['clientname']])) ? $data[$val['clientname']]:'';
        	?>
			        	<div class="col-md-3">
			        		<div class="form-group">
			        			<label for="<?php echo $idname;?>"><?php echo $val['clientname'];?></label>
			            		<?php echo create_input($idname,$type,$req,$value,$val,$con,$tech,$api_url);?>
			        		</div>
			        	</div>
		    <?php
		    		}
		    	}
		    ?>
        </div>
        <div class="row" style="padding:14px;">
        	<input type="button" class="btn btn-primary" value="Save" onclick="validate()"/>
        	<input type="button" class="btn btn-danger" value="Cancel" onclick="window.location.href='master_list.php?type=<?php echo $tech;?>'" style="margin-left: 20px;" />
        </div>
    </form>
</div>
<?php include 'components/footer.php';?>
<script type="text/javascript">
	var validate_array = <?php echo json_encode($master_config[$tech]);?>;
	var key_feilds = Object.keys(validate_array);
	var exclude_feilds = ["dCreatedDate","vStatus"];


	function updateValue()
	{
		document.getElementById("forchangingforImage").value = '1';
	}


	function deleteImage(modules,url)
	{
		var primary_key = document.getElementById('primary_key').value;
		var data = {
			"id":primary_key,
			"modules": document.getElementById('modules').value,
			"filepath": url,
		};

		$.ajax({
		    type: "POST",
		    url: '<?php echo $api_url."services/file_upload.php?iden=deleteFile";?>',
		    data: JSON.stringify(data),
		    processData: false,
		    contentType: false,
		    success: function (responseData) 
		    {
		    	window.location.reload();
		    }
		});

	}

	function validate()
	{
		var data = {};
		var primary_key = document.getElementById('primary_key').value;
		//check for Mandatory feilds value
		for(let i=0;i<key_feilds.length;i++)
		{
			if(!exclude_feilds.includes(key_feilds[i]))
			{
				if(validate_array[key_feilds[i]]['validate'] == 1)
				{
					if(validate_array[key_feilds[i]]['clientname'] == document.getElementById("modules").value+"Image")
					{
						if(document.getElementById("forchangingforImage").value == "")
						{
							alert(validate_array[key_feilds[i]]['clientname']+" is required");
							return;
						}
					}
					else
					{
						if(document.getElementById(validate_array[key_feilds[i]]['clientname']).value == "")
						{
							alert(validate_array[key_feilds[i]]['clientname']+" is required");
							return;
						}
					}
				}
			}
		}

		//Frame a Data Set
		for(let i=0;i<key_feilds.length;i++)
		{
			if(!exclude_feilds.includes(key_feilds[i]))
			{
				data[validate_array[key_feilds[i]]['clientname']] = document.getElementById(validate_array[key_feilds[i]]['clientname']).value;
			}
			else
			{
				if(key_feilds[i] == 'vStatus')
				{
					data[validate_array[key_feilds[i]]['clientname']] = '1';
				}
				else
				{
					data[validate_array[key_feilds[i]]['clientname']] = '';
				}
			}
		}

		if(primary_key != '')
		{
			if(key_feilds.includes('vImage'))
			{
				if(document.getElementById("<?php echo $tech;?>Image").value != "")
				{
					$.ajax({
					    type: "POST",
					    url: '<?php echo $api_url."services/file_upload.php?iden=Updateupload"?>',
					    data: new FormData($('#myForm')[0]),
					    processData: false,
					    contentType: false,
					    success: function (responseData) 
					    {
					    	var filepath = JSON.parse(responseData).filepath;
					    	data['<?php echo $tech;?>Image'] = filepath;
					        $.ajax({
								type: "PUT",
								url: '<?php echo $action;?>',
								data: JSON.stringify(data),
								success: function(res){
									alert(JSON.parse(res).message);
									window.location.reload();
								},
							});
					    }
					});
				}
				else
				{
					data['<?php echo $tech;?>Image'] = document.getElementById("image_edit").value;
					$.ajax({
						type: "PUT",
						url: '<?php echo $action;?>',
						data: JSON.stringify(data),
						success: function(res){
							alert(JSON.parse(res).message);
							window.location.reload();
						},
					});
				}
			}
			else
			{
				$.ajax({
					type: "PUT",
					url: '<?php echo $action;?>',
					data: JSON.stringify(data),
					success: function(res){
						alert(JSON.parse(res).message);
						window.location.reload();
					},
				});
			}
		}
		else
		{
			if(key_feilds.includes('vImage'))
			{
				$.ajax({
				    type: "POST",
				    url: '<?php echo $api_url."services/file_upload.php?iden=freshupload"?>',
				    data: new FormData($('#myForm')[0]),
				    processData: false,
				    contentType: false,
				    success: function (responseData) 
				    {
				    	var filepath = JSON.parse(responseData).filepath;
				    	data['<?php echo $tech;?>Image'] = filepath;
				        $.ajax({
							type: "POST",
							url: '<?php echo $action;?>',
							data: JSON.stringify(data),
							success: function(res)
							{
								alert(JSON.parse(res).message);
								window.location.reload();
							},
						});
				    }
				});
			}
			else
			{
				$.ajax({
					type: "POST",
					url: '<?php echo $action;?>',
					data: JSON.stringify(data),
					success: function(res){
						alert(JSON.parse(res).message);
						window.location.reload();
					},
				});
			}
		}
	}
</script>