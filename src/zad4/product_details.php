<?php
$conn = new mysqli('mysql', 'root', 'root', 'shiftme');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_GET['id'])) {
    $product_id = $_GET['id'];

    $product_id = $conn->real_escape_string($product_id);

    $sql = "SELECT * FROM produkty WHERE id = '$product_id'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<h2>Szczegóły produktu</h2>";
            echo "<p>ID: " . $row['id'] . "</p>";
            echo "<p>Nazwa: " . $row['nazwa'] . "</p>";
            echo "<p>Cena: " . $row['cena'] . " PLN</p>";
            echo "<p>Kategoria: " . $row['kategoria'] . "</p>";
        }
    } else {
        echo "Brak danych o produkcie o podanym identyfikatorze.";
    }
} else {
    echo "Brak identyfikatora produktu.";
}

$conn->close();
?>
