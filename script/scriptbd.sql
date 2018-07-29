CREATE TABLE JUGADOR ( 
	ID_Jugador SERIAL PRIMARY KEY,
	Nombre varchar(50) NOT NULL,
	Club varchar(50) NOT NULL,
	Edad integer NOT NULL,
	Posicion varchar(50) NOT NULL,
	ID_Seleccion integer NOT NULL
)
;

CREATE TABLE SELECCION ( 
	ID_SELECCION SERIAL PRIMARY KEY,
	Nombre varchar(50) NOT NULL,
	Tecnico varchar(50) NOT NULL,
	Federacion varchar(50) NOT NULL,
	Pais varchar(50) NOT NULL
)
;

ALTER TABLE JUGADOR
	ADD CONSTRAINT UQ_JUGADOR_ID_JUGADOR UNIQUE (ID_JUGADOR)
;
ALTER TABLE SELECCION
	ADD CONSTRAINT UQ_SELECCION_ID_SELECCION UNIQUE (ID_SELECCION)
;
ALTER TABLE SELECCION
	ADD CONSTRAINT UQ_SELECCION_Nombre UNIQUE (Nombre)
;
ALTER TABLE SELECCION
	ADD CONSTRAINT UQ_SELECCION_Pais UNIQUE (Pais)
;
ALTER TABLE SELECCION
	ADD CONSTRAINT UQ_SELECCION_Tecnico UNIQUE (Tecnico)
;

ALTER TABLE JUGADOR ADD CONSTRAINT FK_Seleccion_Jugador 
	FOREIGN KEY (ID_Seleccion) REFERENCES SELECCION (ID_SELECCION)
;
select setval('jugador_id_jugador_seq',2000);
select setval('seleccion_id_seleccion_seq',33);
/*Datos de las Selecciones*/
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (1, 'Seleccion Alemana', 'Joachim Löw', 'UEFA', 'Alemania'); 
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (2, 'Seleccion Arabia Saudita', 'Juan Antonio Pizzi', 'AFC', 'Arabia Saudita');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (3, 'Seleccion Argentina', 'Jorge Sampaoli', 'Conmebol', 'Argentina');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (4, 'Seleccion de Australia', 'Graham Arnold', 'AFC', 'Australia');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (5, 'Seleccion de Belgica', 'Roberto Martínez', 'UEFA', 'Belgica');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (6, 'Seleccion de Brasil', 'Tite', 'Conmebol', 'Brasil');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (7, 'Seleccion Colombia', 'Jose Nestor Pekerman', 'Conmebol', 'Colombia');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (8, 'Seleccion de Corea del Sur', 'Shin Tae-yong', 'AFC', 'Corea del Sur');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (9, 'Seleccion de Costa Rica', 'Jorge Luis Pinto', 'Concacaf', 'Costa Rica');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (10, 'Seleccion de Croacia', 'Zlatko Dalić','UEFA', 'Croacia');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (11, 'Selecion de Dinamarca', 'Åge Hareide', 'UEFA', 'Dinamarca');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (12, 'Seleccion de Egipto', 'Héctor Cúper', 'CAF', 'Egipto');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (13, 'Seleccion Española', 'Fernando Hierro', 'UEFA', 'España');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (14, 'Seleccion Francesa', 'Didier Deschamps', 'UEFA', 'Francia');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (15, 'Seleccion Inglesa', 'Gareth Southgate', 'UEFA', 'Inglaterra');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (16, 'Seleccion de Iran', 'Carlos Queiroz ', 'AFC', 'Iran');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (17, 'Seleccion de Islandia', 'Heimir Hallgrímsson', 'UEFA', 'Islandia');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (18, 'Seleccion de Japon', 'Akira Nishino', 'AFC', 'Japon');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (19, 'Seleccion de Marruecos', 'Hervé Renard', 'CAF', 'Marruecos');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (20, 'Seleccion Mexicana', 'Juan Carlos Osorio', 'Concacaf', 'Mexico');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (21, 'Seleccion Nigeriana', 'Gernot Rohr', 'CAF', 'Nigeria');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (22, 'Seleccion de Panama', 'Hernán Darío Gómez', 'Concacaf', 'Panama');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (23, 'Seleccion Peruana', 'Ricardo Gareca', 'Conmebol', 'Peru');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (24, 'Seleccion de Polonia', 'Jerzy Brzęczek', 'UEFA', 'Polonia');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (25, 'Seleccion de Portugal', 'Fernando Santos', 'UEFA', 'Portugal');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (26, 'Seleccion Rusa', 'Stanislav Cherchésov', 'UEFA', 'Rusia');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (27, 'Seleccion de Senegal', 'Aliou Cissé', 'CAF', 'Senegal');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (28, 'Seleccion de Serbia', 'Mladen Krstajic', 'UEFA', 'Serbia');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (29, 'Seleccion de Suecia', 'Janne Andersson', 'UEFA', 'Suecia');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (30, 'Seleccion de Suiza', 'Vladimir Petković', 'UEFA', 'Suiza'); 
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (31, 'Seleccion de Tunez', 'Nabil Maâloul', 'CAF', 'Tunez');
insert into SELECCION (ID_Seleccion, Nombre, Tecnico, Federacion, Pais) values (32, 'Seleccion Uruguaya', 'Oscar Washington Tabarez', 'Conmebol', 'Uruguay');

