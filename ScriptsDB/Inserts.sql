--       REGIONES
-- America
INSERT INTO Region(name, tarifa) VALUES ('America del Norte',3);
INSERT INTO Region(name, tarifa) VALUES ('Centro America',2);
INSERT INTO Region(name, tarifa) VALUES ('El Caribe',1.50);
INSERT INTO Region(name, tarifa) VALUES ('America del Sur',3.50);
-- Europa
INSERT INTO Region(name, tarifa) VALUES ('Europa Oriental',4);
INSERT INTO Region(name, tarifa) VALUES ('Europa Occidental',5);
INSERT INTO Region(name, tarifa) VALUES ('Europa Central',4.50);
INSERT INTO Region(name, tarifa) VALUES ('Europa del Sur o Meridional',5);
-- Asia
INSERT INTO Region(name, tarifa) VALUES ('Asia Septentrional',5);
INSERT INTO Region(name, tarifa) VALUES ('Asia Central',7);
INSERT INTO Region(name, tarifa) VALUES ('Asia Occidental',8);
INSERT INTO Region(name, tarifa) VALUES ('Asia Oriental',6);
-- Africa
INSERT INTO Region(name, tarifa) VALUES ('Africa Septentrional',9);
INSERT INTO Region(name, tarifa) VALUES ('Africa Occidental',8);
INSERT INTO Region(name, tarifa) VALUES ('Africa Meridional',7.40);

--       PAISES
INSERT INTO Country(name, Region_id_region) VALUES ('Estados Unidos',1);
INSERT INTO Country(name, Region_id_region) VALUES ('Canada',1);
INSERT INTO Country(name, Region_id_region) VALUES ('Mexico',1);
INSERT INTO Country(name, Region_id_region) VALUES ('Panama',2);
INSERT INTO Country(name, Region_id_region) VALUES ('El Salvador',2);
INSERT INTO Country(name, Region_id_region) VALUES ('Costa Rica',2);
INSERT INTO Country(name, Region_id_region) VALUES ('Nicaragua',2);
INSERT INTO Country(name, Region_id_region) VALUES ('Cuba',3);
INSERT INTO Country(name, Region_id_region) VALUES ('Jamaica',3);
INSERT INTO Country(name, Region_id_region) VALUES ('Puerto Rico',3);
INSERT INTO Country(name, Region_id_region) VALUES ('Brasil',4);
INSERT INTO Country(name, Region_id_region) VALUES ('Colombia',4);
INSERT INTO Country(name, Region_id_region) VALUES ('Argentina',4);
INSERT INTO Country(name, Region_id_region) VALUES ('Chile',4);
INSERT INTO Country(name, Region_id_region) VALUES ('Polonia',5);
INSERT INTO Country(name, Region_id_region) VALUES ('Republica Checa',5);
INSERT INTO Country(name, Region_id_region) VALUES ('Rusia',5);
INSERT INTO Country(name, Region_id_region) VALUES ('España',6);
INSERT INTO Country(name, Region_id_region) VALUES ('Francia',6);
INSERT INTO Country(name, Region_id_region) VALUES ('Italia',6);
INSERT INTO Country(name, Region_id_region) VALUES ('Alemania',7);
INSERT INTO Country(name, Region_id_region) VALUES ('Croacia',7);
INSERT INTO Country(name, Region_id_region) VALUES ('Suiza',7);
INSERT INTO Country(name, Region_id_region) VALUES ('Portugal',8);
INSERT INTO Country(name, Region_id_region) VALUES ('Turquia',8);
INSERT INTO Country(name, Region_id_region) VALUES ('Eslovenia',8);
INSERT INTO Country(name, Region_id_region) VALUES ('Rusia Asiatica',9);
INSERT INTO Country(name, Region_id_region) VALUES ('Uzbekistán',10);
INSERT INTO Country(name, Region_id_region) VALUES ('Kazajistán',10);
INSERT INTO Country(name, Region_id_region) VALUES ('Israel',11);
INSERT INTO Country(name, Region_id_region) VALUES ('Irak',11);
INSERT INTO Country(name, Region_id_region) VALUES ('Japon',12);
INSERT INTO Country(name, Region_id_region) VALUES ('China',12);
INSERT INTO Country(name, Region_id_region) VALUES ('Marruecos',13);
INSERT INTO Country(name, Region_id_region) VALUES ('Tunez',13);
INSERT INTO Country(name, Region_id_region) VALUES ('Ghana',14);
INSERT INTO Country(name, Region_id_region) VALUES ('Nigeria',14);
INSERT INTO Country(name, Region_id_region) VALUES ('Uganda',15);
INSERT INTO Country(name, Region_id_region) VALUES ('Madagascar',15);

--       DESCUENTOS
INSERT INTO Discount(value, min_level, max_level) VALUES (0, 1, 1);
INSERT INTO Discount(value, min_level, max_level) VALUES (0.02, 2, 4);
INSERT INTO Discount(value, min_level, max_level) VALUES (0.05, 5, 6);
INSERT INTO Discount(value, min_level, max_level) VALUES (0.07, 7, 8);
INSERT INTO Discount(value, min_level, max_level) VALUES (0.10, 8, 10);

--          CUSTOMER
INSERT INTO Customer(code, name, address, phone) VALUES ('2021AA0','Rodolfo Garcia','Guatemala', '10001234');
INSERT INTO Customer(code, name, address, phone) VALUES ('2021AB1','Dinora Ramirez','Guatemala', '20002234');
INSERT INTO Customer(code, name, address, phone) VALUES ('2021AC2','Alba Graciela','Guatemala', '30003234');
INSERT INTO Customer(code, name, address, phone) VALUES ('2021AD3','Ramiro Perez','Guatemala', '40004234');
INSERT INTO Customer(code, name, address, phone) VALUES ('2021AE4','Esteban Godinez','Guatemala', '50005234');




INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante1', 150.35, 2, 1, 1, 1);
INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante2', 150.35, 2, 1, 2, 1);
INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante3', 150.35, 2, 1, 3, 1);
INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante4', 150.35, 2, 1, 4, 2);
INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante5', 150.35, 2, 1, 5, 2);
INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante6', 150.35, 2, 1, 6, 2);
INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante7', 150.35, 2, 1, 7, 2);
INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante8', 150.35, 2, 1, 8, 3);

INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante9', 150.35, 3, 1, 9, 3);
INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante10', 150.35, 3, 1, 10, 3);
INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante11', 150.35, 3, 1, 11, 4);
INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante12', 150.35, 3, 1, 12, 4);
INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante12', 150.35, 3, 1, 13, 4);

INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante14', 150.35, 4, 1, 14, 4);
INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante15', 150.35, 4, 1, 15, 5);
INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante16', 150.35, 4, 1, 18, 6);

INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante17', 150.35, 5, 1, 19, 6);
INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante18', 150.35, 5, 1, 20, 6);
INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante19', 150.35, 5, 1, 21, 7);

INSERT INTO Package(wight, high, width, long, description, total,Customer_id_customer, Discount_id_discount, Country_id_country, Region_id_region) VALUES (50.3, 13, 13, 15, 'cubo gigante20', 150.35, 1, 1, 22, 7);