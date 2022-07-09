SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


INSERT INTO `eyeshape` (`iId`, `vName`, `dCreatedDate`, `vStatus`) VALUES
(1, 'elliptical', '2022-06-05 14:17:43', '1'),
(2, 'horizontal', '2022-06-05 14:17:43', '1'),
(3, 'vertical', '2022-06-05 14:17:43', '1'),
(4, 'round', '2022-06-05 14:17:43', '1'),
(5, 'narrow vertical slits', '2022-06-05 14:17:43', '1'),
(6, 'bear round', '2022-06-05 14:17:43', '1'),
(7, 'invisible', '2022-06-05 14:17:43', '1'),
(8, 'large round', '2022-06-05 14:17:43', '1'),
(9, 'vertically elliptical', '2022-06-05 14:17:43', '1');


ALTER TABLE `eyeshape`
  ADD PRIMARY KEY (`iId`);


ALTER TABLE `eyeshape`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;