/*Datos de los jugadores*/
/*Jugadores de Alemania*/
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (101, 'Manuel NEUER', 'Bayern Munich', 32, 'Arquero', 1);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (102, 'Mats HUMMELS', 'Bayern Munich', 29, 'Defensa', 1);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (103, 'Toni KROOS', 'Real Madrid', 28, 'Mediocampista', 1);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (104, 'Mesut OEZIL', 'Arsenal', 29, 'Mediocampista', 1);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (105, 'Marco REUS', 'borussia dortmund', 28, 'Delantero', 1);

/*Jugadores de Arabia Saudita*/
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (201, 'Abdullah Al-Mayuf', 'Al-Hilal', 31, 'Arquero', 2);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (202, 'Mansour Al-Harbi', 'Al-Hilal', 30, 'Defensa', 2);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (203, 'Salman Al-Faraj', 'Al-Hilal', 30, 'Mediocampista', 2);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (204, 'Yahia Al-Shehri', 'Leganés', 28, 'Mediocampista', 2);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (205, 'Fahad Al-Muwallad', 'Levante', 23, 'Delantero', 2);

/*Jugadores de Argentina*/
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (301, 'Franco Armani', 'River Plate', 31, 'Arquero', 3);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (302, 'Nicolás Otamendi', 'Manchester City', 30, 'Defensa', 3);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (303, 'Ángel Di María', 'PSG', 30, 'Mediocampista', 3);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (304, 'Lucas Biglia', 'Milan', 32, 'Mediocampista', 3);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (305, 'Leo Messi', 'Barcelona', 31, 'Delantero', 3);

/*Jugadores de Australia*/
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (401, 'Matt Ryan', 'Brighton', 26, 'Arquero', 4);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (402, 'Milos Degenek', 'Yokohama Marinos', 24, 'Defensa', 4);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (403, 'Mile Jedinak', 'Aston VIlla', 33, 'Mediocampista', 4);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (404, 'Aaron Mooy', 'Huddersfield', 27, 'Mediocampista', 4);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (405, 'Mathew Leckie', 'Hertha Berlin', 27, 'Delantero', 4);

/*Jugadores de Belgica*/
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (501, 'Thibaut Courtois', 'Chelsea', 26, 'Arquero', 5);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (502, 'Vincent Kompany', 'Manchester City', 32, 'Defensa', 5);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (503, 'Kevin De Bruyne', 'Manchester City', 27, 'Mediocampista', 5);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (504, 'Marouane Fellaini ', 'Manchester United', 30, 'Mediocampista', 5);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (505, 'Eden Hazard', 'Chelsea', 27, 'Delantero', 5);

/*Jugadores de Brasil*/
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (601, 'Alisson', 'Roma', 25, 'Arquero', 6);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (602, 'Thiago Silva', 'PSG', 33, 'Defensa', 6);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (603, 'Casemiro ', 'Real Madrid', 26, 'Mediocampista', 6);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (604, 'Coutinho', 'Barcelona', 26, 'Mediocampista', 6);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (605, 'Neymar', 'PSG', 26, 'Delantero', 6);

/*Jugadores de Colombia*/
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (701, 'David Ospina', 'Arsenal', 29, 'Arquero', 7);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (702, 'Yerry Mina', 'Barcelona', 23, 'Defensa', 7);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (703, 'James Rodríguez ', 'Bayern Munich', 27, 'Mediocampista', 7);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (704, 'Juan Fernando Quintero', 'River Plate', 25, 'Mediocampista', 7);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (705, 'Radamel Falcao García', 'Monaco', 32, 'Delantero', 7);

