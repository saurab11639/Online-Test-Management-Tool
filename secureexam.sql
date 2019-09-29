-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2018 at 09:15 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `secureexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `ans`
--

CREATE TABLE `ans` (
  `uid` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `q1` int(20) NOT NULL DEFAULT '0',
  `q2` int(20) NOT NULL DEFAULT '0',
  `q3` int(20) NOT NULL DEFAULT '0',
  `q4` int(20) NOT NULL DEFAULT '0',
  `q5` int(20) NOT NULL DEFAULT '0',
  `q6` int(20) NOT NULL DEFAULT '0',
  `q7` int(20) NOT NULL DEFAULT '0',
  `q8` int(20) NOT NULL DEFAULT '0',
  `q9` int(20) NOT NULL DEFAULT '0',
  `q10` int(20) NOT NULL DEFAULT '0',
  `a1` varchar(100) NOT NULL DEFAULT 'none',
  `a2` varchar(100) NOT NULL DEFAULT 'none',
  `a3` varchar(100) NOT NULL DEFAULT 'none',
  `a4` varchar(100) NOT NULL DEFAULT 'none',
  `a5` varchar(100) NOT NULL DEFAULT 'none',
  `a6` varchar(100) NOT NULL DEFAULT 'none',
  `a7` varchar(100) NOT NULL DEFAULT 'none',
  `a8` varchar(100) NOT NULL DEFAULT 'none',
  `a9` varchar(100) NOT NULL DEFAULT 'none',
  `a10` varchar(100) NOT NULL DEFAULT 'none',
  `result` varchar(20) NOT NULL DEFAULT 'Not calculated yet'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ans`
--

INSERT INTO `ans` (`uid`, `id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`, `a9`, `a10`, `result`) VALUES
(18, 9, 13, 46, 42, 17, 14, 9, 36, 5, 1, 3, '', 'int arr[] = int [5] new', '$', 'int a [] = new int[5];', 'int [] myList = {\"1\", \"2\", \"3\"};', 'Wait Once Read Anytime', 'auto scaling', 'Overloading', 'programming lang and platform', 'Blue Team', '3'),
(19, 9, 13, 46, 42, 0, 0, 0, 0, 0, 0, 0, '', 'int arr[] = int [5] new', '$', 'none', 'none', 'none', 'none', 'none', 'none', 'none', '3');

-- --------------------------------------------------------

--
-- Table structure for table `ans1`
--

