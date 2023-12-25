-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2023 at 03:31 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_requirement`
--

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Problem` text COLLATE utf8_unicode_ci NOT NULL,
  `Requirement` text COLLATE utf8_unicode_ci NOT NULL,
  `Request_by` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Receive` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Receive_date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Finish` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Finish_date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Sub` int(100) NOT NULL,
  `Department` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Section` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`ID`, `Date`, `Subject`, `Problem`, `Requirement`, `Request_by`, `Receive`, `Receive_date`, `Finish`, `Finish_date`, `Sub`, `Department`, `Section`) VALUES
('A2312001', '19/1/2023', 'Credit App 1 term ', '', 'เดือนของ  Expiry date  จาก sep เป็น Sep\r\nตำแหน่งตัวเลขในตาราง ส่วนมากจะอยู่ชิดฝั่งขวา แต่มีบางส่วนอยู่ตรงกลางช่อง    \r\nช่วยเพิ่มหัวข้อสำหรับเติมคำ “ MAIN BANK : “ แล้วขยับตารางด้านล่าง\r\n', 'nuttawat_u', 'Y', '19/1/2023', 'Y', '30/1/2023', 0, 'Sale', 'Auto2'),
('A2312002', '27/1/2023', 'Stock Aging', '', 'เนื่องจากมีการทำ Report เกี่ยวกับการวิเคราะห์ Long-term stock ซึ่งต้องใช้เวลาจากการทำ by Manual\r\nจึงขอเสนอความเห็นโดยใช้ Program เข้ามาช่วย เพื่อลดเวลาการทำงาน ลดจำนวน report   ลดความผิดพลาด เพิ่มความแม่นยำในการวิเคราะห์', 'nuttawat_u', 'Y', '27/1/2023', 'Y', '30/1/2023', 0, 'Sale', 'Home2'),
('A2312003', '5/1/2023', 'เพิ่มข้อมูลแผนออนไลน์', 'เพิ่มข้อมูลแผนออนไลน์ ในหน้าจอProduction real time เพื่อแสดงสถานะ\r\nเพิ่มช่องสำหรับระบุ Line stop ใน Production report ', 'ประสิทธิภาพการผลิต เมื่อเปรียบเทียบกับแผนการผลิต\r\nสถานะวัตุดิบ  ยังไม่ผลิต กำลังผลิต ผลิตเสร็จแล้ว \r\nแสดงสาเหตุของ Line stop แต่ละออเดอร์\r\nแสดงในหน้าจอ Production real time \r\n ว่าสถานะเครื่องจักรว่า ปิดเครื่องจากสาเหตุอะไร\r\n', 'nuttawat_u', 'Y', '5/1/2023', 'Y', '30/1/2023', 0, 'Production', 'Production'),
('A2312004', '2/2/2023', 'Program Claim', '', 'ดำเนินการเขียนโปรแกรมและทดสอบสมบูรณ์', 'nuttawat_u', 'Y', '2/2/2023', 'Y', '23/2/2023', 0, 'Admin3', 'IMEX'),
('A2312005', '2/2/2023', 'New requirement Program Transport charge', '', 'Get requirement\r\n', 'nuttawat_u', 'Y', '2/2/2023', 'Y', '23/2/2023', 0, 'Admin3', 'IMEX'),
('A2312006', '19/1/2023', 'Credit App', '', 'ประวัติการขาย โปรแกรมไม่ได้ดึงน้ำหนักที่เป็น Tolling มารวมด้วยครับ  คาดว่าโปรแกรมไปดึงข้อมูลจากช่อง Total Weight(Shipment)\r\nตาราง Payment Method     เลือก Money Transfer ในโปรแกรมแล้ว กากบาทยังคงไปโชว์ที่ Postdated check ตอนสั่งพิมพ์ครับ\r\nExpire date    DD-MMM-YYY    อยากให้เพิ่มความหนา  เพราะเป็นส่วนสำคัญที่ต้องให้เห็นชัดเจน\r\n\"ช่วยเพิ่มจำนวนคำในช่อง  Term   หากพิมพ์คำยาวๆ แล้ว ช่องไม่พอครับ\r\nเช่น คำที่ยาวที่สุด\"\r\nในการทำ Credit application บางลูกค้ามีการทำเป็น By group  เช่น  1 Group มี  2-3 ลูกค้า เพราะว่าเป็นบริษัทเครือเดียวกัน', 'nuttawat_u', 'Y', '19/1/2023', 'Y', '23/2/2023', 0, 'Sale', 'Auto2'),
('A2312007', '5/1/2023', 'PRD REPORT', '', '1. แก้ไขข้อมูลการโหลดแผนของเครื่อง Slitter เพิ่มจุดทศนิคม ของ Trim\r\n2. แก้ไขสูตรการคำนวณ Std. time การผลิตต่อคอยล์เครื่อง leveler\r\n3. ปรับปรุงเมนูการ Download แผนงานประจำวันเครื่อง Blanking เพิ่มวันที่และเครื่องจักร', 'nuttawat_u', 'Y', '5/1/2023', 'Y', '28/2/2023', 0, 'Production', 'Production'),
('A2312008', '6/3/2023', 'Program Transport charge', '', 'เพิ่ม Menu WH Charge (Direct & Drop)\r\n๏ Direct Save to Excel File (Direct), Delete\r\n๏ Drop Save to Excel File (Drop), Delete\r\n', 'nuttawat_u', 'Y', '6/3/2023', 'Y', '6/3/2023', 0, 'Admin3', 'IMEX'),
('A2312009', '6/3/2023', 'ขอปรับปรุง Menu Goods in transit', '', 'เพิ่มเงื่อนไขให้สามารถเลือก Cut off receive date การดึง Program ETD From Receive date \r\n', 'nuttawat_u', 'Y', '6/3/2023', 'Y', '6/3/2023', 0, 'Admin3', 'IMEX'),
('A2312010', '6/3/2023', 'Customs clearance Report', '', 'Menu Forwading Charge by Import type\r\nเลือก Cost month => ยกเว้น Commodity \"SP, PA\"\r\nMenu Shipping Sharing Report\r\nIMEX สรุปส่ง From Report ให้พี่ชา\r\nMenu Clearance by Sales section and Import type\r\nIMEX สรุปส่ง From Report ให้พี่ชา\r\nMenu Customs Released date report \r\nคิด Concept ใหม่', 'nuttawat_u', 'Y', '6/3/2023', 'Y', '6/3/2023', 0, 'Admin3', 'IMEX'),
('A2312011', '23/6/2023', 'Modify MES Report', '', '1. ปรับแก้ใบแผนงานประจำวัน กลุ่มงานMiniLev. ,MP,Mini slitter ใช้ AFS เพื่อระบุสถานะของslit-coil,Location.ยังแก้ไขเรื่องการดึงข้อมูลการเปลี่ยนแปลงไม่ได้ ดังนั้นในLOC.2 จะเป็นLOC.ซ้ำ\r\nดึงข้อมูลการUpdate location กรณีหาเจอ ให้ดึงใน Apicore =Location_c    อาจจะไม่ตรงกันระหว่าง Bin_new กับ Location_c \r\n- Inventory / 3Month \r\n- Re-call Order \r\n - การออกออเดอร์ไว้แล้วจะสามารถUpdate Loc.ได้หรือไม่ (ได้โดยใช้สูตรเปรียบเทียบ2ค่า) เพิ่มช่อง Status : F,C,Bal.,X\r\n2. ปรับแก้Program Plan Schedule :  แก้ไข Line เมื่อเปลี่ยนเครื่องจักร เพิ่มเครื่อง L10\r\n3. ค่า Burr ในออเดอร์ปรับเป็นทศนิยม 3 ตำแหน่ง\r\n4. ปรับแก้ Knife set grinding entry : แก้ไขและลบไม่ได้\r\n5. ปรับแก้ไขข้อมูลวันที่ เดิมอยู่ด้านล่างรายงาย ย้ายขึ้นอยุ่ด้านหัวบน Production Label\r\n\r\n\r\n\r\n', 'nuttawat_u', 'Y', '23/6/2023', 'Y', '30/7/2023', 0, 'Production', 'Production'),
('A2312012', '23/6/2023', 'Modify UCC PLAN', '', '1. เพิ่มfill ในรายงานการจัดแผนของ Slitter\r\n2. เพิ่มคำสั่งพิเศษในInspectionกลุ่มงานBlank', 'nuttawat_u', 'Y', '23/6/2023', 'Y', '30/7/2023', 0, 'Production', 'Production'),
('A2312013', '14/8/2023', 'Job Process Report : สำหรับโหลดข้อมูลการผลิตจากเริ่มต้นจนจบกระบวนการของแต่ละ M.Coil(Complete)', '', 'Yield by Master coil all process\r\nYield Loss detail \r\nTop End No size\r\nNG Top,Middle,End\r\nStatus of coil progress\r\n', 'nuttawat_u', 'Y', '14/8/2023', 'Y', '14/8/2023', 0, 'Production', 'Production'),
('A2312014', '14/8/2023', 'ปรับข้อมูลแผนการผลิต (Planing)', '', 'Order Type ให้ดึง status 2 ขึ้นเป็น priority  (Complete)\r\n', 'nuttawat_u', 'Y', '14/8/2023', 'Y', '14/8/2023', 0, 'Production', 'Production'),
('A2312015', '14/8/2023', 'ปรับแก้ไขระบบสั่งลังไม้ กรณีสั่งจำนวนซ้ำซ้อน', '', 'แบ่งคัต\r\nมีมากกว่า1ลูกค้าใน1ออเดอร์\r\n', 'nuttawat_u', 'Y', '14/8/2023', 'Y', '14/8/2023', 0, 'Production', 'Production'),
('A2312016', '14/8/2023', 'เปลี่ยนระบบการ Login โปรแกรม MesRe, PrdQue, Production Online', '', 'User name : ชื่อพนักงาน\r\nPassword : ID.No.\r\nให้Doc.ใส่ข้อมูลพนักงานที่รับผิดชอบในแต่ละสาขา\r\n', 'nuttawat_u', 'Y', '14/8/2023', 'Y', '14/8/2023', 0, 'Production', 'Production'),
('A2312017', '14/8/2023', 'เพิ่มเครื่องจักร PK3 ในระบบMES', '', 'MesReport\r\nProduction Report\r\nSticker Packing Report\r\nSkid Order\r\nWood Shop Entry U3\r\n', 'nuttawat_u', 'Y', '14/8/2023', 'Y', '14/8/2023', 0, 'Production', 'Production'),
('A2312018', '14/8/2023', 'ปรับแก้ระบบการสั่งลังไม้', 'กรณีหน้ากว้างคอยล์และความยาวสลับกันตามลักษณะการออกแบบออเดอร์เพื่อลงเครื่องจักร', 'เช่น 3.0x1219x210 =>L4  \r\nเมื่อ 3.0x210x1219 =>L11\r\n', 'nuttawat_u', 'Y', '14/8/2023', 'Y', '14/8/2023', 0, 'Production', 'Production'),
('A2312019', '14/8/2023', 'ปรับออเดอร์งานBlank', '', 'เพิ่มหมายเลย Inspection Report เมื่อระบบล่มต้องเอาหมายเลข Inspection ค้นหาในPCส่วนตัวและไฟล์', 'nuttawat_u', 'Y', '14/8/2023', 'Y', '14/8/2023', 0, 'Production', 'Production'),
('A2312020', '14/8/2023', 'แยกรายเครื่องจักรงานReshear =>U2', '', 'Skid Order\r\nWood Shop entry\r\nWood Shop Sticker Report\r\n', 'nuttawat_u', 'Y', '14/8/2023', 'Y', '14/8/2023', 0, 'Production', 'Production'),
('A2312021', '14/8/2023', 'เพิ่มรายการสั่งลังไม้เครื่องTurner', '', 'ใชรูปบบเดียวกับงานBlankคือถ้าเป็น PC04ระบบจะไม่แสดงSizeงาน แต่ให้คลิ๊กดูในช่อง Remark แทน\r\n', 'nuttawat_u', 'Y', '14/8/2023', 'Y', '14/8/2023', 0, 'Production', 'Production'),
('A2312022', '23/10/2023', 'Credit Submission Online', '', '1.)ปรับปรุงหน้าจอการอนุมัติของทุกลาดับขั้น ตั้งแต่ AGM/GM, DIR(ADM), DMD(SALES), MD โดยที่หน้าจอของแต่ละตาแหน่งสามารถเรียกดูเอกสารประกอบอื่นๆ เพื่อประกอบการอนุมัติได้\r\n2.)หน้าจอแสดงลาดับขั้นการรออนุมัติเอกสาร โดยอ้างอิงจากเลขที่เอกสาร สามารถติดตามสถานะของเอกสารได้ตลอดเวลา(Real-time update)                                                                                                                        3.)หน้าจอแสดงชื่อลูกค้าที่จะต้องทาเอกสาร credit app.โดยแบ่งตามรอบช่วงเวลาการหมดอายุของเครดิต และแสดงสถานะของเอกสาร Credit app. แต่ละราย\r\n- สถานะการจัดทาเอกสาร credit app.\r\n- สถานะการส่งคาขออนุมัติไปยัง AGM/GM Sales\r\n4.)จัดเก็บข้อมูลลายเซ็นต์ (E-Signature) ของผู้ที่เกี่ยวข้อง ทั้งผู้จัดทาเอกสาร credit app. และผู้อนุมัติ (ตามรหัสพนักงาน)\r\nโดยลายเซ็นต์จะปรากฏ/แสดง บนเอกสาร credit app. เมื่อได้รับการอนุมัติจากผู้อนุมัติแต่ละลาดับ/ขั้นตอน\r\n', 'nuttawat_u', 'Y', '23/10/2023', 'Y', '23/10/2023', 0, 'Admin1', 'Business Analysis');

