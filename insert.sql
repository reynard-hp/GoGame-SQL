-- Insert Data into Tables of GoGame

USE GoGame
GO

INSERT INTO MsCustomer VALUES 
('CU001', 'Alice Johnson', 'Female', '2002-07-16', '081123456789'),
('CU002', 'Bob Smith', 'Male', '1999-11-28', '081987654321'),
('CU003', 'Candra Kusuma', 'Male', '1992-12-13', '081234567890'),
('CU004', 'Rina Wijaya', 'Female', '2004-03-17', '081098765432'),
('CU005', 'Andi Susanto', 'Male', '2000-07-23', '081567890123'),
('CU006', 'Rika Hartati', 'Female', '1991-11-21', '081432109876'),
('CU007', 'Arif Rahman', 'Male', '1997-04-29', '081876543210'),
('CU008', 'Emma Davis', 'Female', '1995-04-15', '081345678901'),
('CU009', 'Michael Wilson', 'Male', '1989-12-26', '081654321098'),
('CU010', 'Ethan Wilson', 'Male', '2003-08-19', '081987654321');


INSERT INTO MsStaff VALUES
('ST001', 'Budi Haryanto', 'Male', '2001-03-15', 750000, '081890123456', 'Jalan Merdeka No.10'),
('ST002', 'Jane Smith', 'Female', '2000-09-28', 700000,'081210987654', 'Jalan Kemanggisan No.20'),
('ST003', 'Slamet Nugroho', 'Male', '1997-07-20', 500000,'081345678901', 'Jalan Ahmad Yani 3'),
('ST004', 'Rina Fitriani', 'Female', '1992-05-15', 550000,'083456789012', 'Jalan Ahmad Yani 18'),
('ST005', 'Emily Davis', 'Female', '2004-12-03', 650000,'081678901234', '321 Cedar Lane'),
('ST006', 'Daniel Wilson', 'Male', '1995-02-20', 875000,'4445556666', '987 Pine Avenue'),
('ST007', 'Linda Sari', 'Female', '2003-10-17', 900000,'087890123456', 'Jalan Imam Bonjol 22'),
('ST008', 'Michelle Brown', 'Female', '1995-04-15', 1100000,'6667778888', '543 Birch Lane'),
('ST009', 'Eko Prasetyo', 'Male', '2002-01-20', 1000000,'089012345678', 'Jalan Sudirman 9'),
('ST010', 'Hendro Kusumo', 'Male', '1999-12-23', 950000,'084567890123', 'Jalan Jambu 19');


INSERT INTO MsSupplier VALUES 
('SU001', 'GameWorld', '1234567890', '123 Main Street'),
('SU002', 'GamingXpert', '9876543210', '456 Elm Avenue'),
('SU003', 'Sejahtera', '085678901234', 'Jalan Buntu Drive 8'),
('SU004', 'Bersama Makmur', '082345678901', 'Jalan Harapan 12'),
('SU005', 'Damai Sentosa', '0890122446688', 'Jalan Kenari 20'),
('SU006', 'Cipta Jaya', '088765432109', 'Flamboyan Drive 5'),
('SU007', 'Utama Raya', '083456789012', 'Jalan Lestari 25'),
('SU008', 'Sentral Abadi', '081432109876', 'Raya Drive 2'),
('SU009', 'GameMaster', '2223334564', '876 Willow Avenue Drive'),
('SU010', 'PlayTime', '88899900210', '552 Pine Street');

INSERT INTO MsGameType VALUES
('GT001', 'RPG'),
('GT002', 'Sandbox'),
('GT003', 'TPS'),
('GT004', 'Adventure'),
('GT005', 'Sport'),
('GT006', 'MOBA'),
('GT007', 'Horror'),
('GT008', 'Fighting'),
('GT009', 'Simulation'),
('GT010', 'FPS');

INSERT INTO MsGame VALUES
('GA001', 'GT010', 'Call of Duty', 500000, '2021-10-15'),
('GA002', 'GT005', 'FIFA 22', 400000, '2021-09-29'),
('GA003', 'GT009', 'Stardew Valley', 175000, '2020-11-10'),
('GA004', 'GT002', 'Minecraft', 190000, '2011-11-18'),
('GA005', 'GT003', 'Grand Theft Auto V', 225000, '2013-09-17'),
('GA006', 'GT004', 'The Legend of Zelda: Breath of the Wild', 770000, '2017-03-03'),
('GA007', 'GT007', 'Insomnia', 675000, '2017-04-22'),
('GA008', 'GT001', 'Red Dead Redemption 2', 620000, '2018-10-26'),
('GA009', 'GT004', 'Cyberpunk 2077', 575000, '2020-12-10'),
('GA010', 'GT008', 'Tekken VII', 600000, '2018-06-15'),
('GA011', 'GT001', 'Halo Halo', 580000, '2017-12-08'),
('GA012', 'GT002', 'NBA 2K22', 500000, '2021-09-10'),
('GA013', 'GT001', 'The Witcher 3: Wild Hunt', 375000, '2015-05-19'),
('GA014', 'GT004', 'PlayerUnknown''s Battlegrounds', 210000, '2017-12-20'),
('GA015', 'GT006', 'DOTA 2 Premium', 230000, '2017-07-25');

