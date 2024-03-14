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

CREATE TABLE IF NOT EXISTS produkty (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nazwa VARCHAR(255),
    cena DECIMAL(10, 2),
    kategoria VARCHAR(100)
);

INSERT INTO produkty (nazwa, cena, kategoria) VALUES ('Laptop', 2500.00, 'Elektronika');
INSERT INTO produkty (nazwa, cena, kategoria) VALUES ('Smartfon', 1200.00, 'Elektronika');
INSERT INTO produkty (nazwa, cena, kategoria) VALUES ('Koszula', 50.00, 'Odzież');
INSERT INTO produkty (nazwa, cena, kategoria) VALUES ('Spodnie', 70.00, 'Odzież');
INSERT INTO produkty (nazwa, cena, kategoria) VALUES ('Telewizor LED 55"', 3500.00, 'Elektronika');
INSERT INTO produkty (nazwa, cena, kategoria) VALUES ('Słuchawki bezprzewodowe', 200.00, 'Elektronika');
INSERT INTO produkty (nazwa, cena, kategoria) VALUES ('Kurtka zimowa', 150.00, 'Odzież');
INSERT INTO produkty (nazwa, cena, kategoria) VALUES ('Buty sportowe', 120.00, 'Odzież');
INSERT INTO produkty (nazwa, cena, kategoria) VALUES ('Smartwatch', 300.00, 'Elektronika');
INSERT INTO produkty (nazwa, cena, kategoria) VALUES ('Okulary przeciwsłoneczne', 50.00, 'Akcesoria');
INSERT INTO produkty (nazwa, cena, kategoria) VALUES ('Ładowarka przenośna', 30.00, 'Elektronika');
INSERT INTO produkty (nazwa, cena, kategoria) VALUES ('Torba podróżna', 80.00, 'Akcesoria');
INSERT INTO produkty (nazwa, cena, kategoria) VALUES ('Biurko', 150.00, 'Meble');
INSERT INTO produkty (nazwa, cena, kategoria) VALUES ('Krzesło biurowe', 100.00, 'Meble');