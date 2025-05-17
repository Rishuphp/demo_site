<?php
$pageTitle = "home";
include('includes/header.php');

?>

<?= alertMessage(); ?>


<div id="carouselExampleAutoplaying" class="carousel slide carousel-fade" data-bs-ride="carousel" time="2" style="width:1265px;">

  <div class="carousel-inner" >
  
  <?php
              $introQuery = "SELECT * FROM bannerimg ";
              $result = mysqli_query($conn,$introQuery);
              if($result){
                  if(mysqli_num_rows($result) > 0){
                      foreach($result as $row){
  
                          ?>
    
    <div class="carousel-item active " >
          
        <?php if($row['image'] != '') : ?>
                              <img src="<?= $row['image'];?>" class="d-block w-100 " alt="Img" />
                          <?php else: ?>
                              
                          <?php endif; ?>
 
            
                            
            </div>
      
        
      
    
  
    <div class="carousel-item " >
    <?php if($row['image2'] != '') : ?>
                          <img src="<?= $row['image2'];?>" class="d-block w-100 " alt="Img" />
                      <?php else: ?>
                          
                      <?php endif; ?>
    </div>
  
    <div class="carousel-item ">
    <?php if($row['image3'] != '') : ?>
                          <img src="<?= $row['image3'];?>" class="d-block w-100" alt="Img" />
                      <?php else: ?>
                          
                      <?php endif; ?>
    </div>
   

    <?php }}}?>
</div>

  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>    
</div>      

            
 <div class="col-md-3" style="position:absolute;left:1265px;top:95px;margin:2px; padding:40px;">

    
     
         <div class="card-header bg-warning">
                 <h4 class="text-white mb-0">Enquire Now</h4>
             </div>
          <div class="card-body">
                    <form action="code.php" method="POST"  >
                        <div class="mb-1">
                            <label>Name</label>
                            <input type="text" name="name" class="form-control">
                        </div>
                        <div class="mb-1">
                            <label>Email</label>
                            <input type="email" name="email" class="form-control">
                        </div>
                        <div class="mb-1">
                            <label>Phone Number</label>
                            <input type="text" name="phone" class="form-control">
                        </div>
                        <div class="mb-1">
                            <label>Service</label>
                            <input type="text" name="service" readonly value="<?= $rowData['name'];?>" class="form-control">
                        </div>
                        <div class="mb-1">
                            <label>Message / Comment</label>
                            <textarea name="message" class="form-control" rows="1"></textarea>
                        </div>
                        <div class="mb-1">
                            <button type="submit" name="enquireBtn" class="btn w-100 btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
</div>
            </div>
<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h4> <?= webSetting2('heading'); ?></h4>
                <div class="underline mx-auto"></div>
            </div>
            <?php
            $introQuery = "SELECT * FROM bannerimg ";
            $result = mysqli_query($conn, $introQuery);
            if ($result) {
                if (mysqli_num_rows($result) > 0) {
                    foreach ($result as $row) {

            ?>





                        <div class="col-md-12 text-center">
                            <p>
                                <?= $row['heading_description']; ?>
                            </p>

                        </div>
                    <?php
                    }
                } else {
                    ?>
                    <div class="col-md-12">
                        <h5>No Service Available</h5>
                    </div>

                <?php
                }
            } else {
                ?>
                <div class="col-md-12">
                    <h5>Something Went Wrong!</h5>
                </div>

            <?php

            }
            ?>

        </div>
    </div>
</div>








<div class="py-5 bg-light">
    <div class="container">
        <div class="row">

            <div class="col-md-12 mb-4 text-center">
                <h4><?=webSetting5('title')?></h4>
                <div class="underline mx-auto"></div>
            </div>
            <?php
            $serviceQuery = "SELECT * FROM services WHERE status='0' LIMIT 6";
            $result = mysqli_query($conn, $serviceQuery);
            if ($result) {
                if (mysqli_num_rows($result) > 0) {
                    foreach ($result as $row) {

            ?>
                        <div class="col-md-4 mb-3">
                            <div class="card shadow">
                                <?php if ($row['image'] != '') : ?>
                                    <img src="<?= $row['image']; ?>" class="w-100 rounded" alt="Img" style="min-height:200px;max-height:200px;" />
                                <?php else: ?>
                                    <img src="assets/images/no-img.jpg" class="w-100 rounded" alt="Img" style="min-height:200px;max-height:200px;" />
                                <?php endif; ?>

                                <div class="card-body">
                                    <h5><?= $row['name']; ?></h5>
                                    <p>
                                        <?= $row['small_description']; ?>
                                    </p>
                                </div>
                                <a href="service.php?slug=<?= $row['slug']; ?>" class="text-primary">Read More</a>
                            </div>
                        </div>
                    <?php
                    }
                } else {
                    ?>
                    <div class="col-md-12">
                        <h5>No Service Available</h5>
                    </div>

                <?php
                }
            } else {
                ?>
                <div class="col-md-12">
                    <h5>Something Went Wrong!</h5>
                </div>

            <?php

            }
            ?>
        </div>
    </div>
</div>

<?php include('includes/footer.php'); ?>