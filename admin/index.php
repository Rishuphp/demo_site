<?php
include('includes/header.php');
?>



<div class="container" >


    <div class="cardBox">
        <div class="card">
            <div>
                <a href="users.php">
                    <div class="numbers"><?= getCount('users') ?> </div>
                    <div class="cardName">Total Users </div>

                </a>
            </div>

            <div class="iconBx">
                <ion-icon name="eye-outline"></ion-icon>
            </div>
        </div>

        <div class="card">
            <div>
                <a href="services.php">
                    <div class="numbers"> <?= getCount('services') ?></div>
                    <div class="cardName">Total Services</div>
                </a>
            </div>

            <div class="iconBx">
                <ion-icon name="cart-outline"></ion-icon>
            </div>
        </div>

        <div class="card">
            <div>
                <a href="social-media.php">
                    <div class="numbers"> <?= getCount('social_medias') ?></div>
                    <div class="cardName">Total Social Media</div>
                </a>
            </div>

            <div class="iconBx">
                <ion-icon name="chatbubbles-outline"></ion-icon>
            </div>
        </div>

        <div class="card">
            <div>
                <a href="enquiries.php">
                    <div class="numbers"> <?= getCount('enquires') ?></div>
                    <div class="cardName">Total Enquires</div>
                </a>
            </div>

            <div class="iconBx">
                <ion-icon name="cash-outline"></ion-icon>
            </div>
        </div>
        <div class="card">
            <div>
                <div class="numbers">
                    <?php
                    $todayDate = date('Y-m-d');
                    $query = "SELECT * FROM enquires WHERE created_at='$todayDate'";
                    $result = mysqli_query($conn, $query);
                    $totalCount = mysqli_num_rows($result);
                    echo $totalCount;
                    ?>
                </div>

                <div class="cardName">Today Enquires</div>

            </div>

            <div class="iconBx">
                <ion-icon name="cash-outline"></ion-icon>
            </div>
        </div>
        <div class="card">
            <div>
                <div class="numbers">
                    <?php
                    $todayDate = date('Y-m-d');
                    $query = "SELECT * FROM enquires WHERE status='completed'";
                    $result = mysqli_query($conn, $query);
                    $totalCount = mysqli_num_rows($result);
                    echo $totalCount;
                    ?>
                </div>
                <div class="cardName">Total Completed Enquires</div>
            </div>

            <div class="iconBx">
                <ion-icon name="cash-outline"></ion-icon>
            </div>
        </div>
        <div class="card">
            <div>
                <div class="numbers">
                    <?php
                    $todayDate = date('Y-m-d');
                    $query = "SELECT * FROM enquires WHERE status='cancelled'";
                    $result = mysqli_query($conn, $query);
                    $totalCount = mysqli_num_rows($result);
                    echo $totalCount;
                    ?>
                </div>
                <div class="cardName">Total Cancelled Enquires</div>
            </div>

            <div class="iconBx">
                <ion-icon name="cash-outline"></ion-icon>
            </div>
        </div>
    </div>



</div>
</div>