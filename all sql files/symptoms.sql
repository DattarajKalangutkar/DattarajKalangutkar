SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


INSERT INTO `symptoms` (`iId`, `vName`, `dCreatedDate`, `vStatus`) VALUES
(1, 'feeling sleepy', '2022-06-05 14:30:42', '1'),
(2, 'lower back pain', '2022-06-05 14:30:42', '1'),
(3, 'internal bleeding', '2022-06-05 14:30:42', '1'),
(4, 'abdominal pain', '2022-06-05 14:30:42', '1'),
(5, 'bleeding from distant sites', '2022-06-05 14:30:42', '1'),
(6, 'respiratory paralysis', '2022-06-05 14:30:42', '1'),
(7, 'diarrhea', '2022-06-05 14:30:42', '1'),
(8, 'paralysis', '2022-06-05 14:30:42', '1'),
(9, 'muscle twitching', '2022-06-05 14:30:42', '1'),
(10, 'double vision', '2022-06-05 14:30:42', '1'),
(11, 'abnormal sensations', '2022-06-05 14:30:42', '1'),
(12, 'headache', '2022-06-05 14:30:42', '1'),
(13, 'severe pain', '2022-06-05 14:30:42', '1'),
(14, 'breathing problem', '2022-06-05 14:30:42', '1'),
(15, 'kidney failure', '2022-06-05 14:30:42', '1'),
(16, 'prolonged bleeding', '2022-06-05 14:30:42', '1'),
(17, 'facial paralysis', '2022-06-05 14:30:42', '1'),
(18, 'dizziness', '2022-06-05 14:30:42', '1'),
(19, 'coma', '2022-06-05 14:30:42', '1'),
(20, 'redness', '2022-06-05 14:30:42', '1'),
(21, 'speech problem', '2022-06-05 14:30:42', '1'),
(22, 'swelling', '2022-06-05 14:30:42', '1'),
(23, 'sign of shock', '2022-06-05 14:30:42', '1'),
(24, 'sudden loss of consciousness', '2022-06-05 14:30:42', '1'),
(25, 'vomiting', '2022-06-05 14:30:42', '1'),
(26, 'blood clothing', '2022-06-05 14:30:42', '1'),
(27, 'blurred vision', '2022-06-05 14:30:42', '1'),
(28, 'change in heart rate', '2022-06-05 14:30:42', '1'),
(29, 'swelling in lymph nodes near the bite', '2022-06-05 14:30:42', '1'),
(30, 'immediate pain with rapid swelling', '2022-06-05 14:30:42', '1'),
(31, 'altered mental status', '2022-06-05 14:30:42', '1'),
(32, 'weakness', '2022-06-05 14:30:42', '1'),
(33, 'joint aches', '2022-06-05 14:30:42', '1'),
(34, 'legs paralysis', '2022-06-05 14:30:42', '1'),
(35, 'numbness', '2022-06-05 14:30:42', '1'),
(36, 'bruising', '2022-06-05 14:30:42', '1'),
(37, 'no bite', '2022-06-05 14:30:42', '1'),
(38, 'itching', '2022-06-05 14:30:42', '1'),
(39, 'paresthesia', '2022-06-05 14:30:42', '1'),
(40, 'blood in urine', '2022-06-05 14:30:42', '1'),
(41, 'minor pain', '2022-06-05 14:30:42', '1'),
(42, 'nausea', '2022-06-05 14:30:42', '1'),
(43, 'no symptoms', '2022-06-05 14:30:42', '1'),
(44, 'several teeth marks in curved shape', '2022-06-05 14:30:42', '1'),
(45, 'sustain a severe hand injury', '2022-06-05 14:30:42', '1'),
(46, 'increased salivation and sweating', '2022-06-05 14:30:42', '1');


ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`iId`);


ALTER TABLE `symptoms`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;