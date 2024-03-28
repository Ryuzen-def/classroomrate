<?php
require_once 'database.php';

function addOrUpdateClass() {
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        if (isset($_POST['name']) && isset($_POST['teacher'])) {
            $name = $_POST['name'];
            $teacher = $_POST['teacher'];
            addClass($name, $teacher);
            header('Location: ../classes.php');
            exit();
        }
        if (isset($_POST['id']) && isset($_POST['name']) && isset($_POST['teacher'])) {
            $id = $_POST['id'];
            $name = $_POST['name'];
            $teacher = $_POST['teacher'];
            updateClass($id, $name, $teacher);
            header('Location: ../classes.php');
            exit();
        }
    }
}

function validateClassId() {
    $class_id = isset($_GET['id']) ? intval($_GET['id']) : 0;

    if ($class_id <= 0) {
        header("Location: classes.php");
        exit;
    }

    return $class_id;
}

function getClassByIdWithValidation($class_id) {
    $class = getClassById($class_id);

    if (!$class) {
        header("Location: classes.php");
        exit;
    }

    return $class;
}
function getAssignmentsByClassId($class_id) {
    global $conn;
    $query = "SELECT * FROM assignments WHERE class_id = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("i", $class_id);
    $stmt->execute();
    $result = $stmt->get_result();
    $assignments = [];

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $assignments[] = $row;
        }
    }

    return $assignments;
}
function getClassRatings($class_id) {
    global $conn;
    $query = "SELECT * FROM ratings WHERE class_id = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("i", $class_id);
    $stmt->execute();
    $result = $stmt->get_result();
    $ratings = [];

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $ratings[] = $row;
        }
    }

    return $ratings;
}
function calculateAverageRating($ratings) {
    if (empty($ratings)) {
        return 0; // Jika tidak ada rating, maka rata-rata adalah 0
    }

    $total_rating = 0;
    foreach ($ratings as $rating) {
        $total_rating += $rating['rating'];
    }

    $average_rating = $total_rating / count($ratings);
    return round($average_rating, 2); // Mengembalikan rata-rata rating dengan 2 angka di belakang koma
}


?>
