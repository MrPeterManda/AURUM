<?php
require_once 'includes/conn.inc.php';

// Fetch all campaigns from the database
$sql = "SELECT * FROM donees WHERE status = 'approved'";
$result = mysqli_query($conn, $sql);

?>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/all.css">
    <title>All Campaigns</title>
    <style>
        .campaigns {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 15px;
        }
        .campaign {
            border: 1px solid black;
            padding: 15px;
            text-align: center;
        }
        .campaign h2 {
            margin-top: 0;
        }
        .campaign img {
            max-width: 100%;
            height: auto;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <?php 
        include_once "includes/header.php";
    ?>
    <h1 style="text-align: center;">All Campaigns</h1>

    <div class="campaigns" >
    <?php

    // Check if any campaigns are found
    if (mysqli_num_rows($result) > 0) {
        // Loop through each campaign and display information
        while ($row = mysqli_fetch_assoc($result) ) {
            $goal = $row['goal'];
            $title = $row['tittle'];
            $category = $row['category'];
            $course = $row['course'];
            $image = $row['image'];
            $description = $row['description'];

            // Display campaign information
            echo '<div class="campaign">
                    <h2>' . $title . '</h2>
                    <p><strong>Category:</strong> ' . $category . '</p>
                    <p><strong>Course:</strong> ' . $course . '</p>
                    <p><strong>Goal:</strong> $' . $goal . '</p>
                    <img src="uploads/' . $image . '" alt="Campaign Image" width="150px" height="150px">
                    <p>' . $description . '</p>
                </div>';
        }
    } else {
        echo '<p>No campaigns found.</p>';
    }

    // Close database connection
    mysqli_close($conn);
    ?>
    </div>

</body>
</html>
