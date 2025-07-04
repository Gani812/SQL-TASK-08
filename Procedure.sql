#Use Existing DB
USE RentalDB;


#Get all properties along with the owner's name and rent in a given city (Stored Procedure)
DELIMITER $$
CREATE PROCEDURE GetPropertiesByCity(IN cityName VARCHAR(100))
BEGIN
SELECT p.PropertyID, p.Title, o.Name AS OwnerName, p.RentAmount
FROM Properties pJOIN Owners o ON p.OwnerID = o.OwnerID 
JOIN Locations l ON p.LocationID = l.LocationID
WHERE l.City = cityName;
END $$
DELIMITER ;

#To call It
CALL GetPropertiesByCity('Bengaluru');


#Calculate the total rent collected for a given OwnerID
DELIMITER $$
CREATE FUNCTION GetTotalRentByOwner(ownerId INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
DECLARE totalRent DECIMAL(10,2);
SELECT SUM(p.RentAmount) INTO totalRent
FROM Properties p
JOIN Bookings b ON p.PropertyID = b.PropertyID
WHERE p.OwnerID = ownerId;
RETURN IFNULL(totalRent, 0.00);
END $$
DELIMITER ;

#To Use It
SELECT GetTotalRentByOwner(1);
