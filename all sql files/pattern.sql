SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


INSERT INTO `pattern` (`iId`, `vName`, `dCreatedDate`, `vStatus`) VALUES
(1, 'brown above a series of yellow spots', '2022-06-05 14:16:42', '1'),
(2, 'glossy scales colored reddish brown on dorsal', '2022-06-05 14:16:42', '1'),
(3, 'large A shaped rostral and distinct arrow head', '2022-06-05 14:16:42', '1'),
(4, 'dark brown and black dorsally with white crossbands', '2022-06-05 14:16:42', '1'),
(5, 'smooth scales and white unmarked belly', '2022-06-05 14:16:42', '1'),
(6, 'yellow lines margined by black dots run on the lateral side of the body', '2022-06-05 14:16:42', '1'),
(7, 'black cross hatching yellow or gold color accents', '2022-06-05 14:16:42', '1'),
(8, 'black and white scale marking', '2022-06-05 14:16:42', '1'),
(9, 'flattened body with a short oarlike tail', '2022-06-05 14:16:42', '1'),
(10, 'strips with different color patterns', '2022-06-05 14:16:42', '1'),
(11, 'light brown with a double row of darker brown patches along the back', '2022-06-05 14:16:42', '1'),
(12, 'triangular shaped head with heat sensing pit organs', '2022-06-05 14:16:42', '1'),
(13, 'tail is red or yellow in color', '2022-06-05 14:16:42', '1'),
(14, 'white crossbars', '2022-06-05 14:16:42', '1'),
(15, 'three series of dark brown spots on the body surrounded by black rings', '2022-06-05 14:16:42', '1'),
(16, 'whitish spots edged with dark brown', '2022-06-05 14:16:42', '1'),
(17, 'chevron pattern on back', '2022-06-05 14:16:42', '1'),
(18, 'body color is yellowish white', '2022-06-05 14:16:42', '1'),
(19, 'thin long body covered with smooth scales', '2022-06-05 14:16:42', '1'),
(20, 'checkered pattern all over the body in variation of green, yellow or black', '2022-06-05 14:16:42', '1'),
(21, 'patterns have highest contrast near the head', '2022-06-05 14:16:42', '1'),
(22, 'a keeled upper body with underside prominent dark bands', '2022-06-05 14:16:42', '1'),
(23, 'whitish or yellowish with blotched patterns', '2022-06-05 14:16:42', '1'),
(24, 'tail is thick and short and ends with a rounded tip', '2022-06-05 14:16:42', '1'),
(25, 'tail is tipped with a tiny pointed spur', '2022-06-05 14:16:42', '1'),
(26, 'head and tail are superficially similar', '2022-06-05 14:16:42', '1'),
(27, 'black spots throughout body with underneath color white', '2022-06-05 14:16:42', '1'),
(28, 'black and yellowish white zig zag markings on the body', '2022-06-05 14:16:42', '1'),
(29, 'cross lines found from head to tail', '2022-06-05 14:16:42', '1'),
(30, 'lighter zig zag patterns over the body', '2022-06-05 14:16:42', '1'),
(31, 'viper like body with keeled glossy scales', '2022-06-05 14:16:42', '1'),
(32, 'two yellow strips along the body', '2022-06-05 14:16:42', '1'),
(33, 'have smooth scales and yellowish or whitish belly', '2022-06-05 14:16:42', '1');


ALTER TABLE `pattern`
  ADD PRIMARY KEY (`iId`);


ALTER TABLE `pattern`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;