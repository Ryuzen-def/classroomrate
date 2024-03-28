<?php
require_once 'config.php';

// Fungsi untuk mengambil semua kelas dari database
function getAllClasses() {
    global $conn;
    $query = "SELECT * FROM classes";
    $result = $conn->query($query);
    $classes = [];

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $classes[] = $row;
        }
    }

    return $classes;
}

// Fungsi untuk mengambil kelas berdasarkan ID
function getClassById($id) {
    global $conn;
    $query = "SELECT * FROM classes WHERE id = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        return $result->fetch_assoc();
    }

    return null;
}

// Fungsi untuk menambahkan kelas baru
function addClass($name, $teacher) {
    global $conn;
    $query = "INSERT INTO classes (name, teacher) VALUES (?, ?)";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("ss", $name, $teacher);
    $stmt->execute();
}

// Fungsi untuk mengupdate kelas
function updateClass($id, $name, $teacher) {
    global $conn;
    $query = "UPDATE classes SET name = ?, teacher = ? WHERE id = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("ssi", $name, $teacher, $id);
    $stmt->execute();
}

// Fungsi untuk menghapus kelas
function deleteClass($id) {
    global $conn;
    $query = "DELETE FROM classes WHERE id = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("i", $id);
    
    if ($stmt->execute()) {
        // Jika penghapusan berhasil
        return true;
    } else {
        // Jika terjadi kesalahan saat penghapusan
        return false;
    }
}

function addAssignment($class_id, $title, $description) {
    global $conn;
    $query = "INSERT INTO assignments (class_id, title, description) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("iss", $class_id, $title, $description);
    $stmt->execute();
}
function rateClass($class_id, $rating) {
    global $conn;
    $query = "INSERT INTO ratings (class_id, rating) VALUES (?, ?)";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("ii", $class_id, $rating);
    $stmt->execute();
}
function getAllClassesWithRatings() {
    global $conn;
    $query = "SELECT classes.*, AVG(class_ratings.rating) AS average_rating 
              FROM classes 
              LEFT JOIN class_ratings ON classes.id = class_ratings.class_id 
              GROUP BY classes.id";
    $result = $conn->query($query);
    $classes = [];

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $classes[] = $row;
        }
    }

    return $classes;
}
function registerUser($username, $email, $password) {
    global $conn;
    // Hash password sebelum disimpan ke database
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);
    $query = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("sss", $username, $email, $hashed_password);
    if ($stmt->execute()) {
        // Registrasi berhasil
        return true;
    } else {
        // Registrasi gagal
        return false;
    }
}

// Fungsi untuk melakukan proses login
function loginUser($username, $password) {
    global $conn;
    $query = "SELECT * FROM users WHERE username = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($result->num_rows == 1) {
        // User ditemukan, verifikasi password
        $user = $result->fetch_assoc();
        if (password_verify($password, $user['password'])) {
            // Password cocok, login berhasil
            return $user;
        } else {
            // Password tidak cocok
            return false;
        }
    } else {
        // User tidak ditemukan
        return false;
    }
}
?>
