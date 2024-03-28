<?php
require_once 'includes/config.php';
include 'includes/functions.php';

$classes = getAllClassesWithRatings();
foreach ($classes as $class) {
    echo "Kelas: " . $class['name'] . "<br>";
    echo "Guru: " . $class['teacher'] . "<br>";

    // Ambil nilai rating dari database
    $ratings = getClassRatings($class['id']);
    if (!empty($ratings)) {
        echo "Nilai Rating: ";
        foreach ($ratings as $rating) {
            echo $rating['rating'] . " ";
        }
        // Hitung rata-rata rating
        $average_rating = calculateAverageRating($ratings);
        echo "<br>Rata-rata Rating: " . $average_rating . "<br>";
    } else {
        echo "Belum ada rating untuk kelas ini.<br>";
    }

    echo "<br>";
}
?>
