<?php
function recommend_movis($user_id) {
			$movies = [];


			return json_encode($movie);
		}



		function cosine_similarity($a, $b){
			$modulo_a = 0;
			$modulo_b = 0;
			$denominatore = 0;

            for($i = 0; $i < count ($a); $i++){
                $modulo_a = $modulo_a + pow($a[$i], 2);
                $modulo_b = $modulo_b + pow($b[$i], 2);
            }

            $modulo_a = sqrt($modulo_a);
            $modulo_b = sqrt($modulo_b);

            $denominatore = $modulo_a * $modulo_b;

            $numeratore = 0;

            for($i = 0; $i < count ($a); $i++){
                $numeratore = $numeratore + $a[$i] * $b[$i];
            }

            return $numeratore / $denominatore;

			

			return $similarity();
		}
?>