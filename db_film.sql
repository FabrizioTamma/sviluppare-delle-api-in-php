-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 04, 2024 alle 08:48
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_film`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `actor`
--

CREATE TABLE `actor` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `birthday_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `actor` (`id`, `first_name`, `last_name`, `birthday_date`) VALUES
(1, 'Elijah', 'Wood', '1981-01-28'),
(2, 'Ian', 'McKellen', '1939-05-25'),
(3, 'Sean', 'Astin', '1971-02-25'),
(4, 'Viggo', 'Mortensen', '1958-10-20'),
(5, 'Orlando', 'Bloom', '1977-01-13'),
(6, 'John', 'Hurt', '1940-01-22'),
(7, 'Anthony', 'Hopkins', '1937-12-31'),
(8, 'Jodie', 'Foster', '1962-11-19'),
(9, 'Morgan', 'Freeman', '1937-06-01'),
(10, 'Brad', 'Pitt', '1963-12-18'),
(11, 'Leonardo', 'DiCaprio', '1974-11-11'),
(12, 'Domhnall', 'Gleeson', '1983-05-12'),
(13, 'Alicia', 'Vikander', '1988-10-03'),
(14, 'Arnold', 'Schwarzenegger', '1947-07-30'),
(15, 'Linda', 'Hamilton', '1956-09-26'),
(16, 'Michael', 'Fassbender', '1977-04-02'),
(17, 'Henry', 'Cavill', '1983-05-05'),
(18, 'Harrison', 'Ford', '1942-07-13'),
(19, 'Rutger', 'Hauer', '1944-01-23'),
(20, 'Sean', 'Young', '1959-11-20');


-- --------------------------------------------------------

--
-- Struttura della tabella `director`
--

CREATE TABLE `director` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `birthday_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `director` (`id`, `first_name`, `last_name`, `birthday_date`) VALUES
(1, 'Peter', 'Jackson', '1961-10-31'),
(2, 'Jonathan', 'Demme', '1944-02-22'),
(3, 'David', 'Fincher', '1962-08-28'),
(4, 'Christopher', 'Nolan', '1970-07-30'),
(5, 'Alex', 'Garland', '1970-05-26'),
(6, 'James', 'Cameron', '1954-08-16'),
(7, 'Ridley', 'Scott', '1937-11-30'),
(8, 'Michael', 'Bay', '1965-02-17'),
(9, 'James', 'Cameron', '1954-08-16'),
(10, 'Paul', 'Verhoeven', '1938-07-18');

-- --------------------------------------------------------

--
-- Struttura della tabella `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `genre` (`id`, `name`, `slug`) VALUES
(1, 'Fantasy', 'fantasy'),
(2, 'Adventure', 'adventure'),
(3, 'Crime', 'crime'),
(4, 'Thriller', 'thriller'),
(5, 'Science Fiction', 'science-fiction'),
(6, 'Drama', 'drama'),
(7, 'Action', 'action'),
(8, 'Horror', 'horror'),
(9, 'Mystery', 'mystery'),
(10, 'Film-noir', 'film-noir');

-- --------------------------------------------------------

--
-- Struttura della tabella `movie`
--

-- Struttura della tabella `movie`
CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `synopsis` text DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `released_year` date DEFAULT NULL,
  `poster` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Inserimento di 10 film con sinossi
