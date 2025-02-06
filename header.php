<?php

header('Content-Type: text/plain; charset=UTF-8');

function distributeCards($numPeople) {
    // Validate input
    if ($numPeople <= 0) {
        throw new Exception("Input value does not exist or value is invalid");
    }

    // Define suits and ranks
    $suits = ['S', 'H', 'D', 'C'];
    $ranks = ['A', '2', '3', '4', '5', '6', '7', '8', '9', 'X', 'J', 'Q', 'K'];
    $deck = [];

    // Create the deck of cards
    foreach ($suits as $suit) {
        foreach ($ranks as $rank) {
            $deck[] = "$suit-$rank";
        }
    }

    // Shuffle the deck
    if (!shuffle($deck)) {
        throw new Exception("Failed to shuffle the deck");
    }

    // Distribute the cards
    $distribution = array_fill(0, $numPeople, []);
    for ($i = 0; $i < count($deck); $i++) {
        $distribution[$i % $numPeople][] = $deck[$i];
    }

    // Format the output
    $output = [];
    foreach ($distribution as $personCards) {
        $output[] = implode(',', $personCards);
    }

    return implode("\n", $output);
}

try {
    // Get the number of people from the query string
    $numPeople = isset($_GET['numPeople']) ? (int)$_GET['numPeople'] : 0;

    // Distribute the cards and output the result
    echo distributeCards($numPeople);
} catch (Exception $e) {
    // Handle irregularities
    die("Irregularity occurred");
}
?>