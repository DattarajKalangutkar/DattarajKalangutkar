SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


INSERT INTO `headshape` (`iId`, `vName`, `dCreatedDate`, `vStatus`) VALUES
(1, 'triangular spade shaped', '2022-06-05 14:17:43', '1'),
(2, 'head is same size as body', '2022-06-05 14:17:43', '1'),
(3, 'roughly wedged shape head broad and flattened', '2022-06-05 14:17:43', '1'),
(4, 'a wide head the snout is pointed and turned upwards ending in a hump', '2022-06-05 14:17:43', '1'),
(5, 'pear shaped', '2022-06-05 14:17:43', '1'),
(6, 'triangular', '2022-06-05 14:17:43', '1'),
(7, 'broad', '2022-06-05 14:17:43', '1'),
(8, 'flattened', '2022-06-05 14:17:43', '1'),
(9, 'flattened and triangular', '2022-06-05 14:17:43', '1'),
(10, 'arrow shaped marking present on the top of the head', '2022-06-05 14:17:43', '1'),
(11, 'head larger than neck', '2022-06-05 14:17:43', '1'),
(12, 'somewhat elongated', '2022-06-05 14:17:43', '1'),
(13, 'pointed and slightly broader than their neck', '2022-06-05 14:17:43', '1'),
(14, 'triangular and wide', '2022-06-05 14:17:43', '1'),
(15, 'trianguar and curve', '2022-06-05 14:17:43', '1'),
(16, 'curved', '2022-06-05 14:17:43', '1'),
(17, 'small head', '2022-06-05 14:17:43', '1'),
(18, 'small thin and shiny head', '2022-06-05 14:17:43', '1'),
(19, 'narrow head and pointed snout', '2022-06-05 14:17:43', '1'),
(20, 'supralabial', '2022-06-05 14:17:43', '1'),
(21, 'sharply triangular', '2022-06-05 14:17:43', '1'),
(22, 'flattened and elongated', '2022-06-05 14:17:43', '1'),
(23, 'flattened pear shaped', '2022-06-05 14:17:43', '1'),
(24, 'flattened and broader', '2022-06-05 14:17:43', '1'),
(25, 'large A shaped rostral', '2022-06-05 14:17:43', '1');


ALTER TABLE `headshape`
  ADD PRIMARY KEY (`iId`);


ALTER TABLE `headshape`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;