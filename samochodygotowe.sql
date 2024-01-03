-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Sty 2024, 00:50
-- Wersja serwera: 10.4.25-MariaDB
-- Wersja PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `samochody`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `id_klienta` int(11) NOT NULL,
  `imie` varchar(64) DEFAULT NULL,
  `nazwisko` varchar(64) DEFAULT NULL,
  `wiek` int(3) DEFAULT NULL,
  `pesel` int(11) DEFAULT NULL,
  `telefon` int(9) DEFAULT NULL,
  `miejscowosc` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klient`
--

INSERT INTO `klient` (`id_klienta`, `imie`, `nazwisko`, `wiek`, `pesel`, `telefon`, `miejscowosc`) VALUES
(1, 'Dawid', 'Wiśniowski', 35, 1953712925, 457723921, 'Bochnia'),
(2, 'Maksymilian', 'Zawadzki', 51, 512312612, 561237534, 'Zakopane'),
(3, 'Radosław', 'Jasiński', 61, 231321532, 123456789, 'Gdów'),
(4, 'Damian', 'Zawadzki', 19, 235174232, 193496789, 'Kraków'),
(5, 'Mikołaj', 'Górecki', 59, 135123232, 495496429, 'Oświęcim'),
(6, 'Bartosz', 'Mróz', 99, 815127431, 691496219, 'Myślenice'),
(7, 'Kazimierz', 'Kubiak', 72, 2147483647, 123456789, 'Tarnów'),
(8, 'Tadeusz', 'Hulajnoga', 32, 2147483647, 846295125, 'Houston'),
(9, 'Marcin', 'Gajewski', 39, 991391592, 734127378, 'Gdów'),
(10, 'Gabriel', 'Szulc', 21, 723627851, 476716729, 'Gdów');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kolor`
--

CREATE TABLE `kolor` (
  `id_koloru` int(11) NOT NULL,
  `kolor` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `kolor`
--

INSERT INTO `kolor` (`id_koloru`, `kolor`) VALUES
(1, 'czerwony'),
(2, 'niebieski'),
(3, 'pomarańczowy'),
(4, 'czarny'),
(5, 'biały'),
(6, 'beżowy'),
(7, 'różowy'),
(8, 'szafirowy'),
(9, 'żółty'),
(10, 'łososiowy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `marka`
--

CREATE TABLE `marka` (
  `id_marki` int(11) NOT NULL,
  `marka` varchar(64) DEFAULT NULL,
  `telefon` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `marka`
--

INSERT INTO `marka` (`id_marki`, `marka`, `telefon`) VALUES
(1, 'Audi A3', 841626912),
(2, 'Mercedes Sl', 612984189),
(3, 'Skoda Fabia', 645334658),
(4, 'Opel Astra', 658508317),
(5, 'Porsche Panamera', 442631149),
(6, 'Seat Leon', 155798164),
(7, 'Nissan Skyline', 315175007),
(8, 'Honda Civic', 112475590),
(9, 'Maseratti GranTurismo', 21590416),
(10, 'Ford Focus', 199617217);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochody`
--

CREATE TABLE `samochody` (
  `id_samochodu` int(11) NOT NULL,
  `id_koloru` int(11) DEFAULT NULL,
  `id_marki` int(11) DEFAULT NULL,
  `rocznik` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_zamowienia` int(11) NOT NULL,
  `id_klienta` int(11) DEFAULT NULL,
  `id_samochodu` int(11) DEFAULT NULL,
  `cena` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id_zamowienia`, `id_klienta`, `id_samochodu`, `cena`) VALUES
(1, 1, 1, 123000),
(2, 2, 2, 99000),
(3, 3, 3, 25671300),
(4, 4, 4, 11111),
(5, 5, 5, 56666),
(6, 6, 6, 8888),
(7, 7, 7, 12888),
(8, 8, 8, 23666),
(9, 9, 9, 10000),
(10, 10, 10, 123456);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indeksy dla tabeli `kolor`
--
ALTER TABLE `kolor`
  ADD PRIMARY KEY (`id_koloru`);

--
-- Indeksy dla tabeli `marka`
--
ALTER TABLE `marka`
  ADD PRIMARY KEY (`id_marki`);

--
-- Indeksy dla tabeli `samochody`
--
ALTER TABLE `samochody`
  ADD PRIMARY KEY (`id_samochodu`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id_zamowienia`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `klient`
--
ALTER TABLE `klient`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `kolor`
--
ALTER TABLE `kolor`
  MODIFY `id_koloru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `marka`
--
ALTER TABLE `marka`
  MODIFY `id_marki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `samochody`
--
ALTER TABLE `samochody`
  MODIFY `id_samochodu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id_zamowienia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
