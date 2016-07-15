<?php
include "admin.php";
$pextes = $_GET['id'];

$team = "" . "SELECT omades.name FROM stixia join omades on omades.id=stixia.omada_id where omades.id ='$pextes'";
$result1 = mysqli_query($conn, $team);
$team_name=mysqli_fetch_assoc($result1);

$info = "" . "SELECT gipedo,topo8esia,website,pic FROM stixia where omada_id='$pextes'";
$result2 = mysqli_query($conn, $info);
$team_info=mysqli_fetch_assoc($result2);
?>

<html lang="el">

    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>
        <div class="container">
            <div class="title">
                <h1><?php echo $team_name['name']; ?></h1>
            </div>

            <h3>Πληροφορίες Ομάδας</h3>

            <div class="info">
                <img src="<?php echo $team_info['pic']; ?>" alt="<?php echo $team_name['name']; ?> LOGO" align="right">

                <div class="question">
                    <b>Πλήρης Τίτλος:</b>

                    <span class="text">
                        <?php echo $team_name['name']; ?>
                    </span>
                </div>

                <div class="question">
                    <b>Γήπεδο:</b>

                    <span class="text">
                        <?php echo $team_info['gipedo']; ?>
                    </span>
                </div>

                <div class="question">
                    <b>Τοποθεσία:</b>

                    <span class="text">
                        <?php echo $team_info['topo8esia']; ?>
                    </span>
                </div>

                <div class="question">
                    <b>Website:</b>

                    <span class="text">
                        <a href="<?php echo $team_info['website']; ?>"><?php echo $team_info['website']; ?></a>
                    </span>
                </div>
            </div>
        </div>
    </body>
</html>
