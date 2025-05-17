<?php
include('includes/header.php');


?>
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h4>Footer Settings</h4>
                <a href="index.php" class="btn btn-danger btn-sm mb-0 float-end">Back</a>

            </div>
            <div class="card-body">
                <?= alertMessage() ?>
                <form action="code.php" method="POST">
                    <?php
                    $setting = getById('footer', 1);
                    ?>

                    <input type="hidden" name="settingId" value="<?= $setting['data']['id'] ?? 'insert' ?>" />
                    <div class="mb-3">
                        <label>Footer Heading 1</label>
                        <input type="text" name="heading1" value="<?= $setting['data']['footer_title1'] ?? "" ?>" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label>Footer Heading 2</label>
                        <input type="text" name="heading2" value="<?= $setting['data']['footer_title2'] ?? "" ?>" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label>Footer Heading 3</label>
                        <input type="text" name="heading3" value="<?= $setting['data']['footer_title3'] ?? "" ?>" class="form-control">
                    </div>

                    <div class="mb-3 text-end">
                        <button type="submit" name="footersetting" class="btn btn-primary">Save Settings</button>
                    </div>


                </form>
            </div>
        </div>
    </div>
</div>