	<?php

	include_once('config.php');	


	if(isset($_POST['submit']))
	{

		$fullname = $_POST['fullname'];
		$username = $_POST['username'];
		$email = $_POST['email'];

		$tempPass = $_POST['password'];
		$password = password_hash($tempPass, PASSWORD_DEFAULT);



		$tempConfirm = $_POST['confirm_password'];
		$confirm_password = password_hash($tempConfirm, PASSWORD_DEFAULT);


		if(empty($fullname) || empty($username) || empty($email) || empty($password) || empty($confirm_password))
		{
			echo "Nuk i ke plotesu te gjitha fushat.";
		}
		if(strlen($tempPass) < 6){
			echo "Passwordi nuk mund te jete me i vogel se 6 karaktere!";
			header( "refresh:3; url=signup.php" );
		}
		else
		{
			$sql = "SELECT username FROM users WHERE username=:username";

			$tempSQL = $conn->prepare($sql);
			$tempSQL->bindParam(':username', $username);
			$tempSQL->execute();

			if($tempSQL->rowCount() > 0)
			{
				echo "Username exists!";
				header( "refresh:2; url=signup.php" ); 
			}
			else
			{
				if($tempPass == $tempConfirm)
				{

					$sql = "INSERT INTO users(fullname, username, email, password, confirm_password) VALUES (:fullname, :username, :email, :password, :confirm_password)";

					$insertSql = $conn->prepare($sql);
					

					$insertSql->bindParam(':fullname', $fullname);
					$insertSql->bindParam(':username', $username);
					$insertSql->bindParam(':email', $email);
					$insertSql->bindParam(':password', $password);
					$insertSql->bindParam(':confirm_password', $confirm_password);

					$insertSql->execute();

					echo "Te dhenat jan shtuar me sukses...";

  					header( "refresh:2; url=login.php" ); 


				}
				else
				{
					echo "Password doesn't match!!";
					header( "refresh:2; url=signup.php" ); 
				}

			}




		}



	}


?>