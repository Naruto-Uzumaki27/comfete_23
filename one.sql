
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
</pre>','NaN','infinity','0.0','all of the mentioned'),

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

            System.out.print(x + " " + y);
            }
            System.out.println(x + " " + y);
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

        i = x << 2;
        y = (byte) (x << 2);
        System.out.print(i + " " + y);
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
        for ( int i = 0; i < arr.length - 2; ++i)

        System.out.println(arr[i] + " ");
    } 
}
</pre>','1 2 3 4 5','1 2 3 4','1 2','1 2 3 '),


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
        StringBuffer s1 = new StringBuffer("Quiz");
        StringBuffer s2 = s1.reverse();
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
#include<stdio.h>
#define SWAP(a, b, c)(c t; t=a, a=b, b=t)
int main()
{
    int x=10, y=20;
    SWAP(x, y, int);
    printf("%d %d\n", x, y);
    return 0;
}       
</pre>','It compiles','Compiles with an warning','Not compile','Compiles and print nothing'),

(22,'What will be the output of the program? ','
<pre>
#include<stdio.h>
#define SQR(x)(x*x)   
int main()
{
    int a, b=3;
    a = SQR(b+2);
    printf("%d\n", a);
    return 0;
}        
</pre>','25','11','error','Garbage value'),

(23,'What will be the output of the program? ','
<pre>
#include<stdio.h>
#define CUBE(x) (x*x*x)
        
int main()
{
    int a, b=3;
    a = CUBE(b++);
    printf("%d, %d\n", a, b);
    return 0;
}
</pre>','9,4','27,4','27,6','error'),

(24,'What will be the output of the program? ','
<pre>
#include<stdio.h>
#define FUN(i, j) i##j
        
int main()
{
    int va1=10;
    int va12=20;
    printf("%d\n", FUN(va1, 2));
    return 0;
}
</pre>','10','20','1020','12'),

(25,'What will be the output of the program? ','
<pre>
#include<stdio.h>
#define MAX(a, b) (a > b ? a : b)
        
int main()
{
    int x;
    x = MAX(3+2, 2+7);
    printf("%d\n", x);
    return 0;
}
</pre>','8','9','6','5');

