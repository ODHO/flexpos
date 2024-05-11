<?php

require_once "connection.php";

class ModelCustomers{

	/*=============================================
	CREATE CUSTOMERS
	=============================================*/
	/* --LOG ON TO codeastro.com FOR MORE PROJECTS-- */
	static public function mdlAddCustomer($table, $data){

		$stmt = Connection::connect()->prepare("INSERT INTO $table(name, invoice_id, venue, time, side, email, phone) VALUES (:name, :invoice_id, :venue, :time, :side, :email, :phone)");

		$stmt->bindParam(":name", $data["name"], PDO::PARAM_STR);
		$stmt->bindParam(":invoice_id", $data["invoice_id"], PDO::PARAM_STR);
		$stmt->bindParam(":venue", $data["venue"], PDO::PARAM_STR);
		$stmt->bindParam(":time", $data["time"], PDO::PARAM_STR);
		$stmt->bindParam(":side", $data["side"], PDO::PARAM_STR);
		$stmt->bindParam(":email", $data["email"], PDO::PARAM_STR);
		$stmt->bindParam(":phone", $data["phone"], PDO::PARAM_INT);
		// $stmt->bindParam(":address", $data["address"], PDO::PARAM_STR);
		// $stmt->bindParam(":birthdate", $data["birthdate"], PDO::PARAM_STR);

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

	}
	/* --LOG ON TO codeastro.com FOR MORE PROJECTS-- */
	/*=============================================
	SHOW CUSTOMERS
	=============================================*/

	static public function mdlShowCustomers($table, $item, $value){

		if($item != null){

			$stmt = Connection::connect()->prepare("SELECT * FROM $table WHERE $item = :$item");

			$stmt -> bindParam(":".$item, $value, PDO::PARAM_STR);

			$stmt -> execute();

			return $stmt -> fetch();

		}else{

			$stmt = Connection::connect()->prepare("SELECT * FROM $table");

			$stmt -> execute();

			return $stmt -> fetchAll();

		}

		$stmt -> close();

		$stmt = null;

	}
	/* --LOG ON TO codeastro.com FOR MORE PROJECTS-- */
	/*=============================================
	EDIT CUSTOMER
	=============================================*/

	static public function mdlEditCustomer($table, $data){

		$stmt = Connection::connect()->prepare("UPDATE $table SET name = :name, invoice_id = :invoice_id, venue = :venue, time = :time, side = :side, email = :email, phone = :phone WHERE id = :id");

		$stmt->bindParam(":id", $data["id"], PDO::PARAM_INT);
		$stmt->bindParam(":name", $data["name"], PDO::PARAM_STR);
		$stmt->bindParam(":invoice_id", $data["invoice_id"], PDO::PARAM_STR);
		$stmt->bindParam(":venue", $data["venue"], PDO::PARAM_STR);
		$stmt->bindParam(":time", $data["time"], PDO::PARAM_STR);
		$stmt->bindParam(":side", $data["side"], PDO::PARAM_STR);
		$stmt->bindParam(":email", $data["email"], PDO::PARAM_STR);
		$stmt->bindParam(":phone", $data["phone"], PDO::PARAM_STR);
		// $stmt->bindParam(":address", $data["address"], PDO::PARAM_STR);
		// $stmt->bindParam(":birthdate", $data["birthdate"], PDO::PARAM_STR);

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

	}
	/* --LOG ON TO codeastro.com FOR MORE PROJECTS-- */
	/*=============================================
	DELETE CUSTOMER
	=============================================*/

	static public function mdlDeleteCustomer($table, $data){

		$stmt = Connection::connect()->prepare("DELETE FROM $table WHERE id = :id");

		$stmt -> bindParam(":id", $data, PDO::PARAM_INT);

		if($stmt -> execute()){

			return "ok";
		
		}else{

			return "error";	

		}

		$stmt -> close();

		$stmt = null;

	}
	/* --LOG ON TO codeastro.com FOR MORE PROJECTS-- */
	/*=============================================
	UPDATE CUSTOMER
	=============================================*/

	static public function mdlUpdateCustomer($table, $item1, $value1, $value){

		$stmt = Connection::connect()->prepare("UPDATE $table SET $item1 = :$item1 WHERE id = :id");

		$stmt -> bindParam(":".$item1, $value1, PDO::PARAM_STR);
		$stmt -> bindParam(":id", $value, PDO::PARAM_STR);

		if($stmt -> execute()){

			return "ok";
		
		}else{

			return "error";	

		}

		$stmt -> close();

		$stmt = null;

	}

}