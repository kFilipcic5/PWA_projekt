-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220616.7a6bd9eb57
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 17, 2022 at 03:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `prezime` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `korisnicko_ime` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lozinka` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `razina` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `korisnicko_ime`, `lozinka`, `razina`) VALUES
(3, 'marko', 'maric', 'rimljan', '$2y$10$P9K9m9Y8fFyKWHp7usy.wuq6kfSHfRnXWgMjhx7R37LIsqWAcJjh6', 0),
(4, 'Karlo', 'Filipcic', 'kfilipcic', '$2y$10$fC.S28aXPn2KPpX7fLezU.xRuZskLvjs01xHy.9FqUrQraBndzrPa', 1),
(5, 'Ivan', 'Filipcic', 'ifilipcic', '$2y$10$ZTjY1Cmo1QzP9NjfhYkWSOaJqbboM.PrnCv8pchmRCJPmORpT1HhS', 0),
(7, 'Ivo', 'Ivic', 'ivanos', '$2y$10$RWJdkndxhWv.y4EtvpRUb.kZt8QB2Jw7cPPFvJCTh5sCALk8dsnGC', 0),
(8, 'john', 'rambo', 'rocky', '$2y$10$2.Ly2tv2Zo4FZvniiI2Zfu6M7TURw1O3pgVEq9Qpfr/qclFneKV8u', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vijesti`
--

CREATE TABLE `vijesti` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `about` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `archive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vijesti`
--

