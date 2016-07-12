<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="table" align="center">
            <table border="1" width="350px" align="center">
                <tr>
                    <td colspan="7"><b>ΑΓΟΝΕΣ ΠΟΔΟΣΦΑΙΡΟΥ</b></td>
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
                <?php
                include "admin.php";
                $query = '' . 'SELECT * FROM omades';
                $result = mysqli_query($conn, $query);
                if (count($result)> 0) {
                    while($rows = mysqli_fetch_assoc($result)) {
                        $teams[]=$rows;
                    }
                }
                if (isset($teams)){
                    foreach ($teams as $row)
                    {
                        echo "<tr>";
                            echo "<td>" .$row['id']. "</td>" ;
                            echo "<td><a href=".$row['omades'].".php>" .$row['omades']. "</td>" ;
                            echo "<td>" .$row['agones']. "</td>" ;
                            echo "<td>" .$row['va8moi']. "</td>" ;
                            echo "<td>" .$row['nikes']. "</td>" ;
                            echo "<td>" .$row['isopalies']. "</td>" ;
                            echo "<td>" .$row['ittes']. "</td>" ;
                        echo "</tr>";
                    }
                }?>
            </table>
        </div>
    </body>
</html>
