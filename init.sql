SET NAMES 'utf8';
SET CHARACTER SET utf8;
SET collation_connection = utf8_general_ci;

CREATE DATABASE IF NOT EXISTS shiftme CHARACTER SET utf8 COLLATE utf8_general_ci;

USE shiftme;

CREATE TABLE IF NOT EXISTS miejscowosci (
    id INT AUTO_INCREMENT PRIMARY KEY,
    wojewodztwo VARCHAR(50),
    miejscowosc VARCHAR(50),
    informacje TEXT,
    herb VARCHAR(100)
);

INSERT INTO miejscowosci (wojewodztwo, miejscowosc, informacje, herb) VALUES 
('Mazowieckie', 'Warszawa', 'Stolica Polski, największe miasto w kraju.', 'herby/warszawa.png'),
('Mazowieckie', 'Radom', 'Miasto w województwie mazowieckim.', 'herby/radom.png'),
('Mazowieckie', 'Płock', 'Miasto portowe położone nad Wisłą.', 'herby/plock.png'),
('Małopolskie', 'Kraków', 'Stolica Małopolski, dawna stolica Polski.', 'herby/krakow.png'),
('Małopolskie', 'Tarnów', 'Miasto w województwie małopolskim.', 'herby/tarnow.png'),
('Małopolskie', 'Nowy Sącz', 'Miasto w województwie małopolskim, nad rzeką Dunajec.', 'herby/nowy_sacz.png'),
('Śląskie', 'Katowice', 'Stolica województwa śląskiego.', 'herby/katowice.png'),
('Śląskie', 'Gliwice', 'Miasto w województwie śląskim.', 'herby/gliwice.png'),
('Śląskie', 'Bielsko-Biała', 'Miasto położone na pograniczu Śląska i Małopolski.', 'herby/bielsko_biala.png');