INSERT INTO `movie` (`id`, `synopsis`, `title`, `duration`, `released_year`, `poster`) VALUES
(1, "Un hobbit timido dalla Contea e otto compagni partono per un viaggio per distruggere l'anello del potere e salvare la Terra di Mezzo dal Signore Oscuro Sauron.", "Il Signori Degli Anelli La Compagnia dell'Anello", 178, "2001-12-19", "https://nientepopcorn.b-cdn.net/wp-content/uploads/2019/07/trilogia-signore-degli-anelli-film-lo-hobbit-logo.jpg"),
(2, "Mentre Frodo e Sam si avvicinano sempre più a Mordor con l'aiuto di Gollum, i membri divisi della compagnia si oppongono all'alleato di Sauron, Saruman, e alle sue orde di Isengard.", "Le due torri", 179, "2002-12-18", "https://i.ebayimg.com/images/g/ftEAAOSw0XhiK4B6/s-l1200.webp"),
(3, "Gandalf e Aragorn guidano il mondo degli uomini contro l'esercito di Sauron per distogliere l'attenzione da Frodo e Sam che si avvicinano al Monte Fato con l'anello del potere.", "Il ritorno del re", 201, "2003-12-17", "https://mr.comingsoon.it/imgdb/video/4590_big.jpg"),
(4, "Un giovane agente dell'FBI deve ricevere l'aiuto di un killer cannibale manipolatore incarcerato per aiutare a catturare un altro serial killer, un pazzo che spellava le sue vittime.", "Il silenzio degli innocenti", 118, "1991-02-14", "https://static.sky.it/images/skytg24/it/spettacolo/cinema/approfondimenti/silenzio-innocenti-film/locandina_silenzio_degli_innocenti.jpg.transform/original/5fe346406c62b928b7dd85e4a0a3ba16d4868f1d/img.jpg"),
(5, "Due detective, un novellino e un veterano, danno la caccia a un serial killer che utilizza i sette peccati capitali come sue motivazioni.", "Seven", 127, "1995-09-22", "https://c8.alamy.com/compit/bkbc37/sette-1995-poster-bkbc37.jpg"),
(6, "Un ladro che ruba segreti aziendali attraverso l'uso della tecnologia di condivisione dei sogni è incaricato di piantare un'idea nella mente di un CEO, invece di rubarla.", "Inception", 148, "2010-07-16", "https://i0.wp.com/www.telefilm-central.org/wp-content/uploads/2017/09/inception-poster.jpg?fit=1000%2C600&ssl=1"),
(7, "Un cyborg identico a quello che ha fallito nel tentativo di uccidere <NOME> deve ora proteggere il suo figlio adolescente, John Connor, da un cyborg più avanzato e potente.", "Terminator 2 - Il giorno del giudizio", 137, "1991-07-03", "https://c8.alamy.com/compit/bkbmx6/terminator-2-il-giorno-del-giudizio-1991-poster-tr2-143-bkbmx6.jpg"),
(8, "Un soldato umano viene inviato dal 2029 al 1984 per impedire a un cyborg quasi indistruttibile di uccidere una donna il cui figlio non ancora nato è la chiave per la salvezza futura dell'umanità.", "Terminator", 107, "1984-10-26", "https://cdn20.pamono.com/p/s/1/3/1343279_qwiy6tl2p1/poster-del-film-terminator-quad-di-francis-regno-unito-1985.jpg"),
(9, "Un cacciatore di replicanti deve dare la caccia e terminare quattro replicanti che hanno rubato una nave nello spazio e sono tornati sulla Terra per trovare il loro creatore.", "Blade Runner", 117, "1982-06-25", "https://www.ilcinemista.it/blade-runner-recensione/blade-runner-cover/");


/*-- --------------------------------------------------------

--
-- Struttura della tabella `movie_actor`
--

CREATE TABLE `movie_actor` (
  `movie_id` int(11) DEFAULT NULL,
  `actor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `movie_actor` (`movie_id`, `actor_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 19),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 19),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 19),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11),
(6, 12),
(6, 13),
(7, 14),
(7, 15),
(8, 16),
(8, 17),
(9, 18),
(9, 19),
(10, 20),
(10, 19);

-- --------------------------------------------------------

--
-- Struttura della tabella `movie_director`
--

CREATE TABLE `movie_director` (
  `movie_id` int(11) DEFAULT NULL,
  `director_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `movie_director` (`movie_id`, `director_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 3),
(6, 4),
(7, 5),
(8, 6),
(9, 6),
(10, 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `movie_genre`
--

CREATE TABLE `movie_genre` (
  `movie_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `movie_genre` (`movie_id`, `genre_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 3),
(4, 4),
(5, 4),
(5, 6),
(6, 5),
(6, 6),
(7, 5),
(7, 6),
(8, 7),
(8, 8),
(9, 7),
(9, 8),
(10, 9),
(10, 10);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `actor_id` (`actor_id`);

--
-- Indici per le tabelle `movie_director`
--
ALTER TABLE `movie_director`
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `director_id` (`director_id`);

--
-- Indici per le tabelle `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `actor`
--
ALTER TABLE `actor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `director`
--
ALTER TABLE `director`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD CONSTRAINT `movie_actor_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  ADD CONSTRAINT `movie_actor_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`id`);

--
-- Limiti per la tabella `movie_director`
--
ALTER TABLE `movie_director`
  ADD CONSTRAINT `movie_director_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  ADD CONSTRAINT `movie_director_ibfk_2` FOREIGN KEY (`director_id`) REFERENCES `director` (`id`);

--
-- Limiti per la tabella `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  ADD CONSTRAINT `movie_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
*/
