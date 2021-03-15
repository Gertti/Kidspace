<?php 

// include_once('config.php');
require 'config.php';

if(isset($_POST['submit']))
{
	$error = "";


	$username = $_POST['username'];
	$password = $_POST['password'];


	if(empty($username) || empty($password))
	{
		
	 	echo "..";
	   	header( "refresh:2; url=login.php" ); 
	}
	else
	{

		$sql = "SELECT id, fullname, username, email, password FROM users WHERE username=:username";

		$insertSql = $conn->prepare($sql);

		$insertSql->bindParam(':username', $username);

		$insertSql->execute();


		$data = $insertSql->fetch();



		if($data == false)
		{
			echo "Username <strong> $username </strong> not found!";
			header( "refresh:2; url=login.php" );
		}
		else
		{
			if(password_verify($password, $data['password']))
			{

				
				$_SESSION['id'] = $data['id']; 
				$_SESSION['fullname'] = $data['fullname'];
				$_SESSION['username'] = $data['username'];
				$_SESSION['email'] = $data['email'];
				$_SESSION['password'] = $data['password'];
				
				header('Location:after.html');
			}
			else
			{
				echo "Password not match!";
				header( "refresh:2; url=login.php" ); 
			}
		}
		
	}

}
	
?>