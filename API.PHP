<?php

    require_once("connect.php");
    if ($_SERVER ['PATH_INFO'] == '/movies'){
        $movies = get_movies();
        http_response_code(200);
        header('Content-Type: application/json');
        echo json_encode([
            'status' => 200,
            'message'=> 'method allowed by marco ferri',
            'payload' => $movies
        ]);
    }

    exit;
?>