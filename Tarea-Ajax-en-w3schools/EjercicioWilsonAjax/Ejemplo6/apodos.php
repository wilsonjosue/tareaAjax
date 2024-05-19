<?php
// Array with funny nicknames in Spanish
$nicknames = [
    "Chiqui", "Risas", "Chispa", "Pelusa", "Gordito", "Ternurita", "Tronquito", 
    "Peque", "Cachetes", "Pancito", "Choco", "Bombón", "Chisporroteo", "Chiquitín", 
    "Cariñito", "Fofito", "Cuchi", "Pepón", "Mimoso", "Tiqui", "Cosita", 
    "Tontuelo", "Burrito", "Galleta", "Sillita", "Globito", "Morrón", "Cabezón", 
    "Pitufo", "Patitas"
];

// Get the q parameter from URL
$q = isset($_REQUEST["q"]) ? $_REQUEST["q"] : '';

$results = [];

if ($q !== '') {
    $q = strtolower($q);
    foreach ($nicknames as $nickname) {
        if (stristr($nickname, $q)) {
            $results[] = $nickname;
        }
    }
}

header('Content-Type: application/json');
echo json_encode($results);
?>
