INSERT INTO can
VALUES
('Perrier', 40, 250, DEFAULT),
('Coca-Cola', 200, 330, DEFAULT),
('Redbull', 50, 350, 1.70),
('Monster', 30, 500, 1.40),
('Oasis', 100, 330, DEFAULT),
('Canada Dry', 10, 330, 0.85),
('Orangina', 125, 330, DEFAULT),
('Fanta', 130, 330, DEFAULT),
('CandyUp', 100, 330, 0.50);

INSERT INTO assistant
VALUES
('login_x', 'Xavier', 'Loginard', 'thelegend27'),
('hoppy', 'Hoppy', 'Cat', 'ronron'),
('serval.martinot-lagarde', 'Serval', 'Martinot-Lagarde', 'Brocoleur'),
('emma.rachlin', 'Emma', 'Rachlin', 'Amme'),
('enzo.bouriche', 'Enzo', 'Bouriche', 'chef'),
('axel.barousse', 'Axel', 'Barousse', 'Fraisident');

INSERT INTO transaction
(assistant, can, timestamp)
VALUES
('serval.martinot-lagarde', 'Oasis', '2021-12-14 17:56:45'),
('serval.martinot-lagarde', 'Orangina', '2021-12-16 18:42:01'),
('serval.martinot-lagarde', 'Perrier', '2021-12-21 14:16:00'),
('emma.rachlin', 'CandyUp', '2021-12-17 14:32:10'),
('emma.rachlin', 'CandyUp', '2021-12-19 12:23:23'),
('emma.rachlin', 'CandyUp', '2021-12-22 19:35:48'),
('enzo.bouriche', 'Coca-Cola', '2021-12-20 11:53:27'),
('enzo.bouriche', 'Canada Dry', '2021-12-25 13:41:00'),
('enzo.bouriche', 'Coca-Cola', '2021-12-25 13:46:00'),
('enzo.bouriche', 'Canada Dry', '2021-12-25 13:51:00'),
('enzo.bouriche', 'Coca-Cola', '2021-12-25 13:56:00'),
('enzo.bouriche', 'Canada Dry', '2021-12-25 14:01:00'),
('enzo.bouriche', 'Coca-Cola', '2021-12-25 14:06:00'),
('enzo.bouriche', 'Canada Dry', '2021-12-25 14:11:00'),
('axel.barousse', 'Redbull', '2021-12-18 23:34:21'),
('axel.barousse', 'Fanta', '2021-12-23 12:24:07'),
('axel.barousse', 'Coca-Cola', '2021-12-25 13:41:59'),
('axel.barousse', 'Orangina', '2021-12-25 13:41:59');
