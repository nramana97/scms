

--
create database scms;
use 'scms';
--



CREATE TABLE `COMPLAINTS` (
  `CID` int(11) NOT NULL,
  `DESCRIPTION` varchar(200) NOT NULL,
  `CTYPE` varchar(100) DEFAULT NULL,
  `RAISED_ID` varchar(8) DEFAULT NULL,
  `RAISED_ON` timestamp NULL DEFAULT NULL,
  `RESPONSE_STATUS` varchar(5) DEFAULT 'FALSE',
  `REPORT_STATUS` varchar(5) DEFAULT 'FALSE',
  `CONFIRMATION_STATUS` varchar(5) DEFAULT 'FALSE',
  `SOLVED_ON` timestamp NULL DEFAULT NULL,
  `SOLVED_BY` varchar(20) DEFAULT NULL
)  ;


INSERT INTO `COMPLAINTS` (`CID`, `DESCRIPTION`, `CTYPE`, `RAISED_ID`, `RAISED_ON`, `RESPONSE_STATUS`, `REPORT_STATUS`, `CONFIRMATION_STATUS`, `SOLVED_ON`, `SOLVED_BY`) VALUES
(1, 'ONE\n', 'Electricity', 'O190001', '2023-11-02 21:17:15', 'TRUE', 'FALSE', 'TRUE', '2023-11-02 15:54:21', 'W101'),
(2, 'TWO\n', 'Electricity', 'O190001', '2023-11-02 21:17:23', 'TRUE', 'FALSE', 'TRUE', '2023-11-03 11:46:27', 'W101'),
(3, 'THREE\n', 'Cleaning', 'O190001', '2023-11-02 21:17:30', 'TRUE', 'FALSE', 'TRUE', '2023-11-02 15:55:24', 'W101'),
(4, 'FOUR\n', 'Security', 'O190001', '2023-11-02 21:17:38', 'TRUE', 'FALSE', 'TRUE', '2023-11-03 11:46:53', 'W101'),
(5, 'FIVE', 'Security', 'O190001', '2023-11-02 21:17:44', 'TRUE', 'FALSE', 'TRUE', '2023-11-02 15:54:34', 'W101'),
(6, 'kirans complaint', 'Electricity', 'O190001', '2023-11-02 21:32:16', 'TRUE', 'FALSE', 'TRUE', '2023-11-03 11:46:49', 'W101'),
(7, 'This is a new complaint', 'Cleaning', 'O190001', '2023-11-03 14:13:28', 'TRUE', 'FALSE', 'TRUE', '2023-11-03 11:46:15', 'W101'),
(8, 'This is another complaint', 'Plumbing', 'O190001', '2023-11-03 14:29:03', 'TRUE', 'FALSE', 'TRUE', '2023-11-03 11:46:10', 'W101'),
(9, 'harrasment in college by seniors\n', 'Plumbing', 'O190001', '2023-11-03 21:55:30', 'TRUE', 'FALSE', 'FALSE', '2023-11-03 16:32:38', 'W101'),
(10, 'Hello harasment in college by assis siyadri', 'Cleaning', 'O190001', '2023-11-03 21:57:57', 'TRUE', 'FALSE', 'FALSE', '2023-11-03 16:32:32', 'W101'),
(12, 'Hello this is new complaint', 'Plumbing', 'O190001', '2023-11-03 22:11:38', 'TRUE', 'FALSE', 'FALSE', '2023-11-03 16:43:52', 'W101'),
(13, 'KIran is being harassed by aasis siyadri', 'Electricity', 'O190001', '2023-11-03 22:12:05', 'TRUE', 'FALSE', 'FALSE', '2023-11-03 16:42:55', 'W101'),
(14, 'Hello ramana', 'Plumbing', 'O190002', '2023-11-04 11:13:22', 'TRUE', 'FALSE', 'TRUE', '2023-11-04 05:45:25', 'W101'),
(15, 'This si security error', 'Security', 'O190002', '2023-11-04 11:13:43', 'TRUE', 'FALSE', 'TRUE', '2023-11-04 05:45:28', 'W101'),
(16, 'Helo', 'Plumbing', 'O190003', '2023-11-04 11:24:45', 'TRUE', 'FALSE', 'TRUE', '2023-11-04 05:57:47', 'W102'),
(17, 'Hello, complaint of the day', 'Cleaning', 'O190001', '2023-11-08 10:03:11', 'FALSE', 'FALSE', 'FALSE', NULL, NULL),
(18, 'Hello this is second complaint', 'Cleaning', 'O190001', '2023-11-08 10:03:37', 'FALSE', 'FALSE', 'FALSE', NULL, NULL);



