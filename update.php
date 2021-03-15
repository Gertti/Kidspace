<?php 

  include_once('config.php');

  if(isset($_POST['update']))
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
      header( "refresh:2; url=updateForm.php" ); 
    }
    if(strlen($tempPass) < 6){
      echo "Passwordi nuk mund te jete me i vogel se 6 karaktere!";
      header( "refresh:5; url=signup.php" ); 
    }
    else
    {

      $sql= "UPDATE users SET fullname=:fullname, username=:username, email=:email, password=:password, confirm_password=:confirm_password WHERE id=:id";

      $updateSql = $conn->prepare($sql);

      $updateSql->bindParam(':id', $_SESSION['id']);

      $updateSql->bindParam(':fullname', $fullname);
      $updateSql->bindParam(':username', $username);
      $updateSql->bindParam(':email', $email);
      $updateSql->bindParam(':password', $password);
      $updateSql->bindParam(':confirm_password', $confirm_password);

      $updateSql->execute();

      header('Location: logout.php');

    }


  }


?>