-- Every Purchase are recorded in PurchaseHeader consisting of the Supplier Information (SUXXX), Staff that handled the purchase transaction (STXXX)
-- and the Date of the purchase
INSERT INTO PurchaseHeader VALUES 
('PU001', 'ST001', 'SU001', '2019-08-05'),
('PU002', 'ST002', 'SU002', '2019-10-07'),
('PU003', 'ST003', 'SU003', '2019-11-17'),
('PU004', 'ST004', 'SU004', '2020-01-20'),
('PU005', 'ST005', 'SU005', '2020-01-25'),
('PU006', 'ST006', 'SU006', '2020-02-01'),
('PU007', 'ST007', 'SU007', '2020-03-04'),
('PU008', 'ST008', 'SU008', '2020-07-27'),
('PU009', 'ST009', 'SU009', '2020-09-15'),
('PU010', 'ST010', 'SU010', '2021-01-23'),
('PU011', 'ST001', 'SU001', '2021-07-04'),
('PU012', 'ST002', 'SU002', '2021-10-11'),
('PU013', 'ST003', 'SU003', '2022-05-18'),
('PU014', 'ST004', 'SU004', '2022-08-27'),
('PU015', 'ST005', 'SU005', '2022-11-19');

-- Every PurchaseHeader (PUXXX) has PurchaseDetail that records every quantity of each game (GAXXX) that have been purchased
INSERT INTO PurchaseDetail VALUES 
('PU001', 'GA004', 3),
('PU001', 'GA005', 3),
('PU002', 'GA006', 4),
('PU002', 'GA007', 2),
('PU003', 'GA008', 4),
('PU003', 'GA010', 2),
('PU004', 'GA011', 2),
('PU004', 'GA013', 3),
('PU005', 'GA014', 4),
('PU005', 'GA015', 6),
('PU006', 'GA004', 2),
('PU006', 'GA005', 5),
('PU007', 'GA006', 2),
('PU007', 'GA007', 2),
('PU008', 'GA010', 2),
('PU008', 'GA011', 4),
('PU009', 'GA013', 2),
('PU009', 'GA014', 2),
('PU010', 'GA003', 6),
('PU010', 'GA009', 5),
('PU011', 'GA006', 3), 
('PU011', 'GA007', 4),
('PU012', 'GA002', 3), 
('PU012', 'GA012', 5),
('PU013', 'GA006', 6),
('PU013', 'GA013', 3),
('PU014', 'GA001', 5), 
('PU014', 'GA013', 2),
('PU015', 'GA001', 6),
('PU015', 'GA002', 4),
('PU001', 'GA015', 3),
('PU004', 'GA007', 2),
('PU007', 'GA004', 2),
('PU013', 'GA002', 1),
('PU014', 'GA002', 3);


-- Every Purchase are recorded in PurchaseHeader consisting of the Staff information that handled the purchase transaction (STXXX), customer information (CUXXX)
-- and the Date of the sales
INSERT INTO SalesHeader VALUES
('SA001', 'ST001', 'CU001', '2019-12-12'),
('SA002', 'ST002', 'CU002', '2020-03-01'),
('SA003', 'ST003', 'CU003', '2020-06-03'),
('SA004', 'ST004', 'CU004', '2020-10-04'),
('SA005', 'ST005', 'CU005', '2021-01-05'),
('SA006', 'ST006', 'CU006', '2021-03-16'),
('SA007', 'ST007', 'CU007', '2021-06-07'),
('SA008', 'ST008', 'CU008', '2022-02-28'),
('SA009', 'ST009', 'CU009', '2022-06-09'),
('SA010', 'ST010', 'CU010', '2022-08-29'),
('SA011', 'ST001', 'CU004', '2022-10-17'),
('SA012', 'ST002', 'CU006', '2022-11-22'),
('SA013', 'ST003', 'CU003', '2023-01-13'),
('SA014', 'ST004', 'CU001', '2023-02-14'),
('SA015', 'ST005', 'CU009', '2023-05-15');


-- Every SalesHeader (SAXXX) has SalesDetail that records the quantity of each game (GAXXX) that have been sold
INSERT INTO SalesDetail VALUES
('SA001', 'GA004', 2),
('SA001', 'GA005', 2),
('SA002', 'GA006', 2),
('SA002', 'GA007', 2),
('SA003', 'GA008', 1),
('SA003', 'GA010', 1),
('SA004', 'GA011', 2),
('SA004', 'GA013', 1),
('SA005', 'GA014', 2),
('SA005', 'GA015', 2),
('SA006', 'GA003', 2),
('SA006', 'GA009', 1),
('SA007', 'GA006', 2),
('SA007', 'GA009', 1),
('SA008', 'GA002', 2),
('SA008', 'GA012', 3),
('SA009', 'GA010', 1),
('SA009', 'GA011', 3),
('SA010', 'GA006', 6), 
('SA010', 'GA013', 3),
('SA011', 'GA006', 2),
('SA011', 'GA003', 3),
('SA012', 'GA002', 3), 
('SA012', 'GA009', 3),
('SA013', 'GA001', 4),
('SA013', 'GA011', 1),
('SA014', 'GA001', 1),
('SA014', 'GA005', 3),
('SA015', 'GA014', 2), 
('SA015', 'GA015', 3),
('SA007', 'GA007', 3), 
('SA009', 'GA002', 4), 
('SA010', 'GA004', 5), 
('SA013', 'GA008', 2), 
('SA015', 'GA012', 1);
