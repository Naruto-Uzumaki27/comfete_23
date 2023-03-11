CREATE DATABASE comfete;
USE comfete;

CREATE TABLE `Round1` (
  `id` int NOT NULL PRIMARY key,
  `question` text NOT NULL,
  `code` text NOT NULL,
  `op1` text NOT NULL,
  `op2` text NOT NULL,
  `op3` text NOT NULL,
  `op4` text NOT NULL

);

CREATE TABLE `Round2` (
  `id` int NOT NULL PRIMARY key,
  `question` text NOT NULL,
  `op1` text NOT NULL,
  `op2` text NOT NULL,
  `op3` text NOT NULL,
  `op4` text NOT NULL
);

CREATE TABLE `Round3` (
  `id` int NOT NULL PRIMARY key,
  `question` text NOT NULL,
  `op1` text NOT NULL,
  `op2` text NOT NULL,
  `op3` text NOT NULL,
  `op4` text NOT NULL
);

CREATE TABLE `Round4` (
  `id` int NOT NULL PRIMARY key,
  `question` text NOT NULL
);

--
-- Dumping data for table `questions`
--


INSERT INTO `round1` (`id`, `question`, `code`,`op1`, `op2`, `op3`, `op4`) VALUES
(1,'What is the output of the following code?','
<pre>
def calculate (num1, num2=4):
	res=num1 * num2
	print(res)

calculate(5, 6)
</pre>','20', ' The program executed with errors', '10' ,'30'),

(2,'What is the output of the following code?','
<pre>
listOne = [20, 40, 60, 80]
listTwo = [20, 40, 60, 80]
    
print(listOne == listTwo)
print(listOne is listTwo)
</pre> ','True True', 'True False', 'False True', 'False False'),

(3,' What is the output of the following code?','
<pre>
sampleList = ["Jon", "Kelly", "Jessa"]
sampleList.append(2, "Scott")
print(sampleList)
</pre>',' The program executed with errors', ' ["Jon", "Kelly", "Scott", "Jessa"]', ' ["Jon", "Kelly", "Jessa", "Scott"]',
'["Jon", "Scott","Kelly","Jessa"]'),

(4,'What is the output of the following code?','
<pre>
valueOne = 5 ** 2
valueTwo = 5 ** 3

print(valueOne)
print(valueTwo)
</pre>','10 15','25 125','Error:invalid syntax','50 100'),

(5,'What is the output of the following code?','
<pre>
var1 = 1
var2 = 2
var3 = "3"

print(var1 + var2 + var3)
</pre>','6','33','123',' Error. Mixing operators between numbers and strings are not supported'),

(6,'What is the output of the following code?','
<pre>
var= "James Bond"
print(var[2::-1])
</pre>','Jam','dno','maJ',' dnoB semaJ'),

(7,'What is the Output of the following code?','
<pre>
for x in range(0.5, 5.5, 0.5):
    print(x)  
</pre>','[0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5, 5.5]', '[0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5]','The Program executed with errors','[0.3, 1, 1.5, 2, 2.4, 3, 3.4, 0, 4.7, 5]'),


(8,' What is the output of the following','
<pre>
x = 36 / 4 * (3 +  2) * 4 + 2
print(x)
</pre>','182.0','37','117','The Program executed with errors'),

(9,'What is the output of the following code?','
<pre>
p, q, r = 10, 20 ,30
print(p, q, r)
</pre>','10 20','10 20 30','20 20 20','Error: invalid syntax'),

(10,'What is the output of the following code?','
<pre>
str = "pynative"
print (str[1:3])
</pre>','yn','py','nat','pyn'),

(11,'What will be the output of the following Java code?','
<pre>
class increment {
    public static void main(String args[]) 
    {        
        int g = 3;
        System.out.print(++g * 8);
    } 
}
</pre>','32','33','24','25'),

(12,'What will be the output of the following Java program?','
<pre>
class output {
    public static void main(String args[]) 
    {
        double a, b,c;

        a = 3.0/0;
        b = 0/4.0;
        c=0/0.0;

        System.out.println(a);
        System.out.println(b);
        System.out.println(c);
        } 
    }
</pre>','NaN','Infinity','0.0','All of the mentioned'),

(13,'What will be the output of the following Java program?','
<pre>
class variable_scope 
{
    public static void main(String args[]) 
    {
        int x;
        x = 5;
        {
            int y = 6;

            System.out.print(x+" "+y);
            }
            System.out.println(x+" "+y);
        } 
    }
</pre>','Compilation error',' Runtime error','5 6 5 6','5 6 5'),

(14,'What will be the output of the following Java program?','
<pre>
class leftshift_operator 
{
    public static void main(String args[]) 
    {        
        byte x = 64;
        int i;
        byte y; 

        i = x &lt;&lt; 2;
        y = (byte)(x&lt;&lt;2);
        System.out.print(i+" "+y);
        } 
    }
</pre>','0 256','0 64','256 0','64 0'),


(15,'What will be the output of the following Java program?','
<pre>
class Output 
{
    public static void main(String args[])
    {
    int arr[] = {1, 2, 3, 4, 5};
    for(int i=0;i < arr.length-2;++i)

    System.out.println(arr[i]+" ");
    } 
}
</pre>','1 2 3 4 5','1 2 3 4','1 2','1 2 3'),


(16,'What will be the output of the following Java code?','
<pre>
class String_demo 
{
    public static void main(String args[])
    {
        char chars[] = {''a'', ''b'', ''c''};
        String s = new String(chars);
        System.out.println(s);
    }
}
</pre>','abc','a','b','c'),

(17,'What will be the output of the following Java code?','
<pre>
class output 
{
    public static void main(String args[])
    { 
        String c = "Hello i love java";
        boolean var;
        var = c.startsWith("hello");

        System.out.println(var);
    }
}
</pre>','0','true','1','false'),

(18,'What will be the output of the following Java program?','
<pre>
class output 
{
public static void main(String args[])
{ 
StringBuffer s1=new StringBuffer("Quiz");
StringBuffer s2=s1.reverse();
System.out.println(s2);
}
}
</pre>','QuizziuQ','ziuQQuiz',' Quiz','ziuQ'),


(19,'What will be the output of the following Java code?','
<pre>
class Output 
{
    public static void main(String args[]) 
    {
        Integer i = new Integer(257);  
        byte x = i.byteValue();
        System.out.print(x);
    }
}
</pre>','256','257','1','0'),

(20,'What will be the output of the following Java program?','
<pre>
class Output 
{
    public static void main(String args[]) 
    {
        double x = 2.0;  
        double y = 3.0;
        double z = Math.pow( x, y );

        System.out.print(z);
    }
}
</pre>','9.0','8.0','4.0','2.0'),


(21,'What will the SWAP macro in the following program be expanded to on preprocessing? will the code compile? ','
<pre>
#include&lt;stdio.h&gt;
#define SWAP(a, b, c)(c t; t=a, a=b, b=t)
int main()
{
    int x=10, y=20;
    SWAP(x, y, int);
    printf("%d %d", x, y);
    return 0;
}       
</pre>','It compiles','Compiles with an warning','Not compile','Compiles and print nothing'),

(22,'What will be the output of the program? ','
<pre>
#include&lt;stdio.h&gt;
#define SQR(x)(x*x)   
int main()
{
    int a, b=3;
    a = SQR(b+2);
    printf("%d", a);
    return 0;
}        
</pre>','25','11','Error','Garbage value'),

(23,'What will be the output of the program? ','
<pre>
#include&lt;stdio.h&gt;
#define CUBE(x) (x*x*x)
        
int main()
{
    int a, b=3;
    a = CUBE(b++);
    printf("%d, %d", a, b);
    return 0;
}
</pre>','9,4','27,4','27,6','Error'),

(24,'What will be the output of the program? ','
<pre>
#include&lt;stdio.h&gt;
#define FUN(i, j) i##j
        
int main()
{
    int va1=10;
    int va12=20;
    printf("%d", FUN(va1, 2));
    return 0;
}
</pre>','10','20','1020','12'),

(25,'What will be the output of the program? ','
<pre>
#include&lt;stdio.h&gt;
#define MAX(a, b) (a > b ? a : b)
        
int main()
{
    int x;
    x = MAX(3+2, 2+7);
    printf("%d", x);
    return 0;
}
</pre>','8','9','6','5'),

(26,'What is the output of the following program?','
<pre>#include&lt;iostream&gt;
using namespace std;
main()
{	
    union abc {
        int x;
        char ch;
    } var;
    var.ch = ''A'';
    cout&lt;&lt;var.x;
}
</pre>','A','Garbage value','65','97'),
(27,'What is the output of the following program?','
<pre>#include&lt;iostream&gt;
using namespace std;
main() {
    char s[] = "Fine";
    *s = ''N'';
    
    cout&lt;&lt;s&lt;&lt;endl;
}
</pre>','Fine','Nine','Compile error','Runtime error'),

(28,'What will be the output of the following C++ code?','
<pre>
#include&lt;iostream.h&gt;
using namespace std;
int main()
{
    int x,i;
    i=10;
    x=++i;
    x=i--;
    cout&lt;&lt;x;

    return 0;
}
</pre>','Compilation Terminated',' 10','11','9'),

(29,'What is the value of p in the following C++ code snippet?','
<pre>#include &lt;iostream&gt;
using namespace std;
int main()
{
    int p;
    bool a = true;
    bool b = false;
    int x = 10;
    int y = 5;
    p = ((x | y) + (a + b));
    cout &lt;&lt;p;
    return 0;
}</pre>
','12','0','2','16'),

(30,'What will be the output of the following C++ code?','
<pre>#include&lt;iostream&gt;
using namespace std;
int main ()
{
    int cin;
    cin >> cin;
    cout &lt;&lt; "cin: " &lt;&lt; cin;
    return 0;
}
</pre>','Segmentation fault','Nothing is printed',' Error','cin: 0');

--
-- Dumping data for table `questions`
--

INSERT INTO `Round2` (`id`, `question`, `op1`, `op2`, `op3`, `op4`) VALUES
(1, 'Select The Most Appropriate Word To Fill In The Blanks The National War Memorial Is ________To Our Armed Forces', 'Dedicated', 'Devoted', 'Honoured', 'Inscribed') ,
(2, '358.085 + 42.91 + 25.55 = ?', '425.425', '425.565', '426.545', '426.555') ,
(3, 'Which Country Has Been Elected To The Inter-Governmental Committee Of Unescos 2003   Convention .', 'Italy', 'India', 'Turkey', 'Egypt') ,
(4, 'Which State Has Renamed The Dragon Fruit Has “Kamalam”?', 'Assam', 'Gujarat', 'Tripura', 'Goa') ,
(5, 'Which Company Is The Biggest Player In The Microprocessor Industry ?', 'AMD', 'IBM', 'Motorola', 'Intel') ,
(6, 'Which Is The Governing Body Of International Cricket ?', 'ICC', 'BCCI', 'CA', 'ECB') ,
(7, 'Who Is The President Of Hockey India ?', 'Mohammad Mushtaq Ahmed', 'Diliptirkey', 'Tapan Kumar Das', 'Rajinder Singh') ,
(8, 'What Was The Occupation Of  The Inhabitants Of The Kurinji Region ?', 'Plundering', 'Cattle Rearing', 'Hunting And Gathering', 'Agriculture') ,
(9, 'When Is International Mother Language Day Celebrated?', 'March 10', 'February 21', 'April 21', 'May 10') ,
(10, 'Name The Father Of Indian Constitution ?', 'Dr.B.R. Ambedkar', 'Jawaharlal Nehru', 'Kamarajar', 'Dr. Rajendra Prasad') ,
(11, 'Find Correct Spelling In The Given Words.', 'Ommineous', 'Ominous', 'Omineous', 'Ominouse') ,
(12, 'What Is The Average Of First Five Multiples Of 12 ?', '36', '38', '40', '42') ,
(13, 'In Which State It Has Been Declared As Natural Disaster Due To Heavy Snowfall ?', 'Jammu And Kashmir', 'Punjab', 'Rajasthan', 'Madhya Pradesh') ,
(14, 'Who Wrote The Book- The Room Where It Happened ?', 'Donald Trump', 'Bill Clinton', 'Barack Obama', 'George W. Bush') ,
(15, '__________ Cookies Are Known As Transient Cookies.', 'Persistent', 'Second Party', 'Session', 'Third Party') ,
(16, 'What Is The Maximum Number Of Members In Lok Sabha ?', '512', '542', '552', '532') ,
(17, 'Who Was The First Prime Minister Of India?', 'Jawaharlal Nehru', 'Indira Gandhi', 'Chandra Shekhar', 'Gulzarilal Nanda') ,
(18, 'Which Cricketer Won The International Cricket Councils(ICC) Sir Garfield Sobers Award For Cricketer Of The Year?', 'Babar Azam', 'Virat Kohli', 'Rohit Sharma', 'Joe Root') ,
(19, 'Dhanraj Pillay Is Related To Which Sport ?', 'Golf', 'Football', 'Hockey', 'Cricket') ,
(20, 'Kaliks “Ponniyinselvan” Was Written On The Basis Of Which Age ?', 'Chola Age', 'Cheran Age', 'Kalappirar Age', 'Pallavar Age') ,
(21, 'Antonym : Gather', 'Disperse', 'Distract', 'Dispute', 'Display') ,
(22, 'If January 1, 1996 Was  Monday, What Day Of The Week Was January 1,1997 ?', 'Thursday', 'Wednesday', 'Friday', 'Sunday') ,
(23, 'Which State Government Has Recently Launched A Scheme Called “Gharghar Ration” ?', 'Madhya Pradesh', 'Delhi', 'Uttar Pradesh', 'Punjab') ,
(24, 'Who Has Been Appointed The New Chairman Of The Indian Space Research Organisation (ISRO)', 'S. Somanath', 'Bhupender Yadav', 'Ritukaridhal', 'P. Kunhikrishnan') ,
(25, 'Missing Slot Covers On The Computer Can Cause _______', 'Power Surges', 'Incomplete Path Of ESD', 'Over Heat', 'EMI') ,
(26, 'How Many Numbers Of Players Are There In A Team Of Kho-Kho ?', '5', '7', '9', '11') ,
(27, 'Who Is The First Indian Women To Win An Asian Games Gold In 400M Run ?', 'M.L. Valsamma', 'P.T. Usha', 'K. Malleshwari', 'Kamaljitsandhu') ,
(28, 'Name The Deepest Ocean In The World ?', 'Artic Ocean', 'Atlantic Ocean', 'Indian Ocean', 'Pacific Ocean') ,
(29, 'Name The National Bird Of The USA', 'Bald Eagle', 'Red-Crowned Crane', 'Chukar', 'Swan') ,
(30, 'Which Of The Following Flag Belongs To Thirumal ?', 'Karudakodi', 'Sevalkodi', 'Meenkodi', 'Vel Kodi') ;


--
-- Dumping data for table `questions`
--

INSERT INTO `Round3` (`id`, `question`, `op1`, `op2`, `op3`, `op4`) VALUES
(1, 'Select The Wrongly Spelt Word In The Following', 'Reminascant', 'Remembrance', 'Remnant', 'Remittance') ,
(2, 'Complete The Series 2,12,36,80,150,........', '250', '252', '276', '300') ,
(3, 'What Is The GST Collection In India In January 2022 ?', 'Rs.0.97 Lakh Crore', 'Rs. 1.21 Lakh Crore', 'Rs. 1.55 Lakh Crore', 'Rs. 2.01 Lakh Crore') ,
(4, 'Which Indian State Announced The Countrys First Medical City Named "Indrayani Medicity"', 'Uttarakhand', 'Maharashtra', 'Haryana', 'Kerala') ,
(5, 'Which Of The Following Is Not A Software ?', 'Compiler', 'Adobe', 'Microsoft Office', 'Drives') ,
(6, 'Vedic City Is Being Developed In Which City ?', 'Varanasi', 'Ayodhya', 'Ujjain', 'Haridwar') ,
(7, 'Cyclone Mandous ,A Severe Cyclonic Storm In The Bay Of Bengal, Has Affected The Most________', 'West Bengal', 'Odisha', 'Andhra Pradesh', 'Tamil Nadu') ,
(8, 'Which Nation Finished With The Most Number Of Medals In The Tokyo Olympics ?', 'Usa', 'China', 'Japan', 'Australia') ,
(9, 'Waca Cricket Ground Is Located In______', 'Adelaide', 'Perth', 'Auckland', 'Durban') ,
(10, 'How Many Ports And Poetesses Had Contributed To The Sangam Literature ?', '471', '473', '475', '478') ,
(11, 'Which Of These Is Not A Type Of Phonetics ?', 'Articulatory', 'Personal', 'Acoustic', 'Auditory') ,
(12, 'Find The Speed Of The Train , If A Train 142M Long Passes A Pole In 6 Seconds.', '77.2Km/Hr', '79.6 Km/Hr', '84.9 Km/Hr', '79.2 Km/Hr') ,
(13, 'Which Is The First Platform To Launch Upi Lite Payments?', 'Google Pay', 'Mi Pay', 'Paytm Payments Bank', 'Airtel Payments Bank') ,
(14, 'Which City Is The Host Of The India -US Trade Policy Forum Meeting In 2023 ?', 'Mumbai', 'New Delhi', 'California', 'Washington Dc') ,
(15, 'Which Of The Following Is Valid Storage Type ?', 'Cpu', 'Keyboard', 'Pen Drive', 'Track Ball') ,
(16, 'Where Is Kalakkad Mundanthurai Tiger Reserve Is Situated ?', 'Tirunelveli', 'Chennai', 'Erode', 'Nilagiri') ,
(17, 'The Rapid Transit System In Tamil Nadu Is Located In ?', 'Trichy', 'Chennai', 'Salem', 'Thanjavur') ,
(18, 'FIFA Is The Global Regulatory Body Of Which Sports', 'Hockey', 'Football', 'Cricket', 'Tennis') ,
(19, 'Where In Pakistan The Worlds Highest Polo Ground Is Located ?', 'Kasur', 'Attock', 'Shandur', 'Okara') ,
(20, 'Tirupur Kumaran Died In The Year ?', '1928', '1932', '1935', '1930') ,
(21, 'What Is The Antonyms For "Culpable".', 'Prone', 'Blameless', 'Careless', 'Irresponsible') ,
(22, 'Keeladi,Which Was Seen In The News, Is An Excavation Site Found In Which State ?', 'Tamil Nadu', 'Kerala', 'Punjab', 'Uttarakhand') ,
(23, 'The Term Corrupt Practice Is Defined In Which Act In India?', 'Indian Penal Code', 'Representation Of Peoples Act', 'Code Of Criminal Procedure', 'Indian Evidence Act') ,
(24, 'Who Developed A Mechanical Device In The 17Th Century That Could Add, Subtract, Multiply, Divide And Find Square Roots?', 'Napier', 'Babbage', 'Pascal', 'Leibnitz') ,
(25, 'Red Cross Was Found By', 'Cursetji', 'Badel Powell', 'J.H.Durant', 'Trygve Lie') ,
(26, 'What Is The HCF Of 1095 And 1168 ?', '37', '73', '43', '83') ,
(27, 'Who Is The First Indian Women To Win An Olympic Silver Medal?', 'Saina Nehwal', 'P.V.Sindhu', 'Rituparna Das', 'Tanvi Lad') ,
(28, 'The First Official Handball Match Was Played In Which Country?', 'Switzerland', 'Germany', 'Canada', 'England') ,
(29, 'Who Is Considered To Be The Father Of Tamil Literature?', 'Sage Agastya', 'Sage Valmigi', 'Sage Vyasa', 'Sage Vashishtha') ,
(30, 'Who Is The Father Of Geometry?', 'Aristotle', 'Euclid', 'Pythagoras', 'Kepler');

--
-- Dumping data for table `questions`
--

INSERT INTO `Round4` (`id`, `question`) VALUES
(1,  '../adimg/select/01.png'),
(2,  '../adimg/select/02.png'),
(3,  '../adimg/select/03.png'),
(4,  '../adimg/select/04.png'),
(5,  '../adimg/select/05.png'),
(6,  '../adimg/select/06.png'),
(7,  '../adimg/select/07.png'),
(8,  '../adimg/select/08.png'),
(9,  '../adimg/select/09.png'),
(10, '../adimg/select/10.png'),
(11, '../adimg/select/11.png'),
(12, '../adimg/select/12.png'),
(13, '../adimg/select/13.png'),
(14, '../adimg/select/14.png'),
(15, '../adimg/select/15.png'),
(16, '../adimg/select/16.png'),
(17, '../adimg/select/17.png'),
(18, '../adimg/select/18.png'),
(19, '../adimg/select/19.png'),
(20, '../adimg/select/20.png'),
(21, '../adimg/select/21.png'),
(22, '../adimg/select/22.png'),
(23, '../adimg/select/23.png'),
(24, '../adimg/select/24.png'),
(25, '../adimg/select/25.png'),
(26, '../adimg/select/26.png'),
(27, '../adimg/select/27.png'),
(28, '../adimg/select/28.png'),
(29, '../adimg/select/29.png'),
(30, '../adimg/select/30.png');

CREATE TABLE `Student_R1` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `S_Name` text NOT NULL,
  `E_id` text NOT NULL,
  `C_Name` text NOT NULL,
  `R1_Marks` int,
  `t_time` varchar(20),
  `sub_time` varchar(20)
);
CREATE TABLE `Student_R2` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `S_Name` text NOT NULL,
  `E_id` text NOT NULL,
  `C_Name` text NOT NULL,
  `R2_Marks` int,
  `t_time` varchar(20),
  `sub_time` varchar(20)
);
CREATE TABLE `Student_R3` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `S_Name` text NOT NULL,
  `E_id` text NOT NULL ,
  `C_Name` text NOT NULL,
  `R3_Marks` int,
  `t_time` varchar(20),
  `sub_time` varchar(20)
);
CREATE TABLE `Student_R4` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `S_Name` text NOT NULL,
  `E_id` text NOT NULL,
  `C_Name` text NOT NULL,
  `R4_Marks` int,
  `t_time` varchar(20),
  `sub_time` varchar(20)
);