CREATE TABLE `student_details` (
  `SID` varchar(8) NOT NULL,
  `SNAME` varchar(80) NOT NULL,
  `DORM` varchar(5) NOT NULL,
  `BRANCH` varchar(5) NOT NULL,
  `SPHONE` bigint(20) DEFAULT NULL
)  ;


INSERT INTO `student_details` (`SID`, `SNAME`, `DORM`, `BRANCH`, `SPHONE`) VALUES
('O190001', 'Ramana', 'D-202', 'CSE', 9876543210),
('O190002', 'jyothi', 'I-102', 'ECE', 9381554040),
('O190003', 'Rajeswari', 'D-103', 'EEE', 9898989898),
('O190004', 'Student 4', 'I-104', 'ME', NULL),
('O190005', 'Student 5', 'I-201', 'CE', NULL),
('O190006', 'Student 6', 'I-202', 'CSE', NULL),
('O190007', 'Student 7', 'I-203', 'ECE', NULL),
('O190008', 'Student 8', 'I-204', 'EEE', NULL),
('O190009', 'Student 9', 'I-301', 'ME', NULL),
('O190010', 'Student 10', 'I-302', 'CE', NULL),
('O190011', 'Student 11', 'I-303', 'CSE', NULL),
('O190012', 'Student 12', 'I-304', 'ECE', NULL),
('O190013', 'Student 13', 'I-401', 'EEE', NULL),
('O190014', 'Student 14', 'I-402', 'ME', NULL),
('O190015', 'Student 15', 'I-403', 'CE', NULL),
('O190016', 'Student 16', 'I-404', 'CSE', NULL),
('O190017', 'Student 17', 'I-101', 'ECE', NULL),
('O190018', 'Student 18', 'I-102', 'EEE', NULL),
('O190019', 'Student 19', 'I-103', 'ME', NULL),
('O190020', 'Student 20', 'I-104', 'CE', NULL),
('O190021', 'Student 21', 'I-201', 'CSE', NULL),
('O190022', 'Student 22', 'I-202', 'ECE', NULL),
('O190023', 'Student 23', 'I-203', 'EEE', NULL),
('O190024', 'Student 24', 'I-204', 'ME', NULL),
('O190025', 'Student 25', 'I-301', 'CE', NULL),
('O190026', 'Student 26', 'I-302', 'CSE', NULL),
('O190027', 'Student 27', 'I-303', 'ECE', NULL),
('O190028', 'Student 28', 'I-304', 'EEE', NULL),
('O190029', 'Student 29', 'I-401', 'ME', NULL),
('O190030', 'Student 30', 'I-402', 'CE', NULL),
('O190031', 'Student 31', 'I-403', 'CSE', NULL),
('O190032', 'Student 32', 'I-404', 'ECE', NULL),
('O190033', 'Student 33', 'I-101', 'EEE', NULL),
('O190034', 'Student 34', 'I-102', 'ME', NULL),
('O190035', 'Student 35', 'I-103', 'CE', NULL),
('O190036', 'Student 36', 'I-104', 'CSE', NULL),
('O190037', 'Student 37', 'I-201', 'ECE', NULL),
('O190038', 'Student 38', 'I-202', 'EEE', NULL),
('O190039', 'Student 39', 'I-203', 'ME', NULL),
('O190040', 'Student 40', 'I-204', 'CE', NULL),
('O190041', 'Student 41', 'I-301', 'CSE', NULL),
('O190042', 'Student 42', 'I-302', 'ECE', NULL),
('O190043', 'Student 43', 'I-303', 'EEE', NULL),
('O190044', 'Student 44', 'I-304', 'ME', NULL),
('O190045', 'Student 45', 'I-401', 'CE', NULL),
('O190046', 'Student 46', 'I-402', 'CSE', NULL),
('O190047', 'Student 47', 'I-403', 'ECE', NULL),
('O190048', 'Student 48', 'I-404', 'EEE', NULL),
('O190049', 'Student 49', 'I-101', 'ME', NULL),
('O190050', 'Student 50', 'I-102', 'CE', NULL),
('O190051', 'Student 51', 'I-103', 'CSE', NULL),
('O190052', 'Student 52', 'I-104', 'ECE', NULL),
('O190053', 'Student 53', 'I-201', 'EEE', NULL),
('O190054', 'Student 54', 'I-202', 'ME', NULL),
('O190055', 'Student 55', 'I-203', 'CE', NULL),
('O190056', 'Student 56', 'I-204', 'CSE', NULL),
('O190057', 'Student 57', 'I-301', 'ECE', NULL),
('O190058', 'Student 58', 'I-302', 'EEE', NULL),
('O190059', 'Student 59', 'I-303', 'ME', NULL),
('O190060', 'Student 60', 'I-304', 'CE', NULL),
('O190061', 'Student 61', 'I-401', 'CSE', NULL),
('O190062', 'Student 62', 'I-402', 'ECE', NULL),
('O190063', 'Student 63', 'I-403', 'EEE', NULL),
('O190064', 'Student 64', 'I-404', 'ME', NULL),
('O190065', 'Student 65', 'I-101', 'CE', NULL),
('O190066', 'Student 66', 'I-102', 'CSE', NULL),
('O190067', 'Student 67', 'I-103', 'ECE', NULL),
('O190068', 'Student 68', 'I-104', 'EEE', NULL),
('O190069', 'Student 69', 'I-201', 'ME', NULL),
('O190070', 'Student 70', 'I-202', 'CE', NULL),
('O190071', 'Student 71', 'I-203', 'CSE', NULL),
('O190072', 'Student 72', 'I-204', 'ECE', NULL),
('O190073', 'Student 73', 'I-301', 'EEE', NULL),
('O190074', 'Student 74', 'I-302', 'ME', NULL),
('O190075', 'Student 75', 'I-303', 'CE', NULL),
('O190076', 'Student 76', 'I-304', 'CSE', NULL),
('O190077', 'Student 77', 'I-401', 'ECE', NULL),
('O190078', 'Student 78', 'I-402', 'EEE', NULL),
('O190079', 'Student 79', 'I-403', 'ME', NULL),
('O190080', 'Student 80', 'I-404', 'CE', NULL),
('O190081', 'Student 81', 'I-101', 'CSE', NULL),
('O190082', 'Student 82', 'I-102', 'ECE', NULL),
('O190083', 'Student 83', 'I-103', 'EEE', NULL),
('O190084', 'Student 84', 'I-104', 'ME', NULL),
('O190085', 'Student 85', 'I-201', 'CE', NULL),
('O190086', 'Student 86', 'I-202', 'CSE', NULL),
('O190087', 'Student 87', 'I-203', 'ECE', NULL),
('O190088', 'Student 88', 'I-204', 'EEE', NULL),
('O190089', 'Student 89', 'I-301', 'ME', NULL),
('O190090', 'Student 90', 'I-302', 'CE', NULL),
('O190091', 'Student 91', 'I-303', 'CSE', NULL),
('O190092', 'Student 92', 'I-304', 'ECE', NULL),
('O190093', 'Student 93', 'I-401', 'EEE', NULL),
('O190094', 'Student 94', 'I-402', 'ME', NULL),
('O190095', 'Student 95', 'I-403', 'CE', NULL),
('O190096', 'Student 96', 'I-404', 'CSE', NULL),
('O190097', 'Student 97', 'I-101', 'ECE', NULL),
('O190098', 'Student 98', 'I-102', 'EEE', NULL),
('O190099', 'Student 99', 'I-103', 'ME', NULL),
('O190100', 'Student 100', 'I-104', 'CE', NULL);