CREATE TABLE `ans1` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `q1` int(20) NOT NULL DEFAULT '0',
  `q2` int(20) NOT NULL DEFAULT '0',
  `q3` int(20) NOT NULL DEFAULT '0',
  `q4` int(20) NOT NULL DEFAULT '0',
  `q5` int(20) NOT NULL DEFAULT '0',
  `q6` int(20) NOT NULL DEFAULT '0',
  `q7` int(20) NOT NULL DEFAULT '0',
  `q8` int(20) NOT NULL DEFAULT '0',
  `q9` int(20) NOT NULL DEFAULT '0',
  `q10` int(20) NOT NULL DEFAULT '0',
  `a1` varchar(100) NOT NULL DEFAULT 'none',
  `a2` varchar(100) NOT NULL DEFAULT 'none',
  `a3` varchar(100) NOT NULL DEFAULT 'none',
  `a4` varchar(100) NOT NULL DEFAULT 'none',
  `a5` varchar(100) NOT NULL DEFAULT 'none',
  `a6` varchar(100) NOT NULL DEFAULT 'none',
  `a7` varchar(100) NOT NULL DEFAULT 'none',
  `a8` varchar(100) NOT NULL DEFAULT 'none',
  `a9` varchar(100) NOT NULL DEFAULT 'none',
  `a10` varchar(100) NOT NULL DEFAULT 'none',
  `result` varchar(20) NOT NULL DEFAULT 'Not calculated yet'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ans1`
--

INSERT INTO `ans1` (`id`, `uid`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`, `a9`, `a10`, `result`) VALUES
(3, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Inheritance is object oriented programming language function.', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'Not calculated yet');

-- --------------------------------------------------------

--
-- Table structure for table `descriptive_question`
--

CREATE TABLE `descriptive_question` (
  `id` int(15) NOT NULL,
  `qno` int(15) NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `flag` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `descriptive_question`
--

INSERT INTO `descriptive_question` (`id`, `qno`, `question`, `answer`, `flag`) VALUES
(1, 1, 'What is inheritance in java?', 'Inheritance is a concept of bringing properties of one class to another class.\r\nInheritance is a property of Object Oriented Principle in which we can extend one class (child class) with another class (super class).\r\nChild class needs to define all the abstract methods of super class.\r\nChild class can override methods of super class.\r\nMultiple inheritance is not possible in Java.', '0');

-- --------------------------------------------------------

--
-- Table structure for table `examiner`
--

CREATE TABLE `examiner` (
  `id` int(10) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examiner`
--

INSERT INTO `examiner` (`id`, `uname`, `pass`, `email`) VALUES
(1, 'examiner', 'examiner', 'mayurt.srccode@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `qtable`
--

CREATE TABLE `qtable` (
  `qno` int(20) NOT NULL,
  `question` varchar(5000) NOT NULL,
  `a` varchar(5000) NOT NULL,
  `b` varchar(5000) NOT NULL,
  `c` varchar(5000) NOT NULL,
  `d` varchar(5000) NOT NULL,
  `ans` varchar(5000) NOT NULL,
  `f` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qtable`
--

INSERT INTO `qtable` (`qno`, `question`, `a`, `b`, `c`, `d`, `ans`, `f`) VALUES
(1, 'what is java?', 'software', 'coffee', 'programming lang', 'programming lang and platform', 'programming lang and platform', '0'),
(2, 'Who is founder of Java?', 'James Gosling', 'Rasmus Lerdorf', 'Linus Torvalds', 'Microsoft', 'James Gosling', '0'),
(3, 'Which team started Java operations?', 'Red Team', 'Green Team', 'Yellow Team', 'Blue Team', 'Green Team', '0'),
(4, 'On which language Java syntax is based?', 'C', 'Java', 'PHP', 'C++', 'C++', '0'),
(5, 'Which feature is not present in Java?', 'Overloading', 'Binding', 'Overriding', 'explicit pointers', 'explicit pointers', '0'),
(6, 'Which feature is present in Java?', 'Automatic object collection', 'linker', 'removing unreferenced objects', 'removing referenced objects', 'removing unreferenced objects', '0'),
(7, 'Which platform Java provides?', 'Software based', 'Eclipse based', 'Object based', 'Linux based', 'Software based', '0'),
(8, 'Which is platform independent code that Java produces?', 'Byte code', 'Machine code', 'Psuedo code', 'Source code', 'Byte code', '0'),
(9, 'What is WORA?', 'Wait Or Read Attribute', 'Write Once Read Anywhere', 'Wait Once Read Anytime', 'Write On Reading Anything', 'Write Once Read Anywhere', '0'),
(10, 'Which program we cant write in Java?', 'Operator Overloading', 'Pointers Program', 'Socket Program', 'Networking Program', 'Pointers Program', '0'),
(11, 'Which methods are virtual by default?', 'static methods', 'non-static methods', 'final methods', 'virtual methods', 'non-static methods', '0'),
(12, 'Which unsigned right shift operator is supported by Java? ', '>>', '>>>', '<<', '<<<', '>>>', '0'),
(13, 'Which one of these lists contains only Java programming language keywords?', 'class, if, void, long, Int, continue', 'goto, instanceof, native, finally, default, throws', 'try, virtual, throw, final, volatile, transient', 'strictfp, constant, super, implements, do', 'goto, instanceof, native, finally, default, throws', '0'),
(14, 'Which will legally declare, construct, and initialize an array?', 'int [] myList = {\"1\", \"2\", \"3\"};', 'int [] myList = (5, 8, 2);', 'int myList [] [] = {4,9,7,0};', 'int myList [] = {4, 3, 7};', 'int myList [] = {4, 3, 7};', '0'),
(15, 'Which is a reserved word in the Java programming language?', 'method', 'native', 'subclasses', 'reference', 'native', '0'),
(16, 'Which is a valid keyword in java?', 'interface', 'string', 'Float', 'unsigned', 'interface', '0'),
(17, 'Which one of the following will declare an array and initialize it with five numbers?', 'Array a = new Array(5);', 'int [] a = {23,22,21,20,19};', 'int a [] = new int[5];', 'int [5] array;', 'int [] a = {23,22,21,20,19};', '0'),
(18, 'Which is the valid declarations within an interface definition?', 'public double methoda();', 'public final double methoda();', 'static void methoda(double d1);', 'protected void methoda(double d1);', 'public double methoda();', '0'),
(19, 'Which one is a valid declaration of a boolean?', 'boolean b1 = 0;', 'boolean b2 = \'false\';', 'boolean b3 = false;', 'boolean b4 = Boolean.false();', 'boolean b3 = false;', '0'),
(20, 'Which is a valid declarations of a String?', 'String s1 = null;', 'String s2 = \'null\';', 'String s3 = (String) \'abc\';', 'String s4 = (String) \'\\ufeed\';', 'String s1 = null;', '0'),
(21, 'What is the numerical range of a char?', '-128 to 127', '-(215) to (215) - 1', '0 to 32767', '0 to 65535', '0 to 65535', '0'),
(22, 'Which interface does java.util.Hashtable implement?', 'Java.util.Map', 'Java.util.List', 'Java.util.HashTable', 'Java.util.Collection', 'Java.util.Map', '0'),
(23, 'Which interface provides the capability to store objects using a key-value pair?', 'Java.util.Map', 'Java.util.Set', 'Java.util.List', 'Java.util.Collection', 'Java.util.Map', '0'),
(24, 'Which collection class allows you to access its elements by associating a key with an element\'s value, and provides synchronization?', 'java.util.SortedMap', 'java.util.TreeMap', 'java.util.TreeSet', 'java.util.Hashtable', 'java.util.Hashtable', '0'),
(25, 'What is the name of the method used to start a thread execution?', 'init();', 'start();', 'run();', 'resume();', 'start();', '0'),
(26, 'Which of the following will directly stop the execution of a Thread?', 'wait()', 'notify()', 'notifyall()', 'exits synchronized code', 'wait()', '0'),
(27, 'Which method must be defined by a class implementing the java.lang.Runnable interface?', 'void run()', 'public void run()', 'public void start()', 'void run(int priority)', 'public void run()', '0'),
(28, 'Which will contain the body of the thread?', 'run();', 'start();', 'stop();', 'main();', 'run();', '0'),
(29, 'Which method registers a thread in a thread scheduler?', 'run();', 'construct();', 'start();', 'register();', 'start();', '0'),
(30, 'Which class or interface defines the wait(), notify(),and notifyAll() methods?', 'Object', 'Thread', 'Runnable', 'Class', 'Object', '0'),
(31, 'The DBMS acts as an interface between what two components of an enterprise-class database system?', 'Database application and the database', 'Data and the database', 'The user and the database application', 'Database application and SQL', 'Database application and the database', '0'),
(32, 'For which type of development PHP language is getting used?', 'Desktop application development', 'Database development', 'Networking development', 'Web development', 'Web development', '0'),
(33, 'For which type of web applications PHP is mostly used?', 'control-driven web applications', 'user-driven web applications', 'data-driven web applications', 'system-driven web applications', 'data-driven web applications', '0'),
(34, 'What PHP stands for?', 'HTTP Protocol ', 'Hibernate Preprocessor', 'Hypertext Preprocessor', 'Poly Hypertext Processor', 'Hypertext Preprocessor', '0'),
(35, 'Which is the latest PHP engine version?', '5.1', '6.1', '5.0', '6.0', '5.0', '0'),
(36, 'Which feature is used in new PHP engine?', 'optimized memory manager', 'virtual indexing', 'lighter language', 'auto scaling', 'optimized memory manager', '0'),
(37, 'Which feature is supported by PHP?', 'Object oriented programming', 'Application level programming', 'portability', 'cross-platform development', 'cross-platform development', '0'),
(38, 'Which operator is used for single line comment in PHP?', '<', '<?', '#', '?/', '#', '0'),
(39, 'Which operator is used for multiline comment in PHP?', '<?..?>', '?/../?', '/*..*/', '//..//', '/*..*/', '0'),
(40, 'Which is the delimiters for PHP syntax?', '<?..?>', '<?php..?>', '<php..>', '</php../>', '<?php..?>', '0'),
(41, 'What is variable in PHP?', 'name of the memory location', 'name of value', 'memory space', 'memory address', 'name of the memory location', '0'),
(42, 'Which sign in PHP used to start variable declaration?', '$', '#', '?', '_', '$', '0'),
(43, 'Which characters a variable name can contain?', '(A-z, 0-9, -, . and _ )', '(A-z, 0-9, @ and _ )', '(A-z, 0-9, and _ )', '(A-z, 0-9, |, and _ )', '(A-z, 0-9, and _ )', '0'),
(45, 'Which of these operators is used to allocate memory to array variable in Java?', 'malloc', 'alloc', 'new', 'new malloc', 'new', '0'),
(46, 'Which of these is an incorrect array declaration?', 'int arr[] = new int[5]', 'int [] arr = new int[5]', 'int arr[] = new int[5]', 'int arr[] = int [5] new', 'int arr[] = int [5] new', '0'),
(47, 'What is the output of this program?\r\n\r\n        class array_output \r\n\r\n        {\r\n\r\n            public static void main(String args[]) \r\n\r\n            {\r\n\r\n                int array_variable [] = new int[10];\r\n\r\n    	    for (int i = 0; i < 10; ++i) \r\n\r\n                {\r\n\r\n                    array_variable[i] = i;\r\n\r\n                    System.out.print(array_variable[i] + \" \");\r\n\r\n                    i++;\r\n\r\n                }\r\n\r\n            } \r\n\r\n        }', '0 2 4 6 8', '1 3 5 7 9', '0 1 2 3 4 5 6 7 8 9', '1 2 3 4 5 6 7 8 9 10', '0 2 4 6 8', '0');

-- --------------------------------------------------------

--
-- Table structure for table `stdreg`
--

CREATE TABLE `stdreg` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `gender` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contno` varchar(100) NOT NULL,
  `add` varchar(100) NOT NULL,
  `adhar` varchar(100) NOT NULL,
  `ssc` varchar(100) NOT NULL,
  `hsc` varchar(100) NOT NULL,
  `enroll` varchar(100) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `qrcode` varchar(100) DEFAULT NULL,
  `flag` varchar(100) DEFAULT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `permission` varchar(100) NOT NULL DEFAULT '0',
  `test1` varchar(12) NOT NULL DEFAULT '0',
  `test2` varchar(12) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stdreg`
--

INSERT INTO `stdreg` (`id`, `fname`, `lname`, `dob`, `gender`, `email`, `contno`, `add`, `adhar`, `ssc`, `hsc`, `enroll`, `uname`, `pass`, `qrcode`, `flag`, `secret`, `permission`, `test1`, `test2`) VALUES
(4, 'mayur', 'tambade', '17-7-1992', 'male', 'tejas.srccode@gmail.com', '7020907782', 'pune', 'O+', '', '', '', 'mayu', '123', NULL, NULL, NULL, '0', '0', '0'),
(5, 'pooja', 'gade', '12-21-2017', 'Female', 'poojag.srccode@gmail.com', '7897897979', 'pune', '12345', '12345', '12345', '12345', 'pooja', '1234', 'Null', '0', NULL, '1', '0', '0'),
(6, 'pooja', 'gade', '12-21-2017', 'Female', 'priya.srccode@gmail.com', '7897897979', 'pune', '12345', '12345', '12345', '12345', 'p', '1', 'ePczjtP+S0px+FasA9CuGFK7PPGuZ4HdkrkeQiAuqiA=', '0', '8832', '1', '0', '0'),
(7, 'POOJA', 'GADE', '12-21-2017', 'Female', 'p', '7575756756', 'pipiop', '567676775756', '89', '89', '789787878787', 'ip', 'ip', 'xNRFfYBu8hxf0plIkuAoZzp7pCppzlcw/bQngrVhmu0=', '0', '9486', '0', '0', '0'),
(8, 'POOJA', 'GADE', '12-21-2017', 'Default', 'poojagadegmail.com', '9898998998', 'pune', '787878887878', '89', '89', '798797998789', 'hj', 'jh', 'KXQ8u72nGMJjHagi8rbFRF/PTPG8jXrEQFewxqs869o=', '0', '8950', '0', '0', '0'),
(9, 'RAHUL', 'B', '12-05-2017', 'Male', 'mayurt.srccode@gmail.com', '9898899899', 'pune', '687687686768', '76', '67', '766767676767', 'ra', '1', '123456', '0', '7591', '1', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tutorial`
--

CREATE TABLE `tutorial` (
  `id` int(10) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `chapter` varchar(20) NOT NULL,
  `info` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutorial`
--

INSERT INTO `tutorial` (`id`, `subject`, `chapter`, `info`) VALUES
(1, 'Java', '1', 'Java is a programming language and a platform.\r\nJava is a high level, robust, secured and object-oriented programming language.\r\nPlatform: Any hardware or software environment in which a program runs, is known as a platform. Since Java has its own runtime environment (JRE) and API, it is called platform.\r\nJava history is interesting to know. The history of java starts from Green Team. Java team members (also known as Green Team), initiated a revolutionary task to develop a language for digital devices such as set-top boxes, televisions etc.\r\nFor the green team members, it was an advance concept at that time. But, it was suited for internet programming. Later, Java technology as incorporated by Netscape.\r\nJames Gosling - founder of java\r\nJames Gosling\r\nCurrently, Java is used in internet programming, mobile devices, games, e-business solutions etc. There are given the major points that describes the history of java.'),
(2, 'Java', '2', 'According to Sun, Java language is simple because: syntax is based on C++ (so easier for programmers to learn it after C++), removed many confusing and/or rarely-used features e.g., explicit pointers, operator overloading etc.\r\nNo need to remove unreferenced objects because there is Automatic Garbage Collection in java.'),
(3, 'Java', '3', 'A platform is the hardware or software environment in which a program runs.\r\nThere are two types of platforms software-based and hardware-based. Java provides software-based platform.\r\nThe Java platform differs from most other platforms in the sense that it is a software-based platform that runs on the top of other hardware-based platforms. It has two components:\r\nRuntime Environment\r\nAPI(Application Programming Interface)\r\nJava code can be run on multiple platforms e.g. Windows, Linux, Sun Solaris, Mac/OS etc. Java code is compiled by the compiler and converted into bytecode. This bytecode is a platform-independent code because it can be run on multiple platforms i.e. Write Once and Run Anywhere(WORA).'),
(4, 'Java', '4', 'Java supports pointer internally. But you can\'t write the pointer program in java. It means java has restricted pointer support in java. Java supports call by value only. There is no call by reference in java. Java doesn\'t support structures and unions. Java has no virtual keyword. We can override all non-static methods by default. In other words, non-static methods are virtual by default. Java supports unsigned right shift >>> operator that fills zero at the top for the negative numbers. For positive numbers, it works same like >> operator.'),
(5, 'PHP', '1', 'PHP Three letters that together constitutes the name of one of the world\'s most popular programming languages for Web development, the PHP Hypertext Preprocessor. While you might chuckle at the greenness of the recursive acronym, statistics indicate that PHP is not be taken lightly: the language is today in use on over twenty million Web sites and more than a third of the world\'s Web servers-no small feat, especially when you consider that the language has been developed entirely by a worldwide community of volunteers and is freely available on the Internet at no cost whatsoever! Over the last few years, PHP has become the de facto choice for the development of data-driven Web applications, notably on account of its scalability, ease of use, and widespread support for different databases and data formats.'),
(6, 'PHP', '2', 'Scripts written in PHP executives faster than those written in other scripting language, with numerous independent benchmarks, putting the language ahead of competing alternatives like JSP,ASP.NET and PERL.The PHP 5.0 engine was completely redesigned with an optimized memory manager to improve performance, and is noticeable faster than previous versions.In addition, third party accelerators are available to further improve performance and response time. PHP is available for UNIX, MICROSOFT WINDOWS, MAC OS, and OS/2.PHP Programs are portable between platforms. As a result, a PHP application developed on, say, Windows will typically run on UNIX without any significant issues.This ability to easily undertake cross-platform development is a valuable one, especially when operating in a multi platform corporate environment or when trying to address multiple market segments.'),
(7, 'PHP', '3', 'Single line comment used for short explanations.\r\nDeclaration of Single line comment are two types\r\nEither Begin with(#) Or backslash(//) \r\nExample:\r\n<?php\r\n# This is the single line comment\r\n# This is the next line comment\r\n// This is also a single line comment.\r\n?>\r\nIn the above Example.\r\n*First and second line comments begin with hash(#).\r\n*The third one is begin with(//).\r\nIf we check the output of the given example.\r\nBrowser show blank page. Because comments are always non-executable.\r\nMulti lines comments  used to comment multiple lines.\r\nHere we can give comments in bulk\r\nThe bulk comments are enclose within (/*....*/)\r\nExample:\r\n<?php 	\r\n/* \r\nThis is a comment with multiline \r\nDeveloper : sanjeev rai \r\nview : Multiline Comments Demo \r\n*/\r\n?>\r\nThe all lines which is define in php evironment are Multiline comments.\r\nit is non-executable.Because it enlose with Multiline comments statement.'),
(8, 'PHP', '4', 'Variable is nothing it is just name of the memory location.\nA Variable is simply a container i.e used to store both numeric and non-numeric information.\nVariables in PHP starts with a dollar($) sign, followed by the name of the variable.\nThe variable name must begin with a letter or the underscore character.\nA variable name can only contain alpha-numeric characters and underscores (A-z, 0-9, and _ )\nA variable name should not contain space\nAssigning a value to a variable in PHP is quite east: use the equality(=) symbol, which also to the PHP\'s assignment operators.\nThis assign value on the right side of the equation to the variable on the left.');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_info`
--

CREATE TABLE `tutor_info` (
  `id` int(10) NOT NULL,
  `sid` varchar(10) NOT NULL,
  `Java_chapter_no` varchar(10) NOT NULL DEFAULT '1',
  `PHP_chapter_no` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor_info`
--

INSERT INTO `tutor_info` (`id`, `sid`, `Java_chapter_no`, `PHP_chapter_no`) VALUES
(1, '4', '1', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ans`
--
ALTER TABLE `ans`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `ans1`
--
ALTER TABLE `ans1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `descriptive_question`
--
ALTER TABLE `descriptive_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examiner`
--
ALTER TABLE `examiner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qtable`
--
ALTER TABLE `qtable`
  ADD PRIMARY KEY (`qno`),
  ADD UNIQUE KEY `qno` (`qno`);

--
-- Indexes for table `stdreg`
--
ALTER TABLE `stdreg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutorial`
--
ALTER TABLE `tutorial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_info`
--
ALTER TABLE `tutor_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ans`
--
ALTER TABLE `ans`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `ans1`
--
ALTER TABLE `ans1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `descriptive_question`
--
ALTER TABLE `descriptive_question`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `examiner`
--
ALTER TABLE `examiner`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `qtable`
--
ALTER TABLE `qtable`
  MODIFY `qno` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `stdreg`
--
ALTER TABLE `stdreg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tutorial`
--
ALTER TABLE `tutorial`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tutor_info`
--
ALTER TABLE `tutor_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
