CREATE TABLE `identification` (
  `iId` int(10) NOT NULL,
  `iUserId` int(10) NOT NULL,
  `vIdenImage` varchar(255) NOT NULL,
  `vComments` varchar(255) NOT NULL,
  `iLikes` int(10) NOT NULL,
  `iViews` int(10) NOT NULL,
  `dCreatedDate` datetime NOT NULL DEFAULT current_timestamp(),
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `algo`
  ADD PRIMARY KEY (`iId`);

ALTER TABLE `algo`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;  