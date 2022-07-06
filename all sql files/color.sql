SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


INSERT INTO `color` (`iId`, `vName`, `dCreatedDate`, `vStatus`) VALUES
(1, 'yellowish brown', '2022-07-06 12:35:00', '1'),
(2, 'brown', '2022-07-06 12:35:00', '1'),
(3, 'green', '2022-07-06 12:35:00', '1'),
(4, 'yellowish white with dark patches', '2022-07-06 12:35:00', '1'),
(5, 'yellowish white without dark patches', '2022-07-06 12:35:00', '1'),
(6, 'greyish', '2022-07-06 12:35:00', '1'),
(7, 'reddish', '2022-07-06 12:35:00', '1'),
(8, 'olive', '2022-07-06 12:35:00', '1'),
(9, 'tan', '2022-07-06 12:35:00', '1'),
(10, 'pale brown', '2022-07-06 12:35:00', '1'),
(11, 'brown black white crossbars', '2022-07-06 12:35:00', '1'),
(12, 'black with blue rings', '2022-07-06 12:35:00', '1'),
(13, 'olive brown', '2022-07-06 12:35:00', '1'),
(14, 'black with grey rings', '2022-07-06 12:35:00', '1'),
(15, 'silver grey', '2022-07-06 12:35:00', '1'),
(16, 'whitish brown', '2022-07-06 12:35:00', '1'),
(17, 'black', '2022-07-06 12:35:00', '1'),
(18, 'yellow', '2022-07-06 12:35:00', '1'),
(19, 'brown mixed with reddish', '2022-07-06 12:35:00', '1'),
(20, 'dark brown', '2022-07-06 12:35:00', '1'),
(21, 'light brown', '2022-07-06 12:35:00', '1'),
(22, 'pale green', '2022-07-06 12:35:00', '1'),
(23, 'yellowish mixed with reddish', '2022-07-06 12:35:00', '1'),
(24, 'char coal grey', '2022-07-06 12:35:00', '1'),
(25, 'greyish brown', '2022-07-06 12:35:00', '1'),
(26, 'light yellow', '2022-07-06 12:35:00', '1'),
(27, 'black with white rings', '2022-07-06 12:35:00', '1'),
(28, 'greyish black', '2022-07-06 12:35:00', '1'),
(29, 'greyish green', '2022-07-06 12:35:00', '1'),
(30, 'pale buff', '2022-07-06 12:35:00', '1'),
(31, 'purplish', '2022-07-06 12:35:00', '1'),
(32, 'pink', '2022-07-06 12:35:00', '1'),
(33, 'bluish black', '2022-07-06 12:35:00', '1'),
(34, 'whitish', '2022-07-06 12:35:00', '1'),
(35, 'olive green', '2022-07-06 12:35:00', '1'),
(36, 'yellowish green', '2022-07-06 12:35:00', '1'),
(37, 'bronze', '2022-07-06 12:35:00', '1'),
(38, 'pale brown', '2022-07-06 12:35:00', '1'),
(39, 'orange', '2022-07-06 12:35:00', '1'),
(40, 'copper', '2022-07-06 12:35:00', '1'),
(41, 'jet black', '2022-07-06 12:35:00', '1'),
(42, 'reddish brown', '2022-07-06 12:35:00', '1'),
(43, 'dark grey', '2022-07-06 12:35:00', '1'),
(44, 'bright green', '2022-07-06 12:35:00', '1'),
(45, 'purplish brown', '2022-07-06 12:35:00', '1'),
(46, 'warm red', '2022-07-06 12:35:00', '1'),
(47, 'reddish orange', '2022-07-06 12:35:00', '1'),
(48, 'pale yellow', '2022-07-06 12:35:00', '1');


ALTER TABLE `color`
  ADD PRIMARY KEY (`iId`);


ALTER TABLE `color`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
