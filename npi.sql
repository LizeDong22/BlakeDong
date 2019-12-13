-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 13, 2019 at 12:59 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruralhealth`
--

-- --------------------------------------------------------

--
-- Table structure for table `npi`
--

CREATE TABLE `npi` (
  `NPI` int(10) NOT NULL,
  `First_Name` varchar(30) DEFAULT NULL,
  `Middle_Name` varchar(30) DEFAULT NULL,
  `Last_Name` varchar(30) DEFAULT NULL,
  `Suffix` varchar(5) DEFAULT NULL,
  `Phone_Number` varchar(20) DEFAULT NULL,
  `Discipline` varchar(2) DEFAULT NULL,
  `Specialty` varchar(30) DEFAULT NULL,
  `Status_` varchar(15) DEFAULT NULL,
  `Ineligibal_CMS_Deactivated` varchar(5) DEFAULT NULL,
  `Ineligibal_PCO_Omitted` varchar(5) DEFAULT NULL,
  `Ineligibal_Not_Geocoded` varchar(5) DEFAULT NULL,
  `Ineligibal_Federal_Provider` varchar(5) DEFAULT NULL,
  `Ineligibal_NHSC_Provider` varchar(5) DEFAULT NULL,
  `Ineligibal_J1_Visa_Waiver_Holder` varchar(5) DEFAULT NULL,
  `Ineligibal_No_Discipline_Specialty` varchar(5) DEFAULT NULL,
  `Ineligibal_New_Not_Reviewed` varchar(5) DEFAULT NULL,
  `Address_Line_1` varchar(50) DEFAULT NULL,
  `Address_Line_2` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(5) DEFAULT NULL,
  `Postal_code` int(9) DEFAULT NULL,
  `Country_Name` varchar(20) DEFAULT NULL,
  `Latitude` varchar(20) DEFAULT NULL,
  `Longitude` varchar(15) DEFAULT NULL,
  `Match_Level` varchar(100) DEFAULT NULL,
  `State_FIPS` int(2) DEFAULT NULL,
  `Countt_FIPS` varchar(3) DEFAULT NULL,
  `Census_Tract` varchar(11) DEFAULT NULL,
  `CSD` varchar(10) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `Dental_Auxiliaries` varchar(20) DEFAULT NULL,
  `Direct_Tour_Hours` int(2) DEFAULT NULL,
  `Reason_Codec` varchar(30) DEFAULT NULL,
  `Serves_at_Correctional_Facility` varchar(3) DEFAULT NULL,
  `Serves_at_State_County_Mental_Hospital` varchar(3) DEFAULT NULL,
  `Annual_Medicaid_Claim` int(5) DEFAULT NULL,
  `Medicaid_Patient` int(5) DEFAULT NULL,
  `Homeless` int(5) DEFAULT NULL,
  `Migrant_Farmwork` int(5) DEFAULT NULL,
  `Native_American` int(5) DEFAULT NULL,
  `Sliding_Fee` int(5) DEFAULT NULL,
  `Migrant_Seasonal_Farmwoker` int(5) DEFAULT NULL,
  `Resident_Intern` varchar(3) DEFAULT NULL,
  `J1_Visa_Waiver` varchar(3) DEFAULT NULL,
  `Ferderal_Provider` varchar(3) DEFAULT NULL,
  `NHSC_Provider` varchar(3) DEFAULT NULL,
  `Activation_Date` varchar(20) DEFAULT NULL,
  `SDMS_Last_Modified_Date` varchar(20) DEFAULT NULL,
  `SDMS_Last_Modified_By` varchar(30) DEFAULT NULL,
  `NPI_Address_Change_Date` varchar(20) DEFAULT NULL,
  `NPI_Deactivation_Date` varchar(20) DEFAULT NULL,
  `NPI_Reactivation_Date` varchar(20) DEFAULT NULL,
  `NPI_New_Provider_Date` varchar(20) DEFAULT NULL,
  `NPI_Taxonomy_Change_Date` varchar(20) DEFAULT NULL,
  `Taxonomy_Code_1` varchar(20) DEFAULT NULL,
  `Taxonomy_Type_1` varchar(100) DEFAULT NULL,
  `DOPL_LICENSE_NO` varchar(12) DEFAULT NULL,
  `License_State_1` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `npi`
--

INSERT INTO `npi` (`NPI`, `First_Name`, `Middle_Name`, `Last_Name`, `Suffix`, `Phone_Number`, `Discipline`, `Specialty`, `Status_`, `Ineligibal_CMS_Deactivated`, `Ineligibal_PCO_Omitted`, `Ineligibal_Not_Geocoded`, `Ineligibal_Federal_Provider`, `Ineligibal_NHSC_Provider`, `Ineligibal_J1_Visa_Waiver_Holder`, `Ineligibal_No_Discipline_Specialty`, `Ineligibal_New_Not_Reviewed`, `Address_Line_1`, `Address_Line_2`, `City`, `State`, `Postal_code`, `Country_Name`, `Latitude`, `Longitude`, `Match_Level`, `State_FIPS`, `Countt_FIPS`, `Census_Tract`, `CSD`, `Age`, `Dental_Auxiliaries`, `Direct_Tour_Hours`, `Reason_Codec`, `Serves_at_Correctional_Facility`, `Serves_at_State_County_Mental_Hospital`, `Annual_Medicaid_Claim`, `Medicaid_Patient`, `Homeless`, `Migrant_Farmwork`, `Native_American`, `Sliding_Fee`, `Migrant_Seasonal_Farmwoker`, `Resident_Intern`, `J1_Visa_Waiver`, `Ferderal_Provider`, `NHSC_Provider`, `Activation_Date`, `SDMS_Last_Modified_Date`, `SDMS_Last_Modified_By`, `NPI_Address_Change_Date`, `NPI_Deactivation_Date`, `NPI_Reactivation_Date`, `NPI_New_Provider_Date`, `NPI_Taxonomy_Change_Date`, `Taxonomy_Code_1`, `Taxonomy_Type_1`, `DOPL_LICENSE_NO`, `License_State_1`) VALUES
(1003002544, 'JACQUELINE', NULL, 'HYDE', NULL, NULL, NULL, NULL, 'Ineligible', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '10151 MAJESTIC CANYON RD', NULL, 'SANDY', 'UT', 840924521, 'Salt Lake', '40.566893', '-111.804734', '01 - Point address', 49, '35', '49035112814', '4903593010', NULL, NULL, 40, NULL, 'No', 'No', 0, 0, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '03/26/2016 01:00:00', '03/25/2016 20:00:00', 'npi-admin', NULL, NULL, NULL, '03/25/2016', NULL, '101YP2500X', 'Professional', '7324191-6009', 'UT'),
(1003005166, 'MICHAEL', 'ANDREW', 'MONTGOMERY', NULL, NULL, NULL, NULL, 'Ineligible', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '237 26TH ST', NULL, 'OGDEN', 'UT', 844013105, 'Weber', '41.218583', '-111.974852', '01 - Point address', 49, '57', '49057201100', '4905792322', NULL, NULL, 40, NULL, 'No', 'No', 0, 0, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '03/26/2016 01:00:00', '03/25/2016 20:00:00', 'npi-admin', NULL, NULL, NULL, '03/25/2016', NULL, '390200000X', 'Student in an Organized Health Care Education/Training Program', NULL, NULL),
(1003007253, 'AMY', 'LYN', 'ROYAL', NULL, NULL, NULL, NULL, 'Ineligible', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '151 N MAIN ST', NULL, 'TOOELE', 'UT', 840742141, 'Tooele', '40.533413', '-112.29856', '02 - Interpolated street address', 49, '45', '49045131100', '4904593397', NULL, NULL, 40, NULL, 'No', 'No', 0, 0, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '03/26/2016 01:00:00', '03/25/2016 20:00:00', 'npi-admin', NULL, NULL, NULL, '03/25/2016', NULL, '163WC1500X', 'Community Health', '311983-3102', 'UT'),
(1003009150, 'IRVIN', 'LEE', 'ENCE', NULL, '4356286026', 'DH', 'Dentist', 'Ineligible', NULL, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '10 DIAGONAL STREET', '#102', 'ST GEORGE', 'UT', 84770, 'Washington', '37.11182', '-113.583852', NULL, 49, '53', '49053270300', '4905392924', 72, 'Unknown', 36, 'Retired', 'No', 'No', 0, 10, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '09/22/2014 22:46:00', '04/17/2017 12:16:24', 'vallison@utah.gov', NULL, NULL, NULL, '09/22/2014', NULL, '122300000X', 'Dentist', '1356769922', 'UT'),
(1003010927, 'VALARIE', 'JEAN', 'HAMBLIN', NULL, NULL, NULL, NULL, 'Ineligible', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '250 W 300 N', NULL, 'ROOSEVELT', 'UT', 840662336, 'Duchesne', '40.303425', '-109.99609', '02 - Interpolated street address', 49, '13', '49013940500', '4901392881', NULL, NULL, 40, NULL, 'No', 'No', 0, 0, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '03/26/2016 01:00:00', '03/25/2016 20:00:00', 'npi-admin', NULL, NULL, NULL, '03/25/2016', NULL, '163W00000X', 'Registered Nurse', '2134933102', 'UT'),
(1003014374, 'MICHAEL', 'SCOTT', 'CONNOLLY', NULL, '(801) 302-1700', 'MH', 'Psychiatrist', 'Ineligible', NULL, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '12391 S 4000 W', NULL, 'RIVERTON', 'UT', 840967012, 'Salt Lake', '40.52608', '-111.986202', NULL, 49, '35', '49035113013', '4903593010', NULL, NULL, 26, 'Relocated', 'No', 'No', 0, 0, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '09/22/2014 22:46:00', '10/13/2017 12:54:22', 'mmccullough@utah.gov', NULL, NULL, NULL, '09/22/2014', NULL, '2084P0800X', 'Psychiatry', '6150978-1205', 'UT'),
(1003016536, 'ADAM', 'RICHARD', 'VAN LEEUWEN', NULL, '8019431612', 'DH', 'Dentist', 'Eligible', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6936 SOUTH 2475 EAST', '201', 'SALT LAKE CITY', 'UT', 841215999, 'Salt Lake', '40.622101', '-111.82424', '0 - User override', 49, '35', '49035111002', NULL, 42, '2', 40, NULL, 'No', 'No', 0, 0, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '09/22/2014 22:46:00', '02/07/2017 13:45:26', 'vallison@utah.gov', NULL, NULL, NULL, '09/22/2014', NULL, '1223G0001X', 'General Practice', '6610915', 'UT'),
(1003017666, 'CORY', 'MICHAEL LEE', 'NITZEL', NULL, NULL, NULL, NULL, 'Ineligible', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '50 N MEDICAL DR', NULL, 'SALT LAKE CITY', 'UT', 841320100, 'Salt Lake', '40.772988', '-111.836845', '02 - Interpolated street address', 49, '35', '49035101400', '4903593010', NULL, NULL, 40, NULL, 'No', 'No', 0, 0, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '03/26/2016 01:00:00', '03/25/2016 20:00:00', 'npi-admin', NULL, NULL, NULL, '03/25/2016', NULL, '207RC0000X', 'Cardiovascular Disease', '7676143-1205', 'UT'),
(1003021346, 'GLEN', 'RAY', 'LAMBERT', NULL, '(801) 272-7742', 'MH', 'Clinical Social Worker', 'Eligible', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1361 REBECCA CIR', NULL, 'SALT LAKE CITY', 'UT', 841175864, 'Salt Lake', '40.66335', '-111.852892', NULL, 49, '35', '49035111102', '4903593010', NULL, NULL, 0, NULL, 'No', 'No', 0, 0, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '09/22/2014 22:46:00', '11/17/2018 02:51:46', 'system', NULL, NULL, NULL, '09/22/2014', NULL, '1041C0700X', 'Clinical', '109658-3501', 'UT'),
(1003024761, 'TRAVIS', NULL, 'CHAMBERLAIN', NULL, NULL, NULL, NULL, 'Ineligible', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '101 W CENTER ST', NULL, 'LOGAN', 'UT', 843214520, 'Cache', '41.731488', '-111.837932', '01 - Point address', 49, '5', '49005001002', '4900591763', NULL, NULL, 40, NULL, 'No', 'No', 0, 0, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '03/26/2016 01:00:00', '03/25/2016 20:00:00', 'npi-admin', NULL, NULL, NULL, '03/25/2016', NULL, '225X00000X', 'Occupational Therapist', '367293-4201', 'UT'),
(1003026857, 'KEITH', 'A', 'LEVER', NULL, '8012552514', 'DH', 'Dentist', 'Eligible', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7321 S STATE ST', 'STE #C', 'MIDVALE', 'UT', 840472055, 'Salt Lake', '40.618457', '-111.890596', '01 - Point address', 49, '35', '49035112503', '4903593010', 51, '4 or more', 40, NULL, 'No', 'No', 0, 5, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '09/22/2014 22:46:00', '01/18/2017 11:02:11', 'vallison@utah.gov', NULL, NULL, NULL, '09/22/2014', NULL, '1223G0001X', 'General Practice', '47053', 'UT'),
(1003029935, 'MONICA', 'CHILD', 'WONNACOTT', NULL, '(801) 302-1700', 'PC', 'Pediatrics', 'Eligible', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12391 S 4000 W', NULL, 'RIVERTON', 'UT', 840967012, 'Salt Lake', '40.526055', '-111.986165', '01 - Point address', 49, '35', '49035113013', '4903593010', NULL, NULL, 25, NULL, 'No', 'No', 0, 14, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '09/22/2014 22:46:00', '09/10/2015 19:01:03', 'sfasselin@utah.gov', NULL, NULL, NULL, '09/22/2014', NULL, '208000000X', 'Pediatrics', '5069', 'NE'),
(1003031378, 'EVAN', 'R', 'LAW', NULL, NULL, NULL, NULL, 'Ineligible', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '520 MEDICAL DR', 'SUITE #300', 'BOUNTIFUL', 'UT', 840104968, 'Davis', '40.887263', '-111.870443', '01 - Point address', 49, '11', '49011126500', '4901193182', NULL, NULL, 40, NULL, 'No', 'No', 0, 0, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '03/26/2016 01:00:00', '03/25/2016 20:00:00', 'npi-admin', '10/07/2016', NULL, NULL, '03/25/2016', NULL, '363AM0700X', 'Medical', '361472-1206', 'UT'),
(1003032624, 'AMY', 'COVINGTON', 'WERRETT', NULL, NULL, NULL, NULL, 'Ineligible', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '1380 E MEDICAL CENTER DR', NULL, 'ST GEORGE', 'UT', 847902123, 'Washington', '37.099822', '-113.553336', '02 - Interpolated street address', 49, '53', '49053271200', '4905392924', NULL, NULL, 40, NULL, 'No', 'No', 0, 0, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '03/26/2016 01:00:00', '03/25/2016 20:00:00', 'npi-admin', NULL, NULL, NULL, '03/25/2016', NULL, '235Z00000X', 'Speech-Language Pathologist', '6263230-4102', 'UT'),
(1003034240, 'DOUG', 'E', 'NIELSEN', NULL, '(801) 451-0475', 'MH', 'Clinical Social Worker', 'Ineligible', NULL, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '1466 N HIGHWAY 89 STE 220', NULL, 'FARMINGTON', 'UT', 840252738, 'Davis', '41.004351', '-111.909242', NULL, 49, '11', '49011126203', '4901193182', NULL, NULL, 0, 'Admin Only', 'No', 'No', 0, 0, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '09/22/2014 22:46:00', '06/03/2015 15:56:11', 'sfasselin@utah.gov', NULL, NULL, NULL, '09/22/2014', NULL, '1041C0700X', 'Clinical', '266439-3501', 'UT'),
(1003034703, 'STACY', 'M', 'NELSON', NULL, NULL, NULL, NULL, 'Ineligible', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '237 26TH ST', NULL, 'OGDEN', 'UT', 844013105, 'Weber', '41.218583', '-111.974852', '01 - Point address', 49, '57', '49057201100', '4905792322', NULL, NULL, 40, NULL, 'No', 'No', 0, 0, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '03/26/2016 01:00:00', '03/25/2016 20:00:00', 'npi-admin', NULL, NULL, NULL, '03/25/2016', NULL, '163WP0809X', 'Psych/Mental Health, Adult', '281216-3102', 'UT'),
(1003034976, 'KEITH', 'S', 'MATTINSON', NULL, '8014655000', 'DH', 'Dentist', 'Ineligible', NULL, NULL, 'Yes', NULL, NULL, NULL, NULL, NULL, '1172 E 100 N', 'SUITE # 3', 'PAYSON', 'UT', 846511667, 'Aiken', '39.33317547', '-83.01259812', '01 - Address point', 45, '3', '45003021203', '4500390026', 58, '2', 34, NULL, 'No', 'No', 0, 13, 0, 0, 0, 2, 0, 'No', 'No', 'No', 'No', '09/22/2014 22:46:00', '02/25/2016 16:04:21', 'shellyphillips@utah.gov', NULL, NULL, NULL, '09/22/2014', NULL, '1223G0001X', 'General Practice', '1449899922', 'UT'),
(1003035429, 'MARK', 'LYNN', 'DUKE', NULL, '(801) 240-3556', 'MH', 'Clinical Social Worker', 'Eligible', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '132 SOUTH STATE', 'SUITE 200', 'SALT LAKE CITY', 'UT', 841111506, 'Salt Lake', '40.766231', '-111.888231', NULL, 49, '35', '49035114000', '4903593010', NULL, NULL, 0, NULL, 'No', 'No', 0, 0, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '09/22/2014 22:46:00', '11/17/2018 02:51:46', 'system', NULL, NULL, NULL, '09/22/2014', NULL, '1041C0700X', 'Clinical', '369885-3501', 'UT'),
(1003037862, 'SANDRA', 'RAYMOND', 'JENSEN', NULL, '(801) 796-8976', 'MH', 'Marriage and Family', 'Ineligible', NULL, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '373 NORTH 780 EAST', NULL, 'LINDON', 'UT', 84042, 'Utah', '40.344461', '-111.697002', NULL, 49, '49', '49049000604', '4904990043', NULL, NULL, 0, 'Admin Only', 'No', 'No', 0, 0, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '09/22/2014 22:46:00', '06/02/2015 12:18:03', 'DONWOOD@Utah.gov', NULL, NULL, NULL, '09/22/2014', NULL, '106H00000X', 'Marriage & Family Therapist', '3085063902', 'UT'),
(1003039280, 'GINGER', NULL, 'JONES', NULL, NULL, NULL, NULL, 'Ineligible', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '237 26TH ST', NULL, 'OGDEN', 'UT', 844013105, 'Weber', '41.218583', '-111.974852', '01 - Point address', 49, '57', '49057201100', '4905792322', NULL, NULL, 40, NULL, 'No', 'No', 0, 0, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '03/26/2016 01:00:00', '03/25/2016 20:00:00', 'npi-admin', NULL, NULL, NULL, '03/25/2016', NULL, '101YP2500X', 'Professional', '5189397-6004', 'UT'),
(1003039827, 'DIANE', 'B.', 'ROWE', NULL, '(435) 652-9428', 'MH', 'Clinical Social Worker', 'Ineligible', NULL, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '321 N MALL DR', 'BLDG I 102', 'ST GEORGE', 'UT', 847907302, 'Washington', '37.113772', '-113.543082', NULL, 49, '53', '49053271100', '4905392924', NULL, NULL, 0, 'Admin Only', 'No', 'No', 0, 0, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '09/22/2014 22:46:00', '04/06/2015 16:57:07', 'shellyphillips@utah.gov', NULL, NULL, NULL, '09/22/2014', NULL, '1041C0700X', 'Clinical', '277799-3501', 'UT'),
(1003041740, 'CASEY', 'JOSEPH', 'HENICH', NULL, '8019653600', 'PC', 'Family Practice', 'Eligible', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3725 W 4100 S', NULL, 'WEST VALLEY CITY', 'UT', 841205530, 'Salt Lake', '40.682083', '-111.97921', '01 - Point address', 49, '35', '49035113536', '4903593010', NULL, NULL, 40, NULL, 'No', 'No', 0, 10, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '09/22/2014 22:46:00', '02/21/2017 13:51:57', 'mbullard@utah.gov', NULL, NULL, NULL, '09/22/2014', NULL, '207Q00000X', 'Family Medicine', '27181', 'OK'),
(1003042375, 'ERIC', NULL, 'SCHENFELD', NULL, NULL, NULL, NULL, 'Ineligible', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '5171 COTTONWOOD ST', 'SUITE 740', 'MURRAY', 'UT', 841075704, 'Salt Lake', '40.658851', '-111.894349', '02 - Interpolated street address', 49, '35', '49035112100', '4903593010', NULL, NULL, 40, NULL, 'No', 'No', 0, 0, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '03/26/2016 01:00:00', '03/25/2016 20:00:00', 'npi-admin', NULL, NULL, NULL, '03/25/2016', NULL, '207P00000X', 'Emergency Medicine', '156598', 'NC'),
(1003043225, 'LESLIE', NULL, 'TRANCHELL', NULL, NULL, NULL, NULL, 'Ineligible', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '478 E CANYON RD', NULL, 'PAYSON', 'UT', 846512520, 'Utah', '40.025375', '-111.725503', '01 - Point address', 49, '49', '49049003402', '4904993268', NULL, NULL, 40, NULL, 'No', 'No', 0, 0, 0, 0, 0, 0, 0, 'No', 'No', 'No', 'No', '03/26/2016 01:00:00', '03/25/2016 20:00:00', 'npi-admin', '06/27/2018', NULL, NULL, '03/25/2016', '06/27/2018', '235Z00000X', 'Speech-Language Pathologist', '018763-1', 'NY');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