CREATE TABLE `student_login` (
  `student_ID` varchar(7) NOT NULL,
  `student_email` varchar(25) NOT NULL,
  `student_password` varchar(20) NOT NULL DEFAULT 'rgukt123'
)  ;


INSERT INTO `student_login` (`student_ID`, `student_email`, `student_password`) VALUES
('O190001', 'O190001@RGUKTONG.AC.IN', 'O190001rgukt123'),
('O190002', 'O190002@RGUKTONG.AC.IN', 'O190002rgukt123'),
('O190003', 'O190003@RGUKTONG.AC.IN', 'O190003rgukt123'),
('O190004', 'O190004@RGUKTONG.AC.IN', 'O190004rgukt123'),
('O190005', 'O190005@RGUKTONG.AC.IN', 'O190005rgukt123'),
('O190006', 'O190006@RGUKTONG.AC.IN', 'O190006rgukt123'),
('O190007', 'O190007@RGUKTONG.AC.IN', 'O190007rgukt123'),
('O190008', 'O190008@RGUKTONG.AC.IN', 'O190008rgukt123'),
('O190009', 'O190009@RGUKTONG.AC.IN', 'O190009rgukt123'),
('O190010', 'O190010@RGUKTONG.AC.IN', 'O190010rgukt123'),
('O190011', 'O190011@RGUKTONG.AC.IN', 'O190011rgukt123'),
('O190012', 'O190012@RGUKTONG.AC.IN', 'O190012rgukt123'),
('O190013', 'O190013@RGUKTONG.AC.IN', 'O190013rgukt123'),
('O190014', 'O190014@RGUKTONG.AC.IN', 'O190014rgukt123'),
('O190015', 'O190015@RGUKTONG.AC.IN', 'O190015rgukt123'),
('O190016', 'O190016@RGUKTONG.AC.IN', 'O190016rgukt123'),
('O190017', 'O190017@RGUKTONG.AC.IN', 'O190017rgukt123'),
('O190018', 'O190018@RGUKTONG.AC.IN', 'O190018rgukt123'),
('O190019', 'O190019@RGUKTONG.AC.IN', 'O190019rgukt123'),
('O190020', 'O190020@RGUKTONG.AC.IN', 'O190020rgukt123'),
('O190021', 'O190021@RGUKTONG.AC.IN', 'O190021rgukt123'),
('O190022', 'O190022@RGUKTONG.AC.IN', 'O190022rgukt123'),
('O190023', 'O190023@RGUKTONG.AC.IN', 'O190023rgukt123'),
('O190024', 'O190024@RGUKTONG.AC.IN', 'O190024rgukt123'),
('O190025', 'O190025@RGUKTONG.AC.IN', 'O190025rgukt123'),
('O190026', 'O190026@RGUKTONG.AC.IN', 'O190026rgukt123'),
('O190027', 'O190027@RGUKTONG.AC.IN', 'O190027rgukt123'),
('O190028', 'O190028@RGUKTONG.AC.IN', 'O190028rgukt123'),
('O190029', 'O190029@RGUKTONG.AC.IN', 'O190029rgukt123'),
('O190030', 'O190030@RGUKTONG.AC.IN', 'O190030rgukt123'),
('O190031', 'O190031@RGUKTONG.AC.IN', 'O190031rgukt123'),
('O190032', 'O190032@RGUKTONG.AC.IN', 'O190032rgukt123'),
('O190033', 'O190033@RGUKTONG.AC.IN', 'O190033rgukt123'),
('O190034', 'O190034@RGUKTONG.AC.IN', 'O190034rgukt123'),
('O190035', 'O190035@RGUKTONG.AC.IN', 'O190035rgukt123'),
('O190036', 'O190036@RGUKTONG.AC.IN', 'O190036rgukt123'),
('O190037', 'O190037@RGUKTONG.AC.IN', 'O190037rgukt123'),
('O190038', 'O190038@RGUKTONG.AC.IN', 'O190038rgukt123'),
('O190039', 'O190039@RGUKTONG.AC.IN', 'O190039rgukt123'),
('O190040', 'O190040@RGUKTONG.AC.IN', 'O190040rgukt123'),
('O190041', 'O190041@RGUKTONG.AC.IN', 'O190041rgukt123'),
('O190042', 'O190042@RGUKTONG.AC.IN', 'O190042rgukt123'),
('O190043', 'O190043@RGUKTONG.AC.IN', 'O190043rgukt123'),
('O190044', 'O190044@RGUKTONG.AC.IN', 'O190044rgukt123'),
('O190045', 'O190045@RGUKTONG.AC.IN', 'O190045rgukt123'),
('O190046', 'O190046@RGUKTONG.AC.IN', 'O190046rgukt123'),
('O190047', 'O190047@RGUKTONG.AC.IN', 'O190047rgukt123'),
('O190048', 'O190048@RGUKTONG.AC.IN', 'O190048rgukt123'),
('O190049', 'O190049@RGUKTONG.AC.IN', 'O190049rgukt123'),
('O190050', 'O190050@RGUKTONG.AC.IN', 'O190050rgukt123'),
('O190051', 'O190051@RGUKTONG.AC.IN', 'O190051rgukt123'),
('O190052', 'O190052@RGUKTONG.AC.IN', 'O190052rgukt123'),
('O190053', 'O190053@RGUKTONG.AC.IN', 'O190053rgukt123'),
('O190054', 'O190054@RGUKTONG.AC.IN', 'O190054rgukt123'),
('O190055', 'O190055@RGUKTONG.AC.IN', 'O190055rgukt123'),
('O190056', 'O190056@RGUKTONG.AC.IN', 'O190056rgukt123'),
('O190057', 'O190057@RGUKTONG.AC.IN', 'O190057rgukt123'),
('O190058', 'O190058@RGUKTONG.AC.IN', 'O190058rgukt123'),
('O190059', 'O190059@RGUKTONG.AC.IN', 'O190059rgukt123'),
('O190060', 'O190060@RGUKTONG.AC.IN', 'O190060rgukt123'),
('O190061', 'O190061@RGUKTONG.AC.IN', 'O190061rgukt123'),
('O190062', 'O190062@RGUKTONG.AC.IN', 'O190062rgukt123'),
('O190063', 'O190063@RGUKTONG.AC.IN', 'O190063rgukt123'),
('O190064', 'O190064@RGUKTONG.AC.IN', 'O190064rgukt123'),
('O190065', 'O190065@RGUKTONG.AC.IN', 'O190065rgukt123'),
('O190066', 'O190066@RGUKTONG.AC.IN', 'O190066rgukt123'),
('O190067', 'O190067@RGUKTONG.AC.IN', 'O190067rgukt123'),
('O190068', 'O190068@RGUKTONG.AC.IN', 'O190068rgukt123'),
('O190069', 'O190069@RGUKTONG.AC.IN', 'O190069rgukt123'),
('O190070', 'O190070@RGUKTONG.AC.IN', 'O190070rgukt123'),
('O190071', 'O190071@RGUKTONG.AC.IN', 'O190071rgukt123'),
('O190072', 'O190072@RGUKTONG.AC.IN', 'O190072rgukt123'),
('O190073', 'O190073@RGUKTONG.AC.IN', 'O190073rgukt123'),
('O190074', 'O190074@RGUKTONG.AC.IN', 'O190074rgukt123'),
('O190075', 'O190075@RGUKTONG.AC.IN', 'O190075rgukt123'),
('O190076', 'O190076@RGUKTONG.AC.IN', 'O190076rgukt123'),
('O190077', 'O190077@RGUKTONG.AC.IN', 'O190077rgukt123'),
('O190078', 'O190078@RGUKTONG.AC.IN', 'O190078rgukt123'),
('O190079', 'O190079@RGUKTONG.AC.IN', 'O190079rgukt123'),
('O190080', 'O190080@RGUKTONG.AC.IN', 'O190080rgukt123'),
('O190081', 'O190081@RGUKTONG.AC.IN', 'O190081rgukt123'),
('O190082', 'O190082@RGUKTONG.AC.IN', 'O190082rgukt123'),
('O190083', 'O190083@RGUKTONG.AC.IN', 'O190083rgukt123'),
('O190084', 'O190084@RGUKTONG.AC.IN', 'O190084rgukt123'),
('O190085', 'O190085@RGUKTONG.AC.IN', 'O190085rgukt123'),
('O190086', 'O190086@RGUKTONG.AC.IN', 'O190086rgukt123'),
('O190087', 'O190087@RGUKTONG.AC.IN', 'O190087rgukt123'),
('O190088', 'O190088@RGUKTONG.AC.IN', 'O190088rgukt123'),
('O190089', 'O190089@RGUKTONG.AC.IN', 'O190089rgukt123'),
('O190090', 'O190090@RGUKTONG.AC.IN', 'O190090rgukt123'),
('O190091', 'O190091@RGUKTONG.AC.IN', 'O190091rgukt123'),
('O190092', 'O190092@RGUKTONG.AC.IN', 'O190092rgukt123'),
('O190093', 'O190093@RGUKTONG.AC.IN', 'O190093rgukt123'),
('O190094', 'O190094@RGUKTONG.AC.IN', 'O190094rgukt123'),
('O190095', 'O190095@RGUKTONG.AC.IN', 'O190095rgukt123'),
('O190096', 'O190096@RGUKTONG.AC.IN', 'O190096rgukt123'),
('O190097', 'O190097@RGUKTONG.AC.IN', 'O190097rgukt123'),
('O190098', 'O190098@RGUKTONG.AC.IN', 'O190098rgukt123'),
('O190099', 'O190099@RGUKTONG.AC.IN', 'O190099rgukt123'),
('O190100', 'O190100@RGUKTONG.AC.IN', 'O190100rgukt123');



