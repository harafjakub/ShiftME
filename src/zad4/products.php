<?php
$conn = new mysqli('mysql', 'root', 'root', 'shiftme');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$limit = 5;
$page = isset($_GET['page']) ? $_GET['page'] : 1;
$start = ($page - 1) * $limit;

$category_condition = "";
if (isset($_GET['category']) && $_GET['category'] !== "") {
    $category = $conn->real_escape_string($_GET['category']);
    $category_condition = "WHERE kategoria = '$category'";
}

$sql = "SELECT id, nazwa, cena FROM produkty $category_condition LIMIT $start, $limit";


$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<ul>";
    while($row = $result->fetch_assoc()) {
        if (isset($row['id'])) {
            $product_id = $row['id'];
            echo "<li class='offer-item'><a href='product_details.php?id=$product_id'>" . $row["nazwa"] . "</a></li>";
        }
    }
    echo "</ul>";
    
    
    $sql_total = "SELECT COUNT(id) AS total FROM produkty $category_condition";
    $result_total = $conn->query($sql_total);
    $row_total = $result_total->fetch_assoc();
    $total_pages = ceil($row_total["total"] / $limit);

    echo "<div class='pagination'> ";
    for ($i = 1; $i <= $total_pages; $i++) {
        if ($i == $page) {
            echo "<a href='#' class='active'>$i</a> ";
        } else {
            echo "<a href='#' data-page='$i'>$i</a> ";
        }
    }
    echo "</div>";

} else {
    echo "Brak produktów w bazie danych.";
}

$conn->close();
?>
