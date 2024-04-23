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

  require_once("connect.php");
  if ($_SERVER['PATH_INFO'] == '/actor') {
      if ( isset($_GET['title'])){
        $actor = get_actors($_GET ['first_name']);
      } else $actor = get_actors(NULL); 
    
      http_response_code(200);
      header('Content-Type: application/json');
      echo json_encode([
      'status' => 200,
      'message' => 'method allowed by marco ferri',
      'payload' => $actor
      ]);
  }

exit;


require_once("connect.php");
  if ($_SERVER['PATH_INFO'] == '/director') {
      if ( isset($_GET['first_name'])){
        $directors = get_directors($_GET ['first_name']);
      } else $directors = get_directors(NULL); 
    
      http_response_code(200);
      header('Content-Type: application/json');
      echo json_encode([
      'status' => 200,
      'message' => 'method allowed by marco ferri',
      'payload' => $directors
      ]);
  }

exit;
?>