/*Jugadores de Corea del Sur*/
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (801, 'Kim Seung-gyu', 'Vissel Kobe', 27, 'Arquero', 8);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (802, 'Lee Yong', 'Barcelona', 31, 'Defensa', 8);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (803, 'Lee Seung-woo', 'Hellas Verona', 20, 'Mediocampista', 8);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (804, 'Ki Sung-yueng', 'Swansea  City', 29, 'Mediocampista', 8);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (805, 'Son Heung-min', 'Tottenham Hotspur', 26, 'Delantero', 8);

/*Jugadores de Costa Rica*/
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (901, 'Keylor Navas', 'Real Madrid', 31, 'Arquero', 9);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (902, 'Cristian Gamboa ', 'Celtic', 28, 'Defensa', 9);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (903, 'Celso Borges', 'Deportivo la Coruña', 30, 'Mediocampista', 9);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (904, 'Bryan Ruiz', 'Sporting de Portugal', 32, 'Mediocampista', 9);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (905, 'Johan Venegas', 'Saprissa', 29, 'Delantero', 9);

/*Jugadores de Croacia*/
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1001, 'Danijel Subasic', 'Monaco', 33, 'Arquero', 10);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1002, 'Dejan Lovren', 'Liverpool', 29, 'Defensa', 10);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1003, 'Luka Modric', 'Real Madrid', 32, 'Mediocampista', 10);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1004, 'Ivan Rakitic', 'Barcelona', 30, 'Mediocampista', 10);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1005, 'Mario Mandzukic', 'Juventus', 32, 'Delantero', 10);

/*Jugadores de Dinamarca*/
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1101, 'Kasper Schmeichel', 'Leicester', 31, 'Arquero', 11);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1102, 'Andreas Christensen', 'Chelsea', 22, 'Defensa', 11);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1103, 'Christian Eriksen', 'Tottenham Hotspur', 26, 'Mediocampista', 11);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1104, 'Michael Krohn-Dehli', 'Deportivo la Coruña', 26, 'Mediocampista', 11);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1105, 'Kasper Dolberg', 'Ajax', 20, 'Delantero', 11);

/*Jugadores de Egipto*/
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1201, 'Essam El Hadary', 'Al Tauun', 45, 'Arquero', 12);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1202, 'Ali Gabr', 'West Bromwich Albion', 29, 'Defensa', 12);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1203, 'Mohamed Elneny', 'Arsenal', 26, 'Mediocampista', 12);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1204, 'Mahmoud Hassan Trézéguet', 'Kasimpasa', 23, 'Mediocampista', 12);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1205, 'Mohamed Salah', 'Liverpool', 26, 'Delantero', 12);

/*Jugadores de España*/
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1301, 'David De Gea', 'Manchester United', 27, 'Arquero', 13);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1302, 'Sergio Ramos', 'Real Madrid', 32, 'Defensa', 13);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1303, 'Sergio Busquets', 'Barcelona', 30, 'Mediocampista', 13);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1304, 'Andrés Iniesta', 'Vissel Kobe', 34, 'Mediocampista', 13);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1305, 'Diego Costa ', 'Atlético Madrid', 29, 'Delantero', 13);

/*Jugadores de Francia*/
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1401, 'Hugo Lloris', 'Tottenham Hotspur', 31, 'Arquero', 14);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1402, 'Samuel Umtiti', 'Barcelona', 24, 'Defensa', 14);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1403, 'Paul Pogba', 'Manchester United', 25, 'Mediocampista', 14);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1404, 'NGolo Kanté', 'Chelsea', 27, 'Mediocampista', 14);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1405, 'Kylian Mbappé', 'PSG', 19, 'Delantero', 14);

/*Jugadores de Inglaterra*/
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1501, 'Jordan Pickford', 'Everton', 24, 'Arquero', 15);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1502, 'Harry Maguire', 'Leicester', 25, 'Defensa', 15);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1503, 'Dele Alli', 'Tottenham Hotspur', 22, 'Mediocampista', 15);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1504, 'Jesse Lingard ', 'Manchester United', 25, 'Mediocampista', 15);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1505, 'Harry Kane', 'Tottenham Hotspur', 24, 'Delantero', 15);

/*Jugadores de Islandia*/
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1601, 'Alireza Beiranvand', 'Persepolis', 25, 'Arquero', 16);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1602, 'Ehsan Haji Safi', 'Olympiacos', 28, 'Defensa', 16);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1603, 'Mehdi Torabi', 'Saipa', 23, 'Mediocampista', 16);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1604, 'Vahid Amiri ', 'Persepolis', 30, 'Mediocampista', 16);
insert into JUGADOR (ID_Jugador, Nombre, Club, Edad, Posicion, ID_Seleccion) values (1605, 'Karim Ansarifard', 'Olympiacos', 28, 'Delantero', 16);
