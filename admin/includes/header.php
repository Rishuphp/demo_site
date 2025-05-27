<?php
require('../config/function.php');
include('authentication.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BYTOSOFT</title>

    <link rel="stylesheet" href="assets/css/style.css">
    <link href="assets/css/nucleo-icons.css" rel="stylesheet" />

<link rel="manifest" href="includes/manifest.json">
    <link id="pagestyle" href="assets/css/soft-ui-dashboard.css" rel="stylesheet" />

</head>




<body>
    <?php include('sidebar.php') ?>
    <?php include('navbar.php') ?>
    <script src="assets/js/main.js"></script>
    <script type="text/javascript">
 window.addEventListener('load',() => {
  registerSW();
 });
 async function registerSW() {
  if('serviceWorker' in navigator){
    try{
      await navigator
      .serviceWorker
      .register('service-worker.js');
    }
    catch (e){
      console.log('Service Worker Registration Failed');
    }
  }
 }
 </script>

</body>


</html>