CREATE TABLE `warden_details` (
  `WID` varchar(8) NOT NULL,
  `WNAME` varchar(60) NOT NULL,
  `WPHONE` bigint(10) NOT NULL,
  `WSHIFT` varchar(10) NOT NULL
)  ;


INSERT INTO `warden_details` (`WID`, `WNAME`, `WPHONE`, `WSHIFT`) VALUES
('W101', 'ASSIS  RUTH SIYADRI ', 9381554040, 'night'),
('W102', 'alice', 6987654321, 'Evening'),
('W103', 'Robert Brown', 7555123456, 'Night'),
('W104', 'Sarah Davis', 7778889999, 'Morning'),
('W105', 'Michael Wilson', 6333222111, 'Evening'),
('W106', 'Jennifer Taylor', 7444555666, 'Night'),
('W107', 'David Martinez', 6111222333, 'Morning'),
('W108', 'Linda Anderson', 6667778888, 'Evening'),
('W109', 'William White', 6222333444, 'Night'),
('W110', 'Emily Harris', 6888999000, 'Morning');



CREATE TABLE `warden_login` (
  `WID` varchar(10) NOT NULL,
  `WMAIL` varchar(50) NOT NULL,
  `WPASS` varchar(100) NOT NULL
)  ;


INSERT INTO `warden_login` (`WID`, `WMAIL`, `WPASS`) VALUES
('W101', 'W101@rguktong.ac.in', 'RandomPassword1'),
('W102', 'W102@rguktong.ac.in', 'RandomPassword2'),
('W103', 'W103@rguktong.ac.in', 'RandomPassword3'),
('W104', 'W104@rguktong.ac.in', 'RandomPassword4'),
('W105', 'W105@rguktong.ac.in', 'RandomPassword5'),
('W106', 'W106@rguktong.ac.in', 'RandomPassword6'),
('W107', 'W107@rguktong.ac.in', 'RandomPassword7'),
('W108', 'W108@rguktong.ac.in', 'RandomPassword8'),
('W109', 'W109@rguktong.ac.in', 'RandomPassword9'),
('W110', 'W110@rguktong.ac.in', 'RandomPassword10');



