<?php
    include "admin.php";
    $query = '' . 'SELECT * FROM omades ORDER BY va8moi DESC ';
    $result = mysqli_query($conn, $query);
    if (mysqli_num_rows($result)> 0) {
        $counter=1;
        while($rows = mysqli_fetch_assoc($result)) {
            $teams[]=$rows;
        }
    }
?>
<html lang="el">

    <head>
		<meta charset="utf-8">
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>
        <div>
            <table>
                <tr>
                    <td colspan="7"><b>ΑΓΩΝΕΣ ΠΟΔΟΣΦΑΙΡΟΥ</b></td>
                </tr>
                <tr>
                    <td colspan="7">&nbsp;</td>
                </tr>
                <tr>
                    <td><b>&nbsp;</b></td>
                    <td><b>Ομάδα</b></td>
                    <td><b>Αγώνες</b></td>
                    <td><b>Βαθμοί</b></td>
                    <td><b>Νίκες</b></td>
                    <td><b>Ισοπαλίες</b></td>
                    <td><b>Ήττες</b></td>
                </tr>


                <?php foreach ($teams as $row): ?>
                      <tr>
                            <td><?php echo $counter++; ?></td>
                            <td><a href="showteam.php?id=<?php echo $row['id']; ?>"><?php echo $row['name']; ?> </a></td>
                            <td><?php echo $row['agones']; ?></td>
                            <td><?php echo $row['va8moi']; ?></td>
                            <td><?php echo $row['nikes']; ?></td>
                            <td><?php echo $row['isopalies']; ?></td>
                            <td><?php echo $row['ittes']; ?></td>
                        </tr>
                <?php endforeach; ?>
            </table>
        </div>
    </body>
</html>
