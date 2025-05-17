<?php include('includes/header.php'); ?>

<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h4>
                    Services
                    <a href="index.php" class="btn btn-danger btn-sm mb-0 float-end">Back</a>
                    <a href="services-create.php" class="btn btn-primary float-end">Add Services</a>

                </h4>
            </div>
            <div class="card-body">
                <?= alertMessage(); ?>
                <table id="myTable" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $services = getAll('services');
                        if ($services) {


                            if (mysqli_num_rows($services) > 0) {
                                foreach ($services as $item) {
                        ?>
                                    <tr>
                                        <td><?= $item['id']; ?></td>
                                        <td><?= $item['name']; ?></td>



                                        <td>
                                            <?php
                                            if ($item['status'] == 1) {
                                                echo '<span class="badge bg-danger text-white">Hidden</span>';
                                            } else {
                                                echo '<span class="badge bg-success text-white">Visible</span>';
                                            }


                                            ?>
                                        </td>
                                        <td>
                                            <a href="services-edit.php?id=<?= $item['id']; ?>" class="btn btn-success btn-sm">Edit</a>
                                            <a href="services-delete.php?id=<?= $item['id']; ?>" class="btn btn-danger btn-sm mx-2" onclick="return confirm('Are you sure you want to delete this data?')">Delete</a>
                                        </td>

                                    </tr>
                                <?php
                                }
                            } else {
                                ?>
                                <tr>
                                    <td colspan="4">No Record Found</td>

                                </tr>
                            <?php
                            }
                        } else {
                            ?>
                            <tr>
                                <td colspan="4">Somthing Went Wrong!</td>

                            </tr>
                        <?php
                        }
                        ?>



                    </tbody>
                </table>
                <?= alertMessage(); ?>
                <form action="code.php" method="POST">
                    <?php
                    $setting = getById('services_title', 3);
                    ?>
                    <input type="hidden" name="settingId" value="<?= $setting['data']['id'] ?? 'insert' ?>" />
                    <div class="mb-3">
                        <label>Title</label>
                        <input type="text" name="title" value="<?= $setting['data']['title'] ?? "" ?>" class="form-control">
                    </div>
                    <div class="mb-3 text-end">
                        <button type="submit" name="servicesetting" class="btn btn-primary">Save Settings</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>