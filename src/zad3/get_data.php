<?php
$conn = new mysqli('mysql', 'root', 'root', 'shiftme');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_POST['action'])) {
    $action = $_POST['action'];

    switch ($action) {
        case 'get_wojewodztwa':
            $sql = "SELECT DISTINCT wojewodztwo FROM miejscowosci";
            $result = $conn->query($sql);

            $options = '<option value="">Wybierz województwo</option>';
            while ($row = $result->fetch_assoc()) {
                $options .= '<option value="' . $row['wojewodztwo'] . '">' . $row['wojewodztwo'] . '</option>';
            }
            echo $options;
            break;

        case 'get_miasta':
            $wojewodztwo = $_POST['wojewodztwo'];
            $sql = "SELECT miejscowosc FROM miejscowosci WHERE wojewodztwo = '$wojewodztwo'";
            $result = $conn->query($sql);

            $options = '<option value="">Wybierz miasto</option>';
            while ($row = $result->fetch_assoc()) {
                $options .= '<option value="' . $row['miejscowosc'] . '">' . $row['miejscowosc'] . '</option>';
            }
            echo $options;
            break;

        case 'get_informacje':
            $miasto = $_POST['miasto'];
            $sql = "SELECT informacje, herb FROM miejscowosci WHERE miejscowosc = '$miasto'";
            $result = $conn->query($sql);

            $data = [];
            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $data['informacje'] = $row['informacje'];
                $data['herb'] = $row['herb'];
            }
            echo json_encode($data);
            break;

        default:
            echo "Invalid action";
            break;
    }
}

$conn->close();
?>
