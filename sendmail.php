<?php

use function PHPSTORM_META\elementType;

require_once 'vendor/autoload.php';
$host = "smtp.gmail.com";
$port = "587";
$sslOrTls = "tls";

$setUsername = "rishusrivastava0000@gmail.com";
$setPassword = "";
$emailAddress = "rishusrivastava0000@gmail.com";
$sendemailAddress = "rishusrivastava0000@gmail,com";
$subject = "You got new enquiry";

if (isset($_POSTp['contactSubmit'])) {
  $name = $_POST['name'];
  $email = $_POST['email'];
  $phone = $_POST['phone'];
  $service = $_POST['service'];
  $message = $_POST['message'];

  $bodyContent = '<div>
    <h4>Name : ' . $name . '</h4> 
    <h4>Email : ' . $email . '</h4> 
    <h4>Phone Number : ' . $phone . '</h4> 
    <h4>Services : ' . $service . '</h4> 
    <h4>Comment/Message : ' . $message . '</h4> 
    </div>';
  try {




    $transport = (new Swift_SmtpTransport($host, $port, $sslOrTls))
      ->setUsername($setUsername)
      ->setPassword($setPassword);


    $mailer = new Swift_Mailer($transport);


    $message = (new Swift_Message($subject))
      ->setFrom([$emailAddress => 'Funda Services'])
      ->setTo([$sendemailAddress])
      ->setBody($bodyContent, 'text/html');


    $result = $mailer->send($message);
    if ($result) {
      redirect('contact-us.php', 'Thank You For Contacting Us. We will get back to you asap soon.');
    } else {
      redirect('contact-us.php', 'Something Went Wrong');
    }
  } catch (\Exception $e) {
    redirect('contact-us.php', 'Something Went Wrong' . $e->getMessage());
  }
}
