<?php

class ControllerCustomers{

	/*=============================================
	CREATE CUSTOMERS
	=============================================*/

	static public function ctrCreateCustomer(){

		if(isset($_POST["newCustomer"])){

			if(
			  
			   preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,4}$/', $_POST["email"])){

			   	$table = "customers";

			   	$data = array("name"=>$_POST["newCustomer"],
					           "invoice_id"=>$_POST["invoice_id"],
					           "venue"=>$_POST["venue"],
					           "time"=>$_POST["time"],
					           "side"=>$_POST["side"],
					           "email"=>$_POST["email"],
					           "phone"=>$_POST["phone"],
							);
			   	$answer = ModelCustomers::mdlAddCustomer($table, $data);

			   	if($answer == "ok"){

					echo'<script>

					swal({
						  type: "success",
						  title: "The customer has been saved",
						  showConfirmButton: true,
						  confirmButtonText: "Close"
						  }).then(function(result){
									if (result.value) {

									window.location = "customers";

									}
								})

					</script>';

				} 

			}else{

				echo'<script>

					swal({
						  type: "error",
						  title: "Customer cannot be blank or special characters!",
						  showConfirmButton: true,
						  confirmButtonText: "Close"
						  }).then(function(result){
							if (result.value) {

							window.location = "customers";

							}
						})

			  	</script>';

			}

		}

	}

	/*=============================================
	SHOW CUSTOMERS
	=============================================*/

	static public function ctrShowCustomers($item, $value){

		$table = "customers";

		$answer = ModelCustomers::mdlShowCustomers($table, $item, $value);

		return $answer;

	}

	/*=============================================
	EDIT CUSTOMER
	=============================================*/

	static public function ctrEditCustomer(){

		if(isset($_POST["editCustomer"])){

			if(preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["editCustomer"]) &&
			   
			   preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,4}$/', $_POST["editEmail"]) && 
			   preg_match('/^[()\-0-9 ]+$/', $_POST["editPhone"])){

			   	$table = "customers";

			   	$data = array("id"=>$_POST["idCustomer"],
			   				   "name"=>$_POST["editCustomer"],
					           "invoice_id"=>$_POST["editinvoice_id"],
					           "venue"=>$_POST["editvenue"],
					           "time"=>$_POST["edittime"],
					           "side"=>$_POST["editside"],
					           "email"=>$_POST["editEmail"],
					           "phone"=>$_POST["editPhone"],
					        //    "address"=>$_POST["editAddress"],
					        //    "birthdate"=>$_POST["editBirthdate"]
							);

			   	$answer = ModelCustomers::mdlEditCustomer($table, $data);

			   	if($answer == "ok"){

					echo'<script>

					swal({
						  type: "success",
						  title: "The customer has been updated",
						  showConfirmButton: true,
						  confirmButtonText: "Close"
						  }).then(function(result){
									if (result.value) {

									window.location = "customers";

									}
								})

					</script>';

				}

			}else{

				echo'<script>

					swal({
						  type: "error",
						  title: "Customer cannot be blank or special characters!",
						  showConfirmButton: true,
						  confirmButtonText: "Close"
						  }).then(function(result){
							if (result.value) {

							window.location = "customers";

							}
						})

			  	</script>';



			}

		}

	}

	/*=============================================
	DELETE CUSTOMER
	=============================================*/

	static public function ctrDeleteCustomer(){

		if(isset($_GET["idCustomer"])){

			$table ="customers";
			$data = $_GET["idCustomer"];

			$answer = ModelCustomers::mdlDeleteCustomer($table, $data);

			if($answer == "ok"){

				echo'<script>

				swal({
					  type: "success",
					  title: "The customer has been deleted",
					  showConfirmButton: true,
					  confirmButtonText: "Close"
					  }).then(function(result){
								if (result.value) {

								window.location = "customers";

								}
							})

				</script>';

			}		

		}

	}

}

