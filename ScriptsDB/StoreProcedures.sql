-- Retorna la lista de descuentos: id_descuento, valor, minimo, maximo
CREATE OR ALTER PROCEDURE DISCOUNTS 
AS
BEGIN
	SELECT id_discount, value, min_level, max_level FROM Discount;
END;
EXECUTE DISCOUNTS;

-- Retorna la lista de paises: id_country, name
CREATE OR ALTER PROCEDURE COUNTRIES 
AS
BEGIN
	select id_country, name from Country;
END;
EXECUTE COUNTRIES;

-- Retorna la lista de regiones: id_region, name, tarifa
CREATE OR ALTER PROCEDURE REGIONS
AS
BEGIN
	select id_region, name, tarifa from Region;
END;
EXECUTE REGIONS;

-- Retorna la lista de clientes con su nivel de consumo: id_customer, codigo, name, phone, cantidad de envios
CREATE OR ALTER PROCEDURE CUSTOMERS 
AS
BEGIN
	SELECT P.Customer_id_Customer, C.code, C.name, C.phone, COUNT(P.Customer_id_Customer) AS consumo
	FROM Customer C, Package P
	WHERE P.Customer_id_customer = C.id_Customer
	GROUP BY P.Customer_id_customer, C.code, C.name, C.phone;
END;
EXECUTE CUSTOMERS;