CREATE TABLE `welfare_details` (
  `WFID` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `WFNAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `WFPHONE` bigint(10) NOT NULL
)  ;


INSERT INTO `welfare_details` (`WFID`, `WFNAME`, `WFPHONE`) VALUES
('WF101', 'John Smith', 6123456789),
('WF102', 'Alice Johnson', 6987654321),
('WF103', 'Robert Brown', 7555123456),
('WF104', 'Sarah Davis', 7778889999),
('WF105', 'Michael Wilson', 6333222111),
('WF106', 'Jennifer Taylor', 7444555666),
('WF107', 'David Martinez', 6111222333),
('WF108', 'Linda Anderson', 6667778888),
('WF109', 'William White', 6222333444),
('WF110', 'Emily Harris', 6888999000);



CREATE TABLE `welfare_login` (
  `WID` varchar(10) NOT NULL,
  `WMAIL` varchar(50) NOT NULL,
  `WPASS` varchar(100) NOT NULL
)  ;


INSERT INTO `welfare_login` (`WID`, `WMAIL`, `WPASS`) VALUES
('WF101', 'WF101@rguktong.ac.in', 'RandomPassword1'),
('WF102', 'WF102@rguktong.ac.in', 'RandomPassword2'),
('WF103', 'WF103@rguktong.ac.in', 'RandomPassword3'),
('WF104', 'WF104@rguktong.ac.in', 'RandomPassword4'),
('WF105', 'WF105@rguktong.ac.in', 'RandomPassword5'),
('WF106', 'WF106@rguktong.ac.in', 'RandomPassword6'),
('WF107', 'WF107@rguktong.ac.in', 'RandomPassword7'),
('WF108', 'WF108@rguktong.ac.in', 'RandomPassword8'),
('WF109', 'WF109@rguktong.ac.in', 'RandomPassword9'),
('WF110', 'WF110@rguktong.ac.in', 'RandomPassword10');


ALTER TABLE `COMPLAINTS`
  ADD PRIMARY KEY (`CID`);

ALTER TABLE `student_login`
  ADD PRIMARY KEY (`student_ID`),
  ADD UNIQUE KEY `student_email` (`student_email`,`student_password`);

ALTER TABLE `warden_login`
  ADD PRIMARY KEY (`WID`),
  ADD UNIQUE KEY `WMAIL` (`WMAIL`),
  ADD UNIQUE KEY `WPASS` (`WPASS`);

ALTER TABLE `welfare_details`
  ADD PRIMARY KEY (`WFID`);

ALTER TABLE `welfare_login`
  ADD PRIMARY KEY (`WID`),
  ADD UNIQUE KEY `WMAIL` (`WMAIL`,`WPASS`);


ALTER TABLE `COMPLAINTS`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;
