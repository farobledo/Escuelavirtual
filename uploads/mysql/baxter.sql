/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `academic_syllabus` (
  `academic_syllabus_id` int(11) NOT NULL AUTO_INCREMENT,
  `academic_syllabus_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `uploader_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`academic_syllabus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `academic_syllabus` DISABLE KEYS */;
/*!40000 ALTER TABLE `academic_syllabus` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `level` longtext COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `level`, `authentication_key`) VALUES
	(1, 'Admin', 'admin@admin.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', '1', '');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `attendance` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_routine_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0(undefined) 1(present) 2(absent)',
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `attendance_backup` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL COMMENT '0 undefined , 1 present , 2  absent',
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `attendance_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance_backup` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `author` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `book` DISABLE KEYS */;
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
	('01ci1kg8il2grbno05cd7n8jdh31fo2i', '127.0.0.1', 1541944139, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313534313934343031333B61646D696E5F6C6F67696E7C733A313A2231223B61646D696E5F69647C733A313A2231223B6C6F67696E5F757365725F69647C733A313A2231223B6E616D657C733A393A224D722E2041646D696E223B6C6F67696E5F747970657C733A353A2261646D696E223B),
	('1nb1bbg6k3ijvheu6i6r286bpqebnug6', '::1', 1576705782, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363730353738323B61646D696E5F6C6F67696E7C733A313A2231223B61646D696E5F69647C733A313A2231223B6C6F67696E5F757365725F69647C733A313A2231223B6E616D657C733A393A224D722E2041646D696E223B6C6F67696E5F747970657C733A353A2261646D696E223B),
	('8mcr3shggi6e2m1q8v2kbfu5j5rk81re', '::1', 1576526715, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363532363432323B61646D696E5F6C6F67696E7C733A313A2231223B61646D696E5F69647C733A313A2231223B6C6F67696E5F757365725F69647C733A313A2231223B6E616D657C733A393A224D722E2041646D696E223B6C6F67696E5F747970657C733A353A2261646D696E223B666C6173685F6D6573736167657C733A31383A226461746F732061637475616C697A61646F73223B5F5F63695F766172737C613A313A7B733A31333A22666C6173685F6D657373616765223B733A333A226F6C64223B7D),
	('cre29kd9q89l06mttcp5v749tnlk9pi1', '::1', 1576526856, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363532363732363B61646D696E5F6C6F67696E7C733A313A2231223B61646D696E5F69647C733A313A2231223B6C6F67696E5F757365725F69647C733A313A2231223B6E616D657C733A393A224D722E2041646D696E223B6C6F67696E5F747970657C733A353A2261646D696E223B),
	('cvvdea43gcp6tj9lgk1kfbqvca3adlbl', '::1', 1576848680, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363834383436303B61646D696E5F6C6F67696E7C733A313A2231223B61646D696E5F69647C733A313A2231223B6C6F67696E5F757365725F69647C733A313A2231223B6E616D657C733A393A224D722E2041646D696E223B6C6F67696E5F747970657C733A353A2261646D696E223B),
	('dfhp28521m3qe4luteec5a5gt85lncu3', '::1', 1576849103, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363834393039333B61646D696E5F6C6F67696E7C733A313A2231223B61646D696E5F69647C733A313A2231223B6C6F67696E5F757365725F69647C733A313A2231223B6E616D657C733A393A224D722E2041646D696E223B6C6F67696E5F747970657C733A353A2261646D696E223B),
	('djv21apfgmregvse1o3un21ildhlud49', '::1', 1576848454, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363834383135393B61646D696E5F6C6F67696E7C733A313A2231223B61646D696E5F69647C733A313A2231223B6C6F67696E5F757365725F69647C733A313A2231223B6E616D657C733A393A224D722E2041646D696E223B6C6F67696E5F747970657C733A353A2261646D696E223B),
	('hns4tvp87rstv2facogn2u73a8sin48l', '::1', 1576526350, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363532363036373B61646D696E5F6C6F67696E7C733A313A2231223B61646D696E5F69647C733A313A2231223B6C6F67696E5F757365725F69647C733A313A2231223B6E616D657C733A393A224D722E2041646D696E223B6C6F67696E5F747970657C733A353A2261646D696E223B666C6173685F6D6573736167657C733A31383A226461746F732061637475616C697A61646F73223B5F5F63695F766172737C613A313A7B733A31333A22666C6173685F6D657373616765223B733A333A226F6C64223B7D),
	('j7lnvvdjllohkiss7nbm7u5nlal991vl', '::1', 1576527855, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363532373833353B61646D696E5F6C6F67696E7C733A313A2231223B61646D696E5F69647C733A313A2231223B6C6F67696E5F757365725F69647C733A313A2231223B6E616D657C733A393A224D722E2041646D696E223B6C6F67696E5F747970657C733A353A2261646D696E223B),
	('k2d2gekpm18uglqljc5kveu134pv53lf', '::1', 1576848122, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363834373833333B61646D696E5F6C6F67696E7C733A313A2231223B61646D696E5F69647C733A313A2231223B6C6F67696E5F757365725F69647C733A313A2231223B6E616D657C733A393A224D722E2041646D696E223B6C6F67696E5F747970657C733A353A2261646D696E223B666C6173685F6D6573736167657C733A31373A2254656D612073656C656363696F6E61646F223B5F5F63695F766172737C613A313A7B733A31333A22666C6173685F6D657373616765223B733A333A226F6C64223B7D),
	('k607p34s4190a8uc44cna8rrs5iv5alj', '127.0.0.1', 1576419643, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363431393632343B61646D696E5F6C6F67696E7C733A313A2231223B61646D696E5F69647C733A313A2231223B6C6F67696E5F757365725F69647C733A313A2231223B6E616D657C733A393A224D722E2041646D696E223B6C6F67696E5F747970657C733A353A2261646D696E223B),
	('kbh0veo6f6rsu6irk3626i2h70re75p3', '::1', 1576527213, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363532373231303B61646D696E5F6C6F67696E7C733A313A2231223B61646D696E5F69647C733A313A2231223B6C6F67696E5F757365725F69647C733A313A2231223B6E616D657C733A393A224D722E2041646D696E223B6C6F67696E5F747970657C733A353A2261646D696E223B),
	('kg2uohp6qciicu31uqr69t2bhs6tv0fo', '::1', 1577211888, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313537373231313632323B61646D696E5F6C6F67696E7C733A313A2231223B61646D696E5F69647C733A313A2231223B6C6F67696E5F757365725F69647C733A313A2231223B6E616D657C733A393A224D722E2041646D696E223B6C6F67696E5F747970657C733A353A2261646D696E223B),
	('r51627qgof2bhmp5pjojm9m37n25bstu', '::1', 1576849086, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363834383736363B61646D696E5F6C6F67696E7C733A313A2231223B61646D696E5F69647C733A313A2231223B6C6F67696E5F757365725F69647C733A313A2231223B6E616D657C733A393A224D722E2041646D696E223B6C6F67696E5F747970657C733A353A2261646D696E223B),
	('r9nr6ntqmm1kt4pg79c3gl6icitkkguk', '::1', 1576847030, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363834363738303B61646D696E5F6C6F67696E7C733A313A2231223B61646D696E5F69647C733A313A2231223B6C6F67696E5F757365725F69647C733A313A2231223B6E616D657C733A393A224D722E2041646D696E223B6C6F67696E5F747970657C733A353A2261646D696E223B),
	('ret8ep75idos7dvnse1hffero02n8pov', '::1', 1576847064, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363834373034303B61646D696E5F6C6F67696E7C733A313A2231223B61646D696E5F69647C733A313A2231223B6C6F67696E5F757365725F69647C733A313A2231223B6E616D657C733A393A224D722E2041646D696E223B6C6F67696E5F747970657C733A353A2261646D696E223B),
	('vengco0ogr87oe20q9rhpeu3nkrl0lge', '::1', 1576847788, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363834373530353B61646D696E5F6C6F67696E7C733A313A2231223B61646D696E5F69647C733A313A2231223B6C6F67696E5F757365725F69647C733A313A2231223B6E616D657C733A393A224D722E2041646D696E223B6C6F67696E5F747970657C733A353A2261646D696E223B),
	('vkbm5ndjg272v9biioqugfi7nqjkt6dl', '::1', 1576701551, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313537363730313533383B61646D696E5F6C6F67696E7C733A313A2231223B61646D696E5F69647C733A313A2231223B6C6F67696E5F757365725F69647C733A313A2231223B6E616D657C733A393A224D722E2041646D696E223B6C6F67696E5F747970657C733A353A2261646D696E223B);
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name_numeric` longtext COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `class` DISABLE KEYS */;
/*!40000 ALTER TABLE `class` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `class_routine` (
  `class_routine_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `time_end` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `day` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`class_routine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `class_routine` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_routine` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `document` (
  `document_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`document_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `document` DISABLE KEYS */;
/*!40000 ALTER TABLE `document` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `dormitory` (
  `dormitory_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_room` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`dormitory_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `dormitory` DISABLE KEYS */;
/*!40000 ALTER TABLE `dormitory` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `enroll` (
  `enroll_id` int(11) NOT NULL AUTO_INCREMENT,
  `enroll_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `date_added` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`enroll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `enroll` DISABLE KEYS */;
/*!40000 ALTER TABLE `enroll` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `exam` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `expense_category` (
  `expense_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`expense_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `expense_category` DISABLE KEYS */;
INSERT INTO `expense_category` (`expense_category_id`, `name`) VALUES
	(1, 'Teacher Salary'),
	(2, 'Classroom Equipments'),
	(3, 'Classroom Decorations'),
	(4, 'Inventory Purchase'),
	(5, 'Exam Accessories');
/*!40000 ALTER TABLE `expense_category` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `grade_point` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_upto` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_paid` longtext COLLATE utf8_unicode_ci NOT NULL,
  `due` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_timestamp` int(11) NOT NULL,
  `payment_timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'paid or unpaid',
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `language` (
  `phrase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL,
  `spanish` longtext COLLATE utf8_unicode_ci NOT NULL,
  `portuguese` longtext COLLATE utf8_unicode_ci NOT NULL,
  `french` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM AUTO_INCREMENT=393 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `spanish`, `portuguese`, `french`) VALUES
	(1, 'class_routine', 'Class Routine', 'Horarios', 'classe de rotina', 'classe routine'),
	(2, 'dashboard', 'Dashboard', 'Dashboard', 'painel de instrumentos', 'Tableau de bord'),
	(3, 'student', 'Student', 'Estudiante', 'Aluna', '??l??ve'),
	(4, 'admit_student', 'Admit Student', 'Admitir Estudiante', 'Admita Student', 'Admettez ??tudiant'),
	(5, 'admit_bulk_student', 'Admit Bulk Student', 'Admitir  Estudiantes masivamente', 'Admita Student massa', 'Admettez ??tudiant en vrac'),
	(6, 'student_information', 'Student Information', 'Informaci??n del estudiante', 'Informa????es do estudante', 'information sur les ??tudiants'),
	(7, 'class', 'Class', 'Clase', 'Classe', 'Classe'),
	(8, 'student_promotion', 'Student Promotion', 'Promoci??n del estudiante', 'Promo????o Student', 'promotion des ??tudiants'),
	(9, 'teacher', 'Teacher', 'Profesor', 'Professor', 'Professeur'),
	(10, 'parents', 'Parents', 'padres', 'Pais', 'Des parents'),
	(11, 'manage_classes', 'Manage Classes', 'Manejo de Clases', 'Gerenciar Classes', 'G??rer les classes'),
	(12, 'manage_sections', 'Manage Sections', 'Sectores de manejo', 'Gerenciar se????es', 'G??rer les sections'),
	(13, 'subject', 'Subject', 'Tema', 'Sujeito', 'Assujettir'),
	(14, 'daily_attendance', 'Daily Attendance', 'Asistencia diaria', 'Presen??a di??ria', 'pr??sences quotidiennes'),
	(15, 'exam', 'Exam', 'Examen', 'Exame', 'Examen'),
	(16, 'exam_list', 'Exam List', 'Lista de examen', 'Lista de exame', 'Liste d\'examen'),
	(17, 'exam_grades', 'Exam Grades', 'Niveles de examen', 'Notas da Prova', 'Notes d\'examen'),
	(18, 'manage_marks', 'Manage Marks', 'Manejo de marcas', 'Gerenciar Marcas', 'G??rer les marques'),
	(19, 'send_marks_by_sms', 'Send Marks By Sms', 'Enviar calificaciones por sms', 'Enviar Marcas por SMS', 'Envoyer Marks Par Sms'),
	(20, 'tabulation_sheet', 'Tabulation Sheet', 'Hoja de Tabulaci??n', 'Folha de tabula????o', 'Tabulation Sheet'),
	(21, 'accounting', 'Accounting', 'Contabilidad', 'Contabilidade', 'Comptabilit??'),
	(22, 'create_student_payment', 'Create Student Payment', 'Crear Pago Estudiante', 'Criar Student pagamento', 'Cr??er Paiement ??tudiant'),
	(23, 'student_payments', 'Student Payments', 'Los pagos de los estudiantes', 'Pagamentos de estudante', 'Les paiements d\'??tudiants'),
	(24, 'expense', 'Expense', 'Gastos', 'Despesa', 'Frais'),
	(25, 'expense_category', 'Expense Category', 'Categor??a del gasto', 'Categoria de despesa', 'Cat??gorie de d??penses'),
	(26, 'library', 'Library', 'Biblioteca', 'Biblioteca', 'Biblioth??que'),
	(27, 'transport', 'School Bus', 'Transporte', 'Transporte', 'Transport'),
	(28, 'dormitory', 'Hostel', 'Dormitorio', 'Dormit??rio', 'Dortoir'),
	(29, 'noticeboard', 'Noticeboard', 'Anuncios', 'Quadro de not??cias', 'Tableau d\'affichage'),
	(30, 'message', 'Message', 'Mensaje', 'Mensagem', 'Message'),
	(31, 'settings', 'Settings', 'Ajustes', 'Configura????es', 'Param??tres'),
	(32, 'general_settings', 'General Settings', 'Configuraci??n general', 'Configura????es Gerais', 'r??glages g??n??raux'),
	(33, 'sms_settings', 'Sms Settings', 'Configuraci??n de sMS', 'defini????es de SMS', 'Param??tres Sms'),
	(34, 'language_settings', 'Language Settings', 'Ajustes de idioma', 'Configura????es de linguagem', 'Param??tres de langue'),
	(35, 'account', 'Account', 'Cuenta', 'Conta', 'Compte'),
	(36, 'running_session', 'Running Session', 'Gesti??n de Sesi??n', 'correndo Session', 'Courir session'),
	(37, 'edit_profile', 'Edit Profile', 'Editar perfil', 'Editar Perfil', 'Modifier le profil'),
	(38, 'change_password', 'Change Password', 'Cambia la contrase??a', 'Mudar senha', 'Changer le mot de passe'),
	(39, 'add_class_routine', 'Add Class Routine', 'A??adir rutina de la clase', 'Adicione a classe de rotina', 'Ajouter une classe Routine'),
	(40, 'section', 'Section', 'Secci??n', 'Se????o', 'Section'),
	(41, 'edit', 'Edit', 'Editar', 'Editar', 'modifier'),
	(42, 'delete', 'Delete', 'Borrar', 'Excluir', 'Effacer'),
	(43, 'cancel', 'Cancel', 'Cancelar', 'Cancelar', 'Annuler'),
	(44, 'admin_dashboard', 'Admin Dashboard', 'Dashboard admin', 'Painel de administra????o', 'Administrateur Dashboard'),
	(45, 'event_schedule', 'Event Schedule', 'Programa de eventos', 'Calend??rio de eventos', 'Horaire de l\'??v??nement'),
	(46, 'parent', 'Parent', 'Padre', 'parente', 'Parent'),
	(47, 'attendance', 'Attendance', 'Asistencia', 'Comparecimento', 'Pr??sence'),
	(48, 'add_student', 'Add Student', 'A??adir Estudiante', 'Adicionar Student', 'Ajouter ??tudiant'),
	(49, 'addmission_form', 'Addmission Form', 'Formulario de admisi??n', 'forma Admisn', 'forme Admisn'),
	(50, 'name', 'Name', 'Nombre', 'Nome', 'pr??nom'),
	(51, 'value_required', 'Value Required', 'valor Obligatorio', 'valor Obrigat??rio', 'Valeur Obligatoire'),
	(52, 'select', 'Select', 'Seleccionar', 'selecionar', 'S??lectionner'),
	(53, 'select_class_first', 'Select Class First', 'Seleccione Primera Clase', 'Escolha de Primeira Classe', 'S??lectionnez First Class'),
	(54, 'roll', 'Roll', 'Rodar', 'Rolo', 'Roulent'),
	(55, 'birthday', 'Birthday', 'Cumplea??os', 'Anivers??rio', 'Anniversaire'),
	(56, 'gender', 'Gender', 'G??nero', 'G??nero', 'Le genre'),
	(57, 'male', 'Male', 'Masculino', 'Masculino', 'M??le'),
	(58, 'female', 'Female', 'Hembra', 'F??mea', 'Femelle'),
	(59, 'address', 'Address', 'Direcci??n', 'Endere??o', 'Adresse'),
	(60, 'phone', 'Phone', 'Tel??fono', 'Telefone', 'T??l??phone'),
	(61, 'email', 'Email', 'Email', 'O email', 'Email'),
	(62, 'password', 'Password', 'Contrase??a', 'Senha', 'Mot de passe'),
	(63, 'transport_route', 'Transport Route', 'Ruta de Transporte', 'Itiner??rios', 'Transport Route'),
	(64, 'photo', 'Photo', 'Foto', 'foto', 'photo'),
	(65, 'add_bulk_student', 'Add Bulk Student', 'A??adir Estudiante granel', 'Adicionar Student massa', 'Ajouter ??tudiant en vrac'),
	(66, 'select_class', 'Select Class', 'Seleccionar clase', 'Selecionar classe', 'S??lectionnez la classe'),
	(67, 'add_more_students', 'Add More Students', 'A??adir m??s estudiantes', 'Adicionar Mais Estudantes', 'Ajouter d\'autres ??tudiants'),
	(68, 'save_students', 'Save Students', 'guardar estudiantes', 'salve Estudantes', 'Enregistrer les ??tudiants'),
	(69, 'select_section', 'Select Section', 'Seleccionar secci??n', 'Select Section', 'S??lectionnez Section'),
	(70, 'add_new_student', 'Add New Student', 'Agregar nuevo Estudiante', 'Adicionar novo Student', 'Ajouter un nouvel ??tudiant'),
	(71, 'all_students', 'All Students', 'Todos los estudiantes', 'Todos os alunos', 'Tous les ??tudiants'),
	(72, 'options', 'Options', 'opciones', 'op????es', 'options de'),
	(73, 'mark_sheet', 'Mark Sheet', 'Hoja de marca', 'Mark Sheet', 'Mark Sheet'),
	(74, 'profile', 'Profile', 'Perfil', 'Perfil', 'Profil'),
	(75, 'edit_student', 'Edit Student', 'Editar alumno', 'Editar aluno', 'Modifier ??tudiant'),
	(76, 'current_session', 'Current Session', 'Sesi??n actual', 'Sess??o atual', 'Session actuelle'),
	(77, 'promote_to_session', 'Promote To Session', 'Para promover la Sesi??n', 'Promover para a Sess??o', 'Promouvoir Pour Session'),
	(78, 'promotion_from_class', 'Promotion From Class', 'Promoci??n de la Clase', 'Promo????o da classe', 'Promotion de la classe'),
	(79, 'promotion_to_class', 'Promotion To Class', 'Promoci??n para la Clase', 'Promo????o para a Classe', 'Promotion Pour classe'),
	(80, 'select_all', 'Select All', 'Seleccionar todo', 'Selecionar tudo', 'S??lectionner tout'),
	(81, 'select_none', 'Select None', 'Seleccione Ninguno', 'Selecione nenhum', 'Ne rien s??lectionner'),
	(82, 'average', 'Average', 'Promedio', 'M??dia', 'Moyenne'),
	(83, 'promote_slelected_students', 'Promote Slelected Students', 'Promover estudiantes Slelected', 'Promover Estudantes Slelected', 'Promouvoir les ??tudiants Slelected'),
	(84, 'manage_teacher', 'Manage Teacher', 'administrar Maestro', 'Gerenciar professor', 'G??rer l\'enseignant'),
	(85, 'add_new_teacher', 'Add New Teacher', 'Agregar nuevo Maestro', 'Adicionar novo professor', 'Ajouter un nouvel enseignant'),
	(86, 'add_teacher', 'Add Teacher', 'A??adir Maestro', 'Adicionar professor', 'Ajouter Teacher'),
	(87, 'edit_teacher', 'Edit Teacher', 'Editar Maestro', 'Editar professor', 'Modifier enseignant'),
	(88, 'sex', 'Sex', 'Sexo', 'Sexo', 'Sexe'),
	(89, 'marksheet_for', 'Marksheet For', 'las hojas de calificaci??n para', 'Marcar folhas para', 'Marquer les feuilles pour'),
	(90, 'total_marks', 'Total Marks', 'Notas totales', 'total de Marcas', 'total de points'),
	(91, 'average_grade_point', 'Average Grade Point', 'Promedio de calificaciones', 'Ponto de classe m??dia', 'Point de grade moyen'),
	(92, 'print_marksheet', 'Print Marksheet', 'Imprimir las hojas de calificaci??n', 'folhas marca de impress??o', 'Imprimer les feuilles de marque'),
	(93, 'student_marksheet', 'Student Marksheet', 'Los alumnos que marquen las hojas', 'Os alunos marcar folhas', 'Les ??l??ves marquent feuilles'),
	(94, 'parent_phone', 'Parent Phone', 'Tel??fono de los padres', 'pais Telefone', 'Parent t??l??phone'),
	(95, 'all_parents', 'All Parents', 'todos los padres', 'Todos os Pais', 'Tous les parents'),
	(96, 'add_new_parent', 'Add New Parent', 'A??adir nuevo elemento primario', 'Adicionar Novo Parent', 'Ajouter un nouveau Parent'),
	(97, 'profession', 'Profession', 'Profesi??n', 'Profiss??o', 'M??tier'),
	(98, 'add_parent', 'Add Parent', 'A??adir Padres', 'Adicionar Parent', 'Ajouter Parent'),
	(99, 'update', 'Update', 'Actualizar', 'Atualizar', 'Mettre ?? jour'),
	(100, 'manage_class', 'Manage Class', 'Manejo de Clase', 'Gerenciar Classe', 'G??rer la classe'),
	(101, 'class_list', 'Class List', 'Lista de clase', 'Lista de Classes', 'Liste des classes'),
	(102, 'add_class', 'Add Class', 'Agregar clase', 'Adicione a classe', 'Ajouter une classe'),
	(103, 'class_name', 'Class Name', 'Nombre de la clase', 'Nome da classe', 'Nom du cours'),
	(104, 'numeric_name', 'Numeric Name', 'Nombre num??rico', 'Nome num??rico', 'Nom num??rique'),
	(105, 'name_numeric', 'Name Numeric', 'nombre num??rico', 'nome num??rico', 'Nom num??rique'),
	(106, 'select_teacher', 'Select Teacher', 'Seleccione Maestro', 'Escolha um professor', 'S??lectionnez ce professeur'),
	(107, 'edit_class', 'Edit Class', 'Editar clase', 'Editar Classe', 'Modifier la classe'),
	(108, 'add_new_section', 'Add New Section', 'A??adir Nueva Secci??n', 'Adicionar Nova Se????o', 'Ajouter un nouvel article'),
	(109, 'section_name', 'Section Name', 'Nombre de la secci??n', 'Nome da se????o', 'Nom de la section'),
	(110, 'nick_name', 'Nick Name', 'Nombre Nick', 'Nome Nick', 'Surnom'),
	(111, 'add_section', 'Add Section', 'A??adir Secci??n', 'Adicionar Se????o', 'Ajouter Section'),
	(112, 'manage_subject', 'Manage Subject', 'Administrar Asunto', 'Gerenciar Assunto', 'G??rer Sujet'),
	(113, 'subject_list', 'Subject List', 'Lista de asuntos', 'Assunto Lista', 'Liste Sujet'),
	(114, 'add_subject', 'Add Subject', 'A??adir asunto', 'Adicionar assunto', 'Ajouter un sujet'),
	(115, 'subject_name', 'Subject Name', 'Nombre de la asignatura', 'Nome Assunto', 'Nom Sujet'),
	(116, 'edit_subject', 'Edit Subject', 'Editar asunto', 'Editar assunto', 'Modifier Objet'),
	(117, 'day', 'Day', 'D??a', 'Dia', 'journ??e'),
	(118, 'starting_time', 'Starting Time', 'Tiempo de empezar', 'Tempo de partida', 'Heure de d??part'),
	(119, 'hour', 'Hour', 'Hora', 'Hora', 'Heure'),
	(120, 'minutes', 'Minutes', 'Minutos', 'Minutos', 'Minutes'),
	(121, 'ending_time', 'Ending Time', 'terminando Tiempo', 'Tempo Final', 'Fin Temps'),
	(122, 'edit_class_routine', 'Edit Class Routine', 'Rutina de edici??n Clase', 'Editar Classe de rotina', 'Modifier la classe de routine'),
	(123, 'select_subject', 'Select Subject', 'Seleccione Tema', 'Selecione Assunto', 'S??lectionnez Objet'),
	(124, 'manage_daily_attendance', 'Manage Daily Attendance', 'Manejo de Asistencia Diaria', 'Gerenciar atendimento di??rio', 'G??rer pr??sences quotidiennes'),
	(125, 'select_date', 'Select Date', 'Seleccione fecha', 'Selecione Data', 'S??lectionnez date'),
	(126, 'select_month', 'Select Month', 'Seleccione mes', 'Selecione o m??s', 'S??lectionnez un mois'),
	(127, 'select_year', 'Select Year', 'Seleccionar a??o', 'Selecione o ano', 'S??lectionnez Ann??e'),
	(128, 'manage_attendance', 'Manage Attendance', 'Manejo de Asistencia', 'Gerenciar Presen??a', 'G??rer Participation'),
	(129, 'manage_exam', 'Manage Exam', 'Manejo de examen', 'Gerenciar Exam', 'G??rer examen'),
	(130, 'add_exam', 'Add Exam', 'A??adir Examen', 'Adicionar Exam', 'Ajouter examen'),
	(131, 'exam_name', 'Exam Name', 'Nombre del examen', 'exame Nome', 'Nom d\'examen'),
	(132, 'date', 'Date', 'Fecha', 'Encontro', 'date'),
	(133, 'comment', 'Comment', 'Comentario', 'Comente', 'Commentaire'),
	(134, 'edit_exam', 'Edit Exam', 'Editar examen', 'Editar Exame', 'Modifier examen'),
	(135, 'manage_grade', 'Manage Grade', 'Manejo de Grado', 'Gerenciar Grade', 'G??rer ann??e'),
	(136, 'grade_list', 'Grade List', 'Lista de calificaciones', 'Lista Grade', 'Liste de grade'),
	(137, 'add_grade', 'Add Grade', 'A??adir Grado', 'Adicionar Grade', 'Ajouter grade'),
	(138, 'grade_name', 'Grade Name', 'Nombre grado', 'Nome grau', 'Nom de grade'),
	(139, 'grade_point', 'Grade Point', 'Punto de grado', 'Ponto de classifica????o', 'grade point'),
	(140, 'mark_from', 'Mark From', 'mark De', 'Mark De', 'Mark De'),
	(141, 'mark_upto', 'Mark Upto', 'hasta mark', 'Mark Upto', 'Mark Upto'),
	(142, 'manage_exam_marks', 'Manage Exam Marks', 'Manejo de Marcas del examen', 'Gerenciar marcas de exame', 'G??rer les marques d\'examen'),
	(143, 'select_exam', 'Select Exam', 'Elija un examen', 'Select Exam', 'S??lectionnez Exam'),
	(144, 'send_marks', 'Send Marks', 'Enviar marcas', 'Enviar Marcas', 'Envoyer Marks'),
	(145, 'select_receiver', 'Select Receiver', 'Seleccione receptor', 'Selecione Receiver', 'S??lectionnez r??cepteur'),
	(146, 'students', 'Students', 'Los estudiantes', 'estudantes', '??l??ves'),
	(147, 'select_a_class', 'Select A Class', 'Seleccione una clase', 'Selecione uma classe', 'S??lectionnez une classe'),
	(148, 'select_an_exam', 'Select An Exam', 'Seleccione un examen', 'Escolha um exame', 'S??lectionnez Un examen'),
	(149, 'view_tabulation_sheet', 'View Tabulation Sheet', 'Ver hoja de tabulaci??n', 'Ver Folha de Tabula????o', 'Voir Tabulation Sheet'),
	(150, 'subjects', 'Subjects', 'Asignaturas', 'assuntos', 'Sujets'),
	(151, 'total', 'Total', 'Total', 'Total', 'Total'),
	(152, 'create_single_invoice', 'Create Single Invoice', 'Crear sola factura', 'Criar factura ??nica', 'Cr??er facture unique'),
	(153, 'create_mass_invoice', 'Create Multi Invoice', 'Crear una masa de facturas', 'Criar Mass Invoice', 'Cr??er Mass Invoice'),
	(154, 'invoice_informations', 'Invoice Informations', 'Informaciones de factura', 'Informa????es factura', 'Informations de facturation'),
	(155, 'title', 'Title', 'T??tulo', 'T??tulo', 'Titre'),
	(156, 'description', 'Description', 'Descripci??n', 'Descri????o', 'La description'),
	(157, 'payment_informations', 'Payment Informations', 'Informaci??n sobre el pago', 'Informa????es de pagamento', 'Informations de paiement'),
	(158, 'enter_total_amount', 'Enter Total Amount', 'Ingrese monto total', 'Digite Valor Total', 'Entrez Montant total'),
	(159, 'payment', 'Payment', 'Pago', 'Pagamento', 'Paiement'),
	(160, 'enter_payment_amount', 'Enter Payment Amount', 'Ingrese monto de pago', 'Digite Valor do Pagamento', 'Entrez le montant du paiement'),
	(161, 'status', 'Status', 'Estado', 'estado', 'statut'),
	(162, 'paid', 'Paid', 'Pagado', 'Pago', 'Pay??'),
	(163, 'unpaid', 'Unpaid', 'No pagado', 'n??o remunerado', 'Non pay??'),
	(164, 'method', 'Method', 'M??todo', 'M??todo', 'la m??thode'),
	(165, 'cash', 'Cash', 'Efectivo', 'Dinheiro', 'Argent liquide'),
	(166, 'check', 'Check', 'Comprobar', 'Verifica', 'V??rifier'),
	(167, 'card', 'Card', 'Tarjeta', 'Cart??o', 'Carte'),
	(168, 'add_invoice', 'Add Invoice', 'A??adir factura', 'Adicionar Invoice', 'Ajouter facture'),
	(169, 'unpaid_invoices', 'Unpaid Invoices', 'facturas impagadas', 'As facturas n??o pagas', 'factures impay??es'),
	(170, 'payment_history', 'Payment History', 'historial de pagos', 'Hist??rico de pagamento', 'historique de paiement'),
	(171, 'amount', 'Amount', 'Cantidad', 'Quantidade', 'Montant'),
	(172, 'expenses', 'Expenses', 'Gastos', 'despesas', 'D??penses'),
	(173, 'add_new_expense', 'Add New Expense', 'A??adir nuevo gasto', 'Adicionar nova despesa', 'Ajouter New Expense'),
	(174, 'category', 'Category', 'Categor??a', 'Categoria', 'Cat??gorie'),
	(175, 'add_expense', 'Add Expense', 'A??adir Gasto', 'Adicionar Despesa', 'Ajouter Expense'),
	(176, 'select_expense_category', 'Select Expense Category', 'Seleccione una categor??a de gastos', 'Selecione a categoria de despesa', 'S??lectionnez Cat??gorie de d??penses'),
	(177, 'add_new_expense_category', 'Add New Expense Category', 'A??adir Nueva Categor??a del gasto', 'Adicionar Nova Categoria de Despesa', 'Ajouter une nouvelle cat??gorie de d??penses'),
	(178, 'add_expense_category', 'Add Expense Category', 'A??adir Categor??a del gasto', 'Adicionar Categoria de Despesa', 'Ajouter cat??gorie de d??penses'),
	(179, 'edit_expense', 'Edit Expense', 'Edici??n de gastos', 'Editar Despesa', 'Modifier Expense'),
	(180, 'manage_library_books', 'Manage Library Books', 'Manejo de libros de la biblioteca', 'Gerenciar Biblioteca Livros', 'G??rer des livres de biblioth??que'),
	(181, 'book_list', 'Book List', 'Lista de libros', 'Lista de livros', 'Liste de livres'),
	(182, 'add_book', 'Add Book', 'A??adir libro', 'Adicionar livro', 'Description du livre'),
	(183, 'book_name', 'Book Name', 'Nombre del libro', 'Nome do livro', 'Nom du livre'),
	(184, 'author', 'Author', 'Autor', 'Autor', 'Auteur'),
	(185, 'price', 'Price', 'Precio', 'Pre??o', 'Prix'),
	(186, 'available', 'Available', 'Disponible', 'Dispon??vel', 'Disponible'),
	(187, 'unavailable', 'Unavailable', 'Indisponible', 'Indispon??vel', 'Indisponible'),
	(188, 'manage_transport', 'Manage Transport', 'Manejo de Transporte', 'Gerenciar Transportes', 'G??rer Transport'),
	(189, 'transport_list', 'Transport List', 'Lista de transporte', 'Lista de transportes', 'Liste des transports'),
	(190, 'add_transport', 'Add Transport', 'A??adir Transporte', 'Adicionar Transportes', 'Ajouter Transport'),
	(191, 'route_name', 'Route Name', 'Nombre ruta', 'Nome Route', 'Nom de la route'),
	(192, 'number_of_vehicle', 'Number Of Vehicle', 'N??mero de veh??culos', 'N??mero de Ve??culo', 'Nombre de v??hicules'),
	(193, 'route_fare', 'Route Fare', 'Fare ruta', 'Tarifa Route', 'Route Fare'),
	(194, 'edit_transport', 'Edit Transport', 'Editar Transporte', 'Editar Transportes', 'Modifier Transport'),
	(195, 'manage_dormitory', 'Manage Dormitory', 'administrar compartida', 'Gerenciar Dormit??rio', 'G??rer Dortoir'),
	(196, 'dormitory_list', 'Hostel List', 'Lista dormitorio', 'Lista dormit??rio', 'Liste Dortoir'),
	(197, 'add_dormitory', 'Add Hostel', 'A??adir compartida', 'Adicionar Dormit??rio', 'Ajouter Dortoir'),
	(198, 'dormitory_name', 'Hostel Name', 'Nombre del dormitorio', 'Nome dormit??rio', 'Nom Dortoir'),
	(199, 'number_of_room', 'Hostel Of Room', 'N??mero de habitaci??n', 'N??mero de salas', 'Nombre de chambres'),
	(200, 'edit_dormitory', 'Edit Dormitory', 'Editar compartida', 'Editar Dormit??rio', 'Modifier Dortoir'),
	(201, 'manage_noticeboard', 'Manage Noticeboard', 'administrar tabl??n de anuncios', 'Gerenciar Noticeboard', 'G??rer Noticeboard'),
	(202, 'noticeboard_list', 'Noticeboard List', 'Lista tabl??n de anuncios', 'Lista de avisos', 'Liste de Noticeboard'),
	(203, 'add_noticeboard', 'Add Noticeboard', 'A??adir tabl??n de anuncios', 'Adicionar Noticeboard', 'Ajouter Noticeboard'),
	(204, 'notice', 'Notice', 'darse cuenta', 'Aviso pr??vio', 'Avis'),
	(205, 'add_notice', 'Add Notice', 'A??adir Aviso', 'Adicionar Notice', 'Ajouter l\'avis'),
	(206, 'send_sms_to_all', 'Send Sms To All', 'Enviar SMS a todos', 'Enviar SMS a todos os', 'Envoyer Sms Pour Tous'),
	(207, 'yes', 'Yes', 'S??', 'sim', 'Oui'),
	(208, 'no', 'No', 'No', 'N??o', 'Non'),
	(209, 'sms_service_not_activated', 'Sms Service Not Activated', 'El servicio de SMS no activado', 'Servi??o de SMS N??o Activado', 'Service Sms non activ??'),
	(210, 'private_messaging', 'Private Messaging', 'Mensajer??a privada', 'Mensagens privadas', 'Messagerie priv??e'),
	(211, 'messages', 'Messages', 'mensajes', 'mensagens', 'messages'),
	(212, 'new_message', 'New Message', 'Nuevo mensaje', 'Nova mensagem', 'Nouveau message'),
	(213, 'write_new_message', 'Write New Message', 'Escribir un nuevo mensaje', 'Escrever Nova Mensagem', 'Ecrire un nouveau message'),
	(214, 'recipient', 'Recipient', 'Recipiente', 'benefici??rio', 'B??n??ficiaire'),
	(215, 'select_a_user', 'Select A User', 'Seleccione un usuario', 'Selecione um usu??rio', 'S??lectionnez un utilisateur'),
	(216, 'write_your_message', 'Write Your Message', 'Escribe tu mensaje', 'Escreva sua mensagem', 'R??digez votre message'),
	(217, 'send', 'Send', 'Enviar', 'Enviar', 'Envoyer'),
	(218, 'system_settings', 'System Settings', 'Ajustes del sistema', 'Configura????es de sistema', 'Les param??tres du syst??me'),
	(219, 'system_name', 'System Name', 'Nombre del sistema', 'Name System', 'Name System'),
	(220, 'system_title', 'System Title', 'sistema de T??tulo', 'T??tulo sistema', 'syst??me Titre'),
	(221, 'paypal_email', 'Paypal Email', 'paypal Email', 'Paypal e-mail', 'Paypal Email'),
	(222, 'currency', 'Currency', 'Moneda', 'Moeda', 'Devise'),
	(223, 'system_email', 'System Email', 'sistema de correo electr??nico', 'sistema de E-mail', 'syst??me Email'),
	(224, 'select_running_session', 'Select Running Session', 'Seleccione Ejecuci??n de Sesi??n', 'Selecione Executar Session', 'S??lectionnez Ex??cution Session'),
	(225, 'language', 'Language', 'Idioma', 'L??ngua', 'La langue'),
	(226, 'text_align', 'Text Align', 'Alinear texto', 'Alinhar texto', 'Text Align'),
	(227, 'save', 'Save', 'Guardar', 'Salvar', 'sauvegarder'),
	(228, 'update_product', 'Update Product', 'actualizaci??n del producto', 'atualiza????o do produto', 'Mise ?? jour du produit'),
	(229, 'file', 'File', 'Archivo', 'Arquivo', 'Fichier'),
	(230, 'install_update', 'Install Update', 'Instalar actualizaci??n', 'Instalar atualiza????o', 'Installer la mise ?? jour'),
	(231, 'theme_settings', 'Theme Settings', 'Ajustes de tema', 'Configura????es de tema', 'R??glage des th??mes'),
	(232, 'default', 'Default', 'Defecto', 'Padr??o', 'D??faut'),
	(233, 'select_theme', 'Select Theme', 'Seleccionar tema', 'Escolha um tema', 'S??lectionne un th??me'),
	(234, 'select_a_theme_to_make_changes', 'Select A Theme To Make Changes', 'Seleccione un tema para hacer cambios', 'Selecione um tema para fazer mudan??as', 'S??lectionnez un th??me pour effectuer des modifications'),
	(235, 'upload_logo', 'Upload Logo', 'Subir Logo', 'Carregar Logo', 'T??l??charger Logo'),
	(236, 'upload', 'Upload', 'Subir', 'Envio', 'T??l??charger'),
	(237, 'select_a_service', 'Select A Service', 'Seleccione un servicio', 'Seleccione um servi??o', 'S??lectionnez un service'),
	(238, 'not_selected', 'Not Selected', 'No seleccionado', 'N??o selecionado', 'Non s??l??ctionn??'),
	(239, 'disabled', 'Disabled', 'Discapacitado', 'Desativado', 'd??sactiv??'),
	(240, 'clickatell_username', 'Clickatell Username', 'Nombre de usuario Clickatell', 'Clickatell usu??rio', 'Clickatell Nom d\'utilisateur'),
	(241, 'clickatell_password', 'Clickatell Password', 'clickatell contrase??a', 'Senha Clickatell', 'Clickatell Mot de passe'),
	(242, 'clickatell_api_id', 'Clickatell Api Id', 'Clickatell Api Id', 'Clickatell Api Id', 'Clickatell Api Id'),
	(243, 'twilio_account', 'Twilio Account', 'cuenta Twilio', 'Conta Twilio', 'compte Twilio'),
	(244, 'authentication_token', 'Authentication Token', 'Token de autenticaci??n', 'Autentica????o de token', 'authentification Token'),
	(245, 'registered_phone_number', 'Registered Phone Number', 'N??mero de tel??fono registrado', 'N??mero de telefone registado', 'Num??ro de t??l??phone enregistr??'),
	(246, 'manage_language', 'Manage Language', 'Manejo de Lenguaje', 'Gerenciar Idioma', 'G??rer Langue'),
	(247, 'language_list', 'Language List', 'Lista de idiomas', 'Lista idioma', 'Liste des langues'),
	(248, 'add_phrase', 'Add Phrase', 'A??adir Palabra', 'Adicionar Frase', 'Ajouter Phrase'),
	(249, 'add_language', 'Add Language', 'Agregar idioma', 'Adicionar idioma', 'Ajouter une langue'),
	(250, 'option', 'Option', 'Opci??n', 'Op????o', 'Option'),
	(251, 'edit_phrase', 'Edit Phrase', 'Editar Palabra', 'Editar Frase', 'Modifier Phrase'),
	(252, 'delete_language', 'Delete Language', 'Eliminar idioma', 'excluir Idioma', 'Supprimer Langue'),
	(253, 'phrase', 'Phrase', 'Palabra', 'Frase', 'Phrase'),
	(254, 'manage_profile', 'Manage Profile', 'administrar perfil', 'Gerenciar perfil', 'G??rer le profil'),
	(255, 'update_profile', 'Update Profile', 'Actualizaci??n del perfil', 'Atualizar perfil', 'Mettre ?? jour le profil'),
	(256, 'current_password', 'Current Password', 'Contrase??a actual', 'senha atual', 'Mot de passe actuel'),
	(257, 'new_password', 'New Password', 'Nueva contrase??a', 'Nova senha', 'nouveau mot de passe'),
	(258, 'confirm_new_password', 'Confirm New Password', 'Confirmar nueva contrase??a', 'Confirme a nova senha', 'Confirmer le nouveau mot de passe'),
	(259, 'login', 'Login', 'Iniciar sesi??n', 'Entrar', 'S\'identifier'),
	(260, 'forgot_your_password', 'Forgot Your Password', 'Olvidaste tu contrase??a', 'Esqueceu sua senha', 'Mot de passe oubli??'),
	(261, 'reset_password', 'Reset Password', 'Restablecer la contrase??a', 'Trocar a senha', 'r??initialiser le mot de passe'),
	(262, 'return_to_login_page', 'Return To Login Page', 'Volver a inicio p??gina', 'Retornar ?? p??gina de login', 'Retour ?? la page de connexion'),
	(263, 'service_is_disabled', 'Service Is Disabled', 'Servicio est?? deshabilitado', 'Servi??o for desativado', 'Service est d??sactiv??'),
	(264, 'promote_to_selected_class', 'Promote To Selected Class', 'Para promover la clase seleccionada', 'Promover para a classe selecionada', 'Promouvoir Pour la classe s??lectionn??e'),
	(265, 'stay_in_present_class', 'Stay In Present Class', 'Estancia en clase real', 'Stay In Classe atual', 'Stay In Class Present'),
	(266, 'data_updated', 'Data Updated', 'datos actualizados', 'dados atualizados', 'Mise ?? jour des donn??es'),
	(267, 'data_added_successfully', 'Data Added Successfully', 'Datos a??adido correctamente', 'Dados adicionado com sucesso', 'Donn??es Ajout?? avec succ??s'),
	(268, 'edit_grade', 'Edit Grade', 'Editar Grado', 'Editar Grade', 'Modifier ann??e'),
	(269, 'manage_attendance_of_class', 'Manage Attendance Of Class', 'Gestionar asistencia de Clase', 'Gerenciar presen??a de Classe', 'G??rer Participation de classe'),
	(270, 'present', 'Present', 'Presente', 'Presente', 'Pr??sent'),
	(271, 'absent', 'Absent', 'Ausente', 'Ausente', 'Absent'),
	(272, 'update_attendance', 'Update Attendance', 'actualizaci??n de Asistencia', 'Presen??a atualiza????o', 'Mise ?? jour de pr??sence'),
	(273, 'undefined', 'Undefined', 'Indefinido', 'Indefinido', 'Ind??fini'),
	(274, 'back', 'Back', 'Espalda', 'Costas', 'Arri??re'),
	(275, 'save_changes', 'Save Changes', 'Guardar cambios', 'Salvar altera????es', 'Sauvegarder les modifications'),
	(276, 'data_deleted', 'Data Deleted', 'datos eliminados', 'dados apagados', 'donn??es supprim??es'),
	(277, 'academic_syllabus', 'Teacher Suggestion', 'Plan de estudios acad??micos', 'Programa acad??mico', 'Syllabus Academic'),
	(278, 'add_teacher_suggestion', 'Add Teacher Suggestion', 'A??adir programa acad??mico', 'Adicionar Programa Acad??mico', 'Ajouter Syllabus Academic'),
	(279, 'uploader', 'Uploader', 'Uploader', 'Uploader', 'Uploader'),
	(280, 'upload_teacher_suggestion', 'Upload Teacher Suggestion', 'Cargar programa acad??mico', 'Carregar Programa Acad??mico', 'T??l??charger Academic Syllabus'),
	(281, 'upload_syllabus', 'Upload Syllabus', 'Subir Syllabus', 'Carregar Syllabus', 'T??l??charger Syllabus'),
	(282, 'syllabus_uploaded', 'Syllabus Uploaded', 'Plan de estudios Subida', 'Syllabus Uploaded', 'Syllabus T??l??charg??e'),
	(283, 'download', 'Download', 'Descargar', 'baixar', 'T??l??charger'),
	(284, 'remove', 'Remove', 'retirar', 'Remover', 'Retirer'),
	(285, 'print', 'Print', 'Impresi??n', 'Impress??o', 'Impression'),
	(286, 'teacher_dashboard', 'Teacher Dashboard', 'Dashboard del profesor', 'professor do dashboard', 'Tableau de bord des enseignants'),
	(287, 'study_material', 'Study Material', 'Material de estudio', 'Material de estudo', 'Mat??riel d\'??tude'),
	(288, 'teacher_list', 'Teacher List', 'Lista maestro', 'Lista do professor', 'Liste des enseignants'),
	(289, 'manage_class_routine', 'Manage Class Routine', 'Manejo de rutina de la clase', 'Gerenciar Classe Rotina', 'G??rer la classe Routine'),
	(290, 'class_routine_list', 'Class Routine List', 'Lista de rutina de la clase', 'Classe Lista de rotina', 'Classe Liste de routine'),
	(291, 'add_study_material', 'Add Study Material', 'A??adir Material de Estudio', 'Adicionar Material de Estudo', 'Ajouter Mat??riel d\'??tude'),
	(292, 'file_type', 'File Type', 'Tipo de archivo', 'Tipo de arquivo', 'Type de fichier'),
	(293, 'select_file_type', 'Select File Type', 'Seleccione el tipo de archivo', 'Selecionar Tipo de Arquivo', 'S??lectionner le type de fichier'),
	(294, 'image', 'Image', 'Imagen', 'Imagem', 'image'),
	(295, 'doc', 'Doc', 'Doctor', 'doutor', 'Doc'),
	(296, 'pdf', 'Pdf', 'pdf', 'Pdf', 'Pdf'),
	(297, 'excel', 'Excel', 'Sobresalir', 'sobressair', 'Exceller'),
	(298, 'other', 'Other', 'Otro', 'De outros', 'Autre'),
	(299, 'manage_promotion', 'Manage Promotion', 'Manejo de Promoci??n', 'Gerenciar Promo????o', 'G??rer promotion'),
	(300, 'select_class_for_promotion_to_and_from', 'Select Class For Promotion To And From', 'Seleccione Clase para la promoci??n hacia y desde', 'Selecione Classe de promo????o a partir E', 'S??lectionnez la classe pour la promotion ?? Et De'),
	(301, 'students_of_class', 'Students Of Class', 'Los estudiantes de la clase', 'Os alunos da classe', 'Les ??l??ves de la classe'),
	(302, 'enroll_to_class', 'Enroll To Class', 'Para inscribirse Clase', 'Se inscrever para a Classe', 'Inscrivez-vous ?? la classe'),
	(303, 'add_a_row', 'Add A Row', 'A??adir Fila', 'Adicionar Fila', 'Ajouter rang'),
	(304, 'marks_obtained', 'Marks Obtained', 'marcas obtenidas', 'notas obtidas', 'Notes obtenues'),
	(305, 'marks_updated', 'Marks Updated', 'Actualizado marcas', 'marcas Atualizado', 'Marks Mise ?? jour'),
	(306, 'marks_for', 'Marks For', 'Para las marcas', 'marcas para', 'Marks Pour'),
	(307, 'attendance_for_class', 'Attendance For Class', 'Para la asistencia a clase', 'Presen??a Para a Classe', 'Participation Pour la classe'),
	(308, 'print_tabulation_sheet', 'Print Tabulation Sheet', 'Imprimir hoja de tabulaci??n', 'Folha de Tabula????o de impress??o', 'Imprimer Tabulation Sheet'),
	(309, 'receiver', 'Receiver', 'Receptor', 'recebedor', 'R??cepteur'),
	(310, 'please_select_receiver', 'Please Select Receiver', 'Por favor seleccione Receptor', 'Selecione Receiver', 'S\'il vous pla??t S??lectionnez Receiver'),
	(311, 'session_changed', 'Session Changed', 'sesi??n Changed', 'sess??o Changed', 'session Changed'),
	(312, 'attendance_updated', 'Attendance Updated', 'La asistencia Actualizado', 'Presen??a Atualizado', 'Participation Mise ?? jour'),
	(313, 'study_material_info_saved_successfuly', 'Study Material Info Saved Successfuly', 'Material de Estudio informaci??n guardada exitosamente', 'Material de Estudo Informa????es com sucesso Salvo', 'Mat??riel d\'??tude Infos enregistr??es successfuly'),
	(314, 'edit_study_material', 'Edit Study Material', 'Editar Material de Estudio', 'Editar Material de Estudo', 'Modifier Mat??riel d\'??tude'),
	(315, 'parent_dashboard', 'Parent Dashboard', 'Dashboard de Padres', 'Painel pai', 'Tableau de bord Parent'),
	(316, 'exam_marks', 'Exam Marks', 'marcas de examen', 'Marcas de exame', 'Marques d\'examen'),
	(317, 'total_mark', 'Total Mark', 'Puntuaci??n total', 'total de Mark', 'total Mark'),
	(318, 'mark_obtained', 'Mark Obtained', 'Nota obtenida', 'Mark Obtido', 'Mark Obtenu'),
	(319, 'manage_invoice/payment', 'Manage Invoice/payment', 'Manejo de la factura / pago', 'Gerenciar fatura / pagamento', 'G??rer facture / paiement'),
	(320, 'invoice/payment_list', 'Invoice/payment List', 'Lista de factura / pago', 'Invoice / Lista de pagamento', 'Facture / Liste de paiement'),
	(321, 'student_dashboard', 'Student Dashboard', 'Dashboard del estudiante', 'Painel Student', 'Tableau de bord de l\'??l??ve'),
	(322, 'obtained_marks', 'Obtained Marks', 'calificaciones obtenidas', 'notas obtidas', 'Les notes obtenues'),
	(323, 'highest_mark', 'Highest Mark', 'Marcos m??s alto', 'maior Mark', 'le plus ??lev?? Mark'),
	(324, 'grade', 'Grade', 'Grado', 'Grau', 'Qualit??'),
	(325, 'take_payment', 'Take Payment', 'tome Pago', 'tome pagamento', 'Prenez paiement'),
	(326, 'view_invoice', 'View Invoice', 'Ver factura', 'Ver Invoice', 'Voir la facture'),
	(327, 'creation_date', 'Creation Date', 'Fecha de creaci??n', 'Data de cria????o', 'Date de cr??ation'),
	(328, 'payment_to', 'Payment To', 'Pago Para', 'Pagamento para', 'Paiement ??'),
	(329, 'bill_to', 'Bill To', 'Cobrar a', 'Projeto de lei para', 'Facturer'),
	(330, 'total_amount', 'Total Amount', 'Cantidad total', 'Valor total', 'Montant total'),
	(331, 'paid_amount', 'Paid Amount', 'Monto de pago', 'Quantidade paga', 'Montant pay??'),
	(332, 'due', 'Due', 'Debido', 'Devido', 'D??'),
	(333, 'amount_paid', 'Amount Paid', 'Cantidad pagada', 'Quantia paga', 'Le montant pay??'),
	(334, 'payment_successfull', 'Payment Successfull', 'Pago exitoso', 'Successfull pagamento', 'Paiement Successfull'),
	(335, 'add_invoice/payment', 'Add Invoice/payment', 'A??adir factura / pago', 'Adicionar fatura / pagamento', 'Ajouter Facture / paiement'),
	(336, 'invoices', 'Invoices', 'Facturas', 'facturas', 'factures'),
	(337, 'action', 'Action', 'Acci??n', 'A??ao', 'action'),
	(338, 'required', 'Required', 'Necesario', 'Requeridos', 'Obligatoire'),
	(339, 'info', 'Info', 'Informaci??n', 'informa????es', 'Info'),
	(340, 'view_academic_performance', 'View Academic Performance', 'Ver Rendimiento Acad??mico', 'Ver Desempenho Acad??mico', 'Voir le rendement scolaire'),
	(341, 'phrase_list', 'Phrase List', 'Lista palabra', 'Lista frase', 'Liste Phrase'),
	(342, 'update_phrase', 'Update Phrase', 'Actualizar palabras', 'Frase atualiza????o', 'Mise ?? jour Phrase'),
	(343, 'edit_invoice', '', 'Editar factura', '', ''),
	(344, 'students_added', '', 'Estudiantes agregados', '', ''),
	(345, 'student_already_enrolled', '', 'estudiante ya matriculado', '', ''),
	(346, 'new_enrollment_successfull', '', 'Nueva inscripci??n exitosa', '', ''),
	(347, 'reply_message', '', 'Mensaje de respuesta', '', ''),
	(348, 'daily_atendance', '', 'Asistencia', '', ''),
	(349, 'attendance_report', '', 'Reporte de asistencia', '', ''),
	(350, 'study_material_info_updated_successfuly', '', 'Actualizaci??n de informaci??n de material de estudio', '', ''),
	(351, 'running', '', 'corriendo', '', ''),
	(352, 'archived', '', 'Archivado', '', ''),
	(353, 'show_report', '', 'Mostrar reporte', '', ''),
	(354, 'attendance_report_of_class', '', 'Asistencia informe de clase', '', ''),
	(355, 'attendance_sheet', '', 'Hoja de asistencia', '', ''),
	(356, 'print_attendance_sheet', '', 'Imprimir hoja de asistencia', '', ''),
	(357, 'mark_archive', '', 'Marcar archivo', '', ''),
	(358, 'remove_from_archive', '', 'Eliminar del archivo', '', ''),
	(359, 'print/view_notice', '', 'imprimir / ver aviso', '', ''),
	(360, 'view_notice', '', 'Vista noticia', '', ''),
	(361, 'month', 'Month', 'Mes', 'm??s', 'mois'),
	(362, 'product_updated_successfully', '', 'Producto actualizado ??xito', '', ''),
	(363, 'reset_password', 'Reset Password', 'restablecer la contrase??a', '', ''),
	(367, 'password_update', 'Password Update', 'Actualizar contrase??a', '', ''),
	(369, 'my_profile', 'My Profile', 'Mi Perfil', 'meu perfil', 'mon profil'),
	(370, 'password_mismatch', '', 'la contrase??a no coincide', '', ''),
	(371, 'password_updated', '', 'contrase??a actualizada', '', ''),
	(372, 'email_account_use', 'This Email account already used', 'Esta cuenta de correo electr??nico ya se utiliza', 'Esta conta e-mail j?? utilizado', 'Ce compte Email d??j?? utilis??'),
	(373, 'theme_selected', '', 'Tema seleccionado', '', ''),
	(374, 'admin', '', 'administraci??n', '', ''),
	(375, 'edit_notice', '', 'Editar noticia', '', ''),
	(376, 'account_updated', '', 'Cuenta actualizada', '', ''),
	(377, 'on', '', 'en', '', ''),
	(378, 'message_sent!', '', '??mensaje enviado!', '', ''),
	(379, 'teacher_suggestion', '', 'Sugerencia del profesor', '', ''),
	(380, 'upload_suggestion', '', 'subir sugerencia', '', ''),
	(381, 'add_teacher_suggestion', '', 'Agregar sugerencia del maestro', '', ''),
	(382, 'add_teacher_suggestion\r\n', 'Add Teacher Suggestion', 'A??adir sugerencia de profesor', 'Adicionar sugest??o do professor', 'Ajouter une suggestion d\'enseignant'),
	(383, 'add_academic_syllabus', '', 'Agregar programa acad??mico', '', ''),
	(384, 'upload_academic_syllabus', '', 'subir programa acad??mico', '', ''),
	(385, 'student_informationx', '', 'Informaci??n del estudiante', '', ''),
	(386, 'message_sent', '', 'Mensaje enviado', '', ''),
	(387, 'settings_updated', '', 'Ajustes actualizan', '', ''),
	(388, 'religion', 'Religion', 'Religi??n', 'Religi??o', 'Religion'),
	(389, 'blood_group', 'Blood group', 'grupo sangu??neo', 'grupo sangu??neo', 'groupe sanguin'),
	(391, 'earning_graph', 'Earning Graph', 'Ganancia Gr??fico', 'Gr??fico de ganhos', 'Graphique de gains'),
	(392, 'setting', 'setting', 'Ajuste', '', '');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `mark` (
  `mark_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `mark_obtained` int(11) NOT NULL DEFAULT '0',
  `mark_total` int(11) NOT NULL DEFAULT '100',
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mark_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `mark` DISABLE KEYS */;
/*!40000 ALTER TABLE `mark` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext NOT NULL,
  `message` longtext NOT NULL,
  `sender` longtext NOT NULL,
  `timestamp` longtext NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 unread 1 read',
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `message_thread` (
  `message_thread_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sender` longtext COLLATE utf8_unicode_ci NOT NULL,
  `reciever` longtext COLLATE utf8_unicode_ci NOT NULL,
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`message_thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `message_thread` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_thread` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `noticeboard` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `notice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `create_timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `noticeboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `noticeboard` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `parent` (
  `parent_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_category_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `nick_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `section` DISABLE KEYS */;
/*!40000 ALTER TABLE `section` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `settings` (
  `settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`settings_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
	(1, 'system_name', 'Baxter Edu'),
	(2, 'system_title', 'Baxter'),
	(3, 'address', 'New York, United States'),
	(4, 'phone', '+732357647647'),
	(5, 'paypal_email', 'baxter@school.com'),
	(6, 'currency', 'USD'),
	(7, 'system_email', 'admi@admin.com'),
	(20, 'active_sms_service', 'disabled'),
	(11, 'language', 'spanish'),
	(12, 'borders_style', 'true'),
	(13, 'clickatell_user', ''),
	(14, 'clickatell_password', ''),
	(15, 'clickatell_api_id', ''),
	(16, 'skin_colour', 'dark'),
	(17, 'twilio_account_sid', ''),
	(18, 'twilio_auth_token', ''),
	(19, 'twilio_sender_phone_number', ''),
	(21, 'running_year', '2017-2018'),
	(22, 'footer_text', '?? 2017 Baxter School Manager - <strong>AnthonCode</strong>'),
	(23, 'purchase_code', ''),
	(24, 'header_colour', 'header-light'),
	(25, 'sidebar_colour', 'sidebar-light'),
	(26, 'sidebar_size', 'sidebar-left-sm');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `transport_id` int(11) NOT NULL,
  `dormitory_room_number` longtext COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `transport` (
  `transport_id` int(11) NOT NULL AUTO_INCREMENT,
  `route_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_vehicle` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `route_fare` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`transport_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `transport` DISABLE KEYS */;
/*!40000 ALTER TABLE `transport` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
