<?php
    require_once("connect.php");
    if ($_SERVER['PATH_INFO'] == '/movies') {
        if ( isset($_GET['title'])){
          $movies = get_movies($_GET ['title']);
        } else $movies = get_movies(NULL); 
      
        http_response_code(200);
        header('Content-Type: application/json');
        echo json_encode([
        'status' => 200,
        'message' => 'method allowed by marco ferri',
        'payload' => $movies
        ]);
    }

  exit;
?>