-- --------------------------------------------------------

--
-- Table structure for table `job_sub`
--

CREATE TABLE `job_sub` (
  `ID` int(255) NOT NULL,
  `Date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Problem` text COLLATE utf8_unicode_ci NOT NULL,
  `Requirement` text COLLATE utf8_unicode_ci NOT NULL,
  `Request_by` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Receive` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Receive_date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Finish` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Finish_date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Department` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Section` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job_sub`
--

INSERT INTO `job_sub` (`ID`, `Date`, `Subject`, `Problem`, `Requirement`, `Request_by`, `Receive`, `Receive_date`, `Finish`, `Finish_date`, `Department`, `Section`) VALUES
(92, '25/8/2023', 'Credit App', '', '1.ได้มีการแก้ไข Sales record ให้ดึงตามข้อมูล จาก Credit term ที่เลือกไว้\r\n2.มีการรวม Sales record จาก Sales group\r\n3.ปรับการดึงข้อมูล Print ใน forecast ของเดือนที่ 3 ให้ถูกต้อง\r\n4.ปรับจุดทศนิยมต่างๆ ตามที่ร้องขอ\r\n5.เพิ่มปุม Delete ข้อมูล ใน program ทั้ง Credit 1 & 2 term  เพื่อล้างข้อมูลทั้งหมด\r\n6.เพิ่มปุ่ม Refresh calculate ในหน้า Calculate ของ Credit 2 term เพื่อการคำนวนกลับคืนสู่ค่าพื้นฐาน ในกรณีที่แก้ไขตัวเลขใหม่หลังจากที่มีการปรับแต่งตัวเลขไม่ถูกต้อง\r\n', 'nuttawat_u', 'Y', '25/8/2023', 'Y', '25/8/2023', 'Sale', 'Auto2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `job_sub`
--
ALTER TABLE `job_sub`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `job_sub`
--
ALTER TABLE `job_sub`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
