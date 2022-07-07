SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


INSERT INTO `snaketype` (`iId`, `vName`, `dCreatedDate`, `vStatus`) VALUES
(1, 'venomous', '2022-06-05 14:45:42', '1'),
(2, 'non venomous', '2022-06-07 18:08:55', '1'),
(3, 'mildly venomous', '2022-06-07 18:06:31', '1');


ALTER TABLE `snaketype`
  ADD PRIMARY KEY (`iId`);


ALTER TABLE `snaketype`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;