INSERT INTO `vijesti` (`id`, `title`, `date`, `about`, `content`, `photo`, `category`, `archive`) VALUES
(2, 'Was aus den Fortuna-Abg??ngen geworden ist', '12.Jun.2022.', 'D??sseldorf Sie wollten aus D??sseldorf weg oder haben keine Perspektive mehr bei Fortuna gesehen. Doch was ist aus den Profis an neuer Wirkungsst??tte geworden? F??r wen es der richtige Schritt war. Und wer besser im Rheinland geblieben w??re. Ein ??berblick.', 'Nach der schwachen Fu??ball-Europameisterschaft der T??rkei wechselte der in Hoffenheim ausgebildete Karaman mit einem Jahr Verz??gerung zu Besiktas. Dort konnte Karaman das erste Mal in seiner Karriere Champions League spielen, verlor aber alle sechs Partien mit seinem Team. Auch in der Liga war es eine gebrauchte Saison f??r den damals noch amtierenden Meister- und Pokalsieger. Besiktas landete nur auf dem sechsten Rang und entlie?? gleich zwei Trainer: den ehemaligen Erfolgscoach Sergen Yalcin und sp??ter dessen Nachfolger ??nder Karaveli.\r\n\r\nF??r den Traditionsverein ist es die schlechteste Platzierung der letzten 35 Jahre, nur die Saison 1997/98 wurde auch auf Platz sechs abgeschlossen. Aktuell wird die Mannschaft von Valerien Isma??l trainiert, der Karaman vermehrt im rechten Mittelfeld einsetzt. Positiv f??r Karaman ist, dass er in der unruhigen Zeit auf seine Spielminuten kam und im letzten Spiel traf. Seine Statistiken mit nur jeweils zwei Toren und Vorlagen entsprechen jedoch nicht seinen Anspr??chen.In erster Linie wird es f??r den Offensivspieler darum gehen, sich dem neuen Trainer zu zeigen. F??r Herrmann ist Daniel Farke der siebte Chefcoach, den er in seiner Profizeit in Gladbach erlebt. Ein neuer Trainer ist immer auch eine neue Chance, gerade f??r diejenigen, die nicht unbedingt zur ersten Elf z??hlen. Das gilt auch f??r Routinier Herrmann, der zuletzt bei Adi H??tter keine guten Karten hatte ??? vor allem, nachdem der ??sterreicher das System auf ein 3-4-2-1 umgestellt hatte. In der R??ckrunde kam Herrmann nur noch auf neun Eins??tze als Einwechselspieler.\r\n\r\nFarke favorisiert dagegen das 4-2-3-1, ein System mit einer offensiven Dreierreihe hinter der einzigen Sturmspitze, in dem sich die Borussen vor H??tters Zeit sehr wohl f??hlten. Und es bietet einem wie Herrmann, der vornehmlich ??ber die rechte Seite kommt, mehr Einsatzchancen. Als Herrmann im ersten Jahr unter Trainer Marco Rose letztmals ??ber einen l??ngeren Zeitraum Stammspieler war, spielte Gladbach ebenfalls im 4-2-3-1, und der erfahrene Angreifer steuerte im Herbst 2019 f??nf Tore zu einer b??renstarken Vorrunde bei.', '62a5ff71e70902.27942094.jpg', 'Sport', 1),
(3, 'Das deutsche Eishockey-Team l??sst bei der WM eine ', '12.Jun.2022.', 'Helsinki Nach der besten Gruppenphase der deutschen WM-Geschichte scheidet die Eishockey-Nationalmannschaft gleich im Viertelfinale aus. Danach herrscht Katerstimmung, denn die Gelegenheit, weit zu kommen, war g??nstig.', 'Es ist wieder k??lter geworden in Helsinki. Fast zwei Wochen lang schien die Sonne, blauer Himmel, wohin man auch sah. Jetzt ist das wieder anders, am Freitag pfiff ein ungem??tlicher Wind durch die finnische Hauptstadt, es regnete. Ein guter Tag um abzureisen, wie es das deutsche Eishockey-Team dann auch tat. Was aber nat??rlich nichts mit dem Wetter zu tun hatte. Am Nachmittag zuvor war es bei der 85. Weltmeisterschaft ausgeschieden, nach einem 1:4 im Viertelfinale gegen Tschechien.\r\n\r\nSo war bereits die WM 2019 in der Slowakei geendet. Damals hie?? es gar 1:5, doch den kleinen Fortschritt wollte sich am Donnerstag niemand sch??nreden. ???Wir waren einfach nicht gut genug???, sagte der 21 Jahre alte Abwehrchef Moritz Seider. ???Einfach nur entt??uschend???, erg??nzte sein nur ein Jahr ??lterer Kollege Leon Gawanke. Denn auch sie wussten, dass die Gelegenheit, weit zu kommen, in Finnland besonders g??nstig war. Die deutsche Gruppe war wegen des Ausschlusses der Russen dankbar wie lange nicht, auch der Viertelfinalgegner hatte zwar einen gro??en Name, aber kein ganz gro??es Team. ???Bei F??nf-gegen-f??nf waren wir besser???, sagte Gawanke. Drei Pfosten- und Lattentreffer zeugten davon, aber was die Tschechen besser machten: Sie nutzen ihre ??berzahlspiele und machten die R??ume eng. Das stellte die Deutschen immer wieder vor Probleme: ???Bei Zweik??mpfen in der offensiven Zone m??ssen wir besser werden???, stellte Bundestrainer Toni S??derholm grunds??tzlich fest.', '62a600239e8157.59850732.jpg', 'Sport', 0),
(4, '31. Sieg in Serie - Topfavoritin Swiatek im Achtel', '12.Jun.2022.', 'Topfavoritin Iga Swiatek ist mit dem 31. Sieg in Serie souver??n ins Achtelfinale der French Open eingezogen. Die 20-j??hrige Polin setzte sich am Samstag gegen Danka Kovinic aus Montenegro mit 6:3,7:5 durch und ist in Paris damit weiter ohne Satzverlust. Die Weltranglistenerste verlor zum letzten Mal im Februar beim Tennisturnier in Dubai gegen Jelena Ostapenko ein Spiel.', 'Die topgesetzte Polin ist nun ??berhaupt die letzte Top-Ten-Spielerin im Bewerb des zweiten Grand-Slam-Turniers des Jahres: Mitfavorit Paula Badosa musste wegen einer Verletzung am rechten Knie aufgeben. Die als Nummer 3 gesetzte Spanierin lag zu dem Zeitpunkt mit 3:6,1:2 gegen die Russin Veronika Kudermetowa zur??ck. Letztere steht damit erstmals in der Runde der letzten 16 bei einem Major. Und auch f??r Aryna Sabalenka aus Belarus, die Nummer 7 des Turniers, kam das Aus. Sie unterlag der Italienerin Camilla Giorgi mit 6:4,1:6,0:6.', '62a60090a33ac2.49094654.jpg', 'Sport', 0),
(5, 'Ordert Anti-Corona-Plan mit Lockdown', '16.Jun.2022.', 'Osnabr??ck Wie sollte sich Deutschland auf den Herbst und eine m??gliche neue Corona-Welle vorbereiten? Welt??rztechef Frank Ulrich Montgomery pl??diert f??r einen umfangreichen Plan ??? mit m??glichen harten Ma??nahmen.', '???Gesundheitsminister Karl Lauterbach (SPD) muss das Infektionsschutzgesetz anpassen, damit Eind??mmungsma??nahmen eingef??hrt werden k??nnen, wenn die Lage ernst wird, und zwar bundesweit einheitlich???, sagte der Vorsitzende des Welt??rztebundes der ???Neuen Osnabr??cker Zeitung??? (NOZ/Samstagsausgabe). Als ???Ultima Ratio??? m??sse im angepassten Infektionsschutzgesetz ???auch die M??glichkeit zu einem Lockdown verankert werden???, sagte Montgomery.\r\n\r\n???Es w??re fahrl??ssig, dieses Instrument nicht in den Werkzeugkasten zu legen, auch wenn wir alles unternehmen m??ssen, damit wir es nie wieder rausholen brauchen.??? Weitere Instrumente reichten ???von der Pflicht zum Maskentragen im ??ffentlichen Raum bis hin zu Abstandsregeln und Kontaktbeschr??nkungen???.', '62a63294511b73.34567640.jpg', 'sport', 0),
(6, 'Mit Russland w??re laut Unterh??ndler ???kein', '12.Jun.2022.', 'EU-Handelskommissar Dombrovskis wirft Russland vor, UN-Bem??hungen zum Export von ukrainischem Getreide zu blockieren. Die pro-russischen Separatisten halten an Todesurteilen gegen ausl??ndische K??mpfer fest. Die Entwicklungen im Liveblog.', 'Der ukrainische Botschafter Andrij Melnyk fordert bei der geplanten Kiew-Reise von Bundeskanzler Olaf Scholz konkrete Zusagen. \"Wir hoffen, dass der Kanzler bei seinem Besuch in Kiew endlich die deutschen Versprechen wahrmacht, was die Waffenlieferungen und auch den EU-Beitritt der Ukraine betrifft\", sagte er dem \"Spiegel\".Bis heute warte man auf die Lieferung von schweren Waffen wie der Panzerhaubitze 2000 und des Gepard-Flugabwehrpanzers, kritisierte Melnyk. Nur Ank??ndigungen allein seien im Krieg keine Hilfe gegen die Invasoren. Man erhoffe sich deswegen vom Kanzler konkrete Daten, wann die Waffen kommen. \"Zumal die Versprechen bereits Monate zur??ckliegen.\"Auch in Sachen EU-Beitritt erhofft sich Melnyk Fortschritte. \"Wenn der deutsche Kanzler gemeinsam mit den Regierungschefs aus Paris und Rom ein Zeichen setzt, dass die Ukraine Beitrittskandidat werden kann, w??re das mehr als nur ein starkes Symbol\", sagte Melnyk. Der Diplomat verwies darauf, dass Scholz immer gesagt habe, er wolle nicht nur f??r einen Fototermin nach Kiew reisen.', '62a6019d541252.99748615.jpg', 'Politik', 0),
(7, '???Keine Erderw??rmung ist keine Option mehr???', '12.Jun.2022.', 'Im Kampf gegen den Klimawandel kann es laut Klimaschutzminister Robert Habeck (Gr??ne) nur noch um eine Begrenzung der Erderw??rmung gehen. \"Es wird immer eine Erderw??rmung geben\", sagte Habeck am Freitag in Berlin zum Abschluss des Treffens der Umwelt-, Energie- und Klimaschutzminister der G7-Industriestaaten. Deutschland f??hrt derzeit den Vorsitz der Gruppe, der auch Frankreich, Italien, Japan, Kanada, die USA und Gro??britannien angeh??ren.', 'BERLIN \"Dass wir die Fehler der Vergangenheit reparieren, ist vielleicht noch m??glich. Dass wir sie ungeschehen machen, ist unm??glich\", sagte Habeck. \"Keine Erderw??rmung ist keine Option mehr.\" Die einzige Frage, um die es gehe, sei, ob es durch entschiedenes politisches Handeln gelinge, innerhalb der n??chsten vier, f??nf, acht oder zehn Jahre die Erderw??rmung so weit einzubremsen, dass es danach \"??berhaupt noch Handlungsoptionen\" gebe. Nach einem Anfang April ver??ffentlichten Bericht des Weltklimarats lag der weltweite Aussto?? von Treibhausgasen zwischen 2010 und 2019 so hoch wie nie zuvor in der Geschichte der Menschheit. Zwar habe sich die Wachstumsrate verlangsamt. Aber ohne unverz??gliche Verringerungen der Emissionen sei das im Pariser Klimaabkommen verankerte Ziel, die Erw??rmung auf 1,5 Grad im Vergleich zum vorindustriellen Zeitalter zu begrenzen, nicht mehr zu schaffen.\r\n\r\n', '62a601edcc14b4.52063371.jpg', 'Politik', 0),
(8, 'Schalke stimmt Fans auf langen Abstiegskampf ein', '12.Jun.2022.', 'Gelsenkirchen Auf der Mitgliederversammlung haben viele Fans ihren Unmut ??ber die Arbeit der Vorst??nde in den Jahren 2019 und 2020 gemacht. Die neuen Verantwortlichen wappnen sich derweil f??r eine schwierige Saison nach dem Bundesliga-Aufstieg.', 'Auch Sportvorstand Peter Kn??bel betonte: ???Unser Ziel ist der Klassenerhalt, der Klassenerhalt, der Klassenerhalt.??? Gleichzeitig versprach er, dass die Mannschaft ???bundesligatauglich??? sein werde, ???klar ist aber auch: Wir m??ssen in allen Bereichen besser werden.???\r\n\r\nAufsichtsratschef Axel Hefer erkl??rte mit Blick auf die hohen Schulden: ???Es war klar, dass es Jahre dauern w??rde, den Verein zu sanieren und wieder in der Bundesliga zu etablieren. Aber das Vertrauen der Finanzm??rkte kehrt langsam zur??ck.??? Laut Finanzvorst??ndin Christina R??hl-Hamers seien die Verbindlichkeiten zwar um rund 30 Millionen Euro gesenkt worden, sie betragen aber immer noch 183,5 Millionen. ???Der Rucksack ist ein wenig leichter geworden???, sagte sie.F??r den letztj??hrigen Abstieg und die desolate Finanzlage machten die Mitglieder die alte F??hrungsriege aus den Jahren 2019 und 2020 verantwortlich. Die Vorst??nde und Aufsichtsr??te dieser beiden Gesch??ftsjahre wurden auf der Mitgliederversammlung am Sonntag bei den entsprechenden Abstimmungen nicht entlastet. Zuvor hatte ein Mitglied die Nicht-Entlastung auf der B??hne gefordert und vorgeschlagen zu pr??fen, ob fr??here Vorstandsmitglieder f??r Fehler pers??nlich zur Rechenschaft gezogen werden k??nnen.', '62a63af9e40815.17651068.jpg', 'Sport', 0),
(9, 'Bundeskanzler Scholz will offenbar nach Kiew reise', '12.Jun.2022.', 'Kiew/Berlin Seit Wochen dringt die Ukraine auf einen Besuch des deutschen Kanzlers. Nun k??nnte er einem Medienbericht zufolge bevorstehen. Begleitet wird Olaf Scholz demnach von zwei europ??ischen Verb??ndeten.', 'Bundeskanzler Olaf Scholz plant einem Medienbericht zufolge eine Reise nach Kiew - und das noch vor dem G7-Gipfel Ende Juni. Auch der franz??sische Pr??sident Emmanuel Macron und der italienische Regierungschef Mario Draghi sollen mit dabei sein, wie die ???Bild am Sonntag??? am Samstag unter Berufung auf franz??sische und ukrainische Regierungskreise berichtete. Ein Sprecher der Bundesregierung kommentierte den Bericht am Abend nicht. Aus dem ??lys??epalast in Paris hie?? es nur: ???Nein, wir best??tigen diese Information nicht.???\r\n\r\nSeit Beginn des russischen Angriffskriegs Ende Februar sind bereits zahlreiche Staats- und Regierungschefs in die Ukraine gereist. Erst am Wochenende war EU-Kommissionschefin Ursula von der Leyen zum zweiten Mal zu Besuch in der ukrainischen Hauptstadt. Dort sprach sie auch mit Pr??sident Wolodymyr Selenskyj.Die Ukraine hofft darauf, dass sie beim Gipfeltreffen der europ??ischen Staats- und Regierungschefs am 23. und 24. Juni zum EU-Beitrittskandidaten erkl??rt wird. Die EU-Kommission will in der kommenden Woche eine Empfehlung dazu abgeben - wobei eine Entscheidung ??ber den Kandidatenstatus eine etwaige Aufnahme nicht vorwegnimmt und auch nicht mit einem Zeitrahmen verbunden ist. Kurz nach dem EU-Gipfel treffen sich dann vom 26. bis 28. Juni unter Leitung von Scholz die G7-Staaten auf Schloss Elmau bei Garmisch-Partenkirchen.', '62a632f056b2c1.87125278.jpg', 'Politik', 1),
(13, 'Cijena benzina od utorka skoro 15 kn', '17.Jun.2022.', 'OD PRIDRU??IVANJA europodru??ju koristi ne??e imati samo Hrvatska nego i sama eurozona', 'Naime, cijene ??e od utorka vjerojatno opet rasti. Eurosuper bi mogao biti skuplji za 71 lipu te bi cijena po litri iznosila 14.20 kuna, dok bi oba dizela, i eurodizel i plavi, rasla za gotovo kunu i pol te bi ko??tali 14.52 kune, odnosno gotovo 11 kuna po litri.\r\n\r\nMari?? je rekao da je vlada do sada dva puta reagirala smanjenjem tro??arina te da je preostali prostor za daljnje sni??avanje tro??arina dosta limitiran europskim direktivama. Za dizel je preostalo 20 lipa po litri, a za benzin 36, 37 lipa.\r\n\r\n\"Vidio sam u medijima koje bi nove cijene mogle biti i bio sam u kontaktu s kolegom Filipovi??em, ??ije ??e Ministarstvo pripremiti sve dodatne analize.\r\n\r\nNa??alost, ponovno su porasle cijene na me??unarodnim tr??i??tima. Mi smo u nekoliko navrata intervenirali, pa tako i zadnji put s dodatnim sni??avanjem tro??arine.\r\n\r\nProstor je na tro??arinama ostao dosta limitiran zbog europske direktive. Nakon ove dvije intervencije nama ostaje jo?? nekakvih manje od 20 lipa na strani dizela te oko 36, 37 lipa na strani benzina.\r\n\r\n', '62ac6fdc064169.67800246.jpg', 'sport', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lozinka` (`lozinka`);

--
-- Indexes for table `vijesti`
--
ALTER TABLE `vijesti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vijesti`
--
ALTER TABLE `vijesti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



