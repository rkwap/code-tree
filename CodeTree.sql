-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 23, 2018 at 10:36 AM
-- Server version: 5.7.23-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CodeTree`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `id` int(11) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`id`, `username`, `password`) VALUES
(1, 'rkwap', '$5$rounds=535000$Diqho28kLFnLAoYI$mMOGmGm6FmVWzwF..RVd0D6y6LV6dDZZawQedoUaDT1');

-- --------------------------------------------------------

--
-- Table structure for table `Leaderboard`
--

CREATE TABLE `Leaderboard` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `q_id` int(11) NOT NULL,
  `correct` varchar(200) DEFAULT NULL,
  `incorrect` varchar(200) DEFAULT NULL,
  `done` int(11) DEFAULT NULL,
  `s_time` timestamp NULL DEFAULT NULL,
  `e_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Questions`
--

CREATE TABLE `Questions` (
  `id` int(11) NOT NULL,
  `details` longtext,
  `s_point` longtext,
  `options` longtext,
  `answers` longtext,
  `title` varchar(300) DEFAULT NULL,
  `bonus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Questions`
--

INSERT INTO `Questions` (`id`, `details`, `s_point`, `options`, `answers`, `title`, `bonus`) VALUES
(1, '<p>#include &lt;stdio.h&gt;&nbsp;</p><p>int main()&nbsp;</p><p>{&nbsp;</p><p>int num1,num2;&nbsp;</p><p>float result;&nbsp;<br>&nbsp;</p>', '\'<p>char ch; //to store operator choice&nbsp;</p><p>printf(\"Enter the two numbers:\\n\");</p>\',\'<p>printf(\"Choose operation to perform (+,-,*,/,%):\");&nbsp;</p><p>scanf(\"%c\",&amp;ch);&nbsp;</p><p>result=0;&nbsp;</p>\',\'<p>{&nbsp;</p><p>case \"+\":&nbsp;</p><p>result=num1+num2;&nbsp;</p><p>break;&nbsp;</p><p>case \"-\":&nbsp;</p><p>result=num1-num2;&nbsp;</p><p>break;&nbsp;</p><p>case \"*\":&nbsp;</p><p>result=num1*num2;&nbsp;</p><p>break;&nbsp;</p><p>case \"/\":</p>\',\'<p><br>break;&nbsp;</p><p>case \"%\":&nbsp;</p><p>result=num1%num2;&nbsp;</p><p>break;&nbsp;</p><p>default:&nbsp;</p><p>printf(\"Invalid operation.\\n\");&nbsp;</p><p>}&nbsp;</p>\'', '[\'<p>scanf(\"%d,%d\",&amp;num1,&amp;num2);</p>\',\'<p>scanf(\"%d%d\",&amp;num1,&amp;num2);</p>\',\'<p>scanf(\"%d %d\",&amp;num1,&amp;num2);</p>\'],[\'<p>switch(ch)</p>\',\'<p>switch(char ch)</p>\',\'<p>switch(\"ch\")</p>\'],[\'<p>result=(float)num1/(float)num2;</p>\',\'<p>result=(float)(num1/num2);</p>\',\'<p>result=(float num1)/(float num2);</p>\'],[\'<p>printf(\"Result: %d %c %d = %f\\n\",num1,ch,num2,result);</p>\',\'<p>printf(\"Result: %f %c %f = %d\\n\",num1,ch,num2,result);</p>\',\'<p>printf(\"Result: %d %c %d = %d\\n\",num1,ch,num2,result);</p>\']', '\'<p>scanf(\"%d%d\",&amp;num1,&amp;num2);</p>\',\'<p>switch(ch)</p>\',\'<p>result=(float)num1/(float)num2;</p>\',\'<p>printf(\"Result: %d %c %d = %f\\n\",num1,ch,num2,result);</p>\'', 'Basic Binary Calculator', NULL),
(2, '<p>#include&lt;stdio.h&gt;&nbsp;</p><p>int main()&nbsp;</p><p>{&nbsp;</p><p>int n;&nbsp;<br>&nbsp;</p>', '\'<p>printf(\"Enter number whose fatorial is to be calculated: \");&nbsp;</p><p>scanf(\"%d\",&amp;n);</p>\',\'<p>getch();&nbsp;</p><p>}</p>\',\'<p>{</p>\',\'<p>{&nbsp;</p><p>n*=fact(n-1);&nbsp;</p><p>}&nbsp;</p><p>if(n!=0)&nbsp;</p><p>{&nbsp;<br>&nbsp;</p>\',\'<p>}&nbsp;</p><p>else if(n==0)&nbsp;</p><p>{</p>\'', '[\'<p>printf(fact(n));</p>\',\'<p>printf(\"%d\",fact(n));</p>\',\'<p>printf(\"%d\",n);</p>\'],[\'<p>int fact(int n)</p>\',\'<p>int fact()</p>\',\'<p>void fact(int n)</p>\'],[\'<p>if(n&gt;=1)</p>\',\'<p>if(n&gt;1)</p>\',\'<p>if(n&lt;1)</p>\'],[\'<p>return n;</p>\',\'<p>return fact(n-1);</p>\',\'<p>return n*fact(n-1);</p>\'],[\'<p>return 1;}&nbsp;</p><p>}</p>\',\'<p>return 0;}&nbsp;</p><p>}</p>\',\'<p>return fact(n-1);}&nbsp;</p><p>}</p>\']', '\'<p>printf(\"%d\",fact(n));</p>\',\'<p>int fact(int n)</p>\',\'<p>if(n&gt;=1)</p>\',\'<p>return n;</p>\',\'<p>return 1;}&nbsp;</p><p>}</p>\'', 'Factorial', NULL),
(3, '<p>#include &lt;stdio.h&gt;</p><p>&nbsp;</p><p>int main()</p><p>{<br>&nbsp;</p>', '\'<p>int n, i;</p>\',\'<p>&nbsp;&nbsp;</p>\',\'<p>printf(\"Enter the numbers of elements: \");</p><p>&nbsp;scanf(\"%d\", &amp;n);</p><p>&nbsp;</p><p>while (n &gt; 100 || n &lt;= 0)</p><p>&nbsp;</p><p>{</p><p>&nbsp;printf(\"Error! number should in range of (1 to 100).\\n\");</p><p>&nbsp;printf(\"Enter the number again: \");</p>\',\'<p>}</p><p>&nbsp;</p><p>for(i = 0; i &lt; n; ++i)</p><p>&nbsp;{</p><p>&nbsp;printf(\"%d. Enter number: \", i+1);</p><p>&nbsp;scanf(\"%f\", &amp;num[i]);</p>\',\'<p>}</p>\'', '[\'<p>float num[100];</p>\',\'<p>float num(100);</p>\',\'<p>float num {100}</p>\'],[\'<p>float sum = 1.0, average;</p>\',\'<p>float sum = 0, average;</p>\',\'<p>float sum = 0.0, average;</p>\'],[\'<p>scanf(\"%d\", &amp;n);</p>\',\'<p>scanf(\"%f\" ,&amp;n);</p>\',\'<p>Scanf(\"%d\", &amp;n)</p>\'],[\'<p>sum += num(i);</p>\',\'<p>sum += num[i];</p>\',\'<p>sum *= num[i];</p>\'],[\'<p>average = sum + n;printf(\"Average = %.2f\", average);</p><p>return 0;</p><p>}</p>\',\'<p>average = sum / n;printf(\"Average = %.2f\", average);</p><p>return 0;</p><p>}</p>\',\'<p>average = sum % n;printf(\"Average = %.2f\", average);</p><p>&nbsp;return 0;</p><p>}</p>\']', '\'<p>float num[100];</p>\',\'<p>float sum = 0.0, average;</p>\',\'<p>scanf(\"%d\", &amp;n);</p>\',\'<p>sum += num[i];</p>\',\'<p>average = sum / n;printf(\"Average = %.2f\", average);</p><p>return 0;</p><p>}</p>\'', 'Finding Average Using Arrays', NULL),
(4, '<p>#include&lt;stdio.h&gt;</p><p>long long convert_deci(int);</p><p>int main()</p><p>{</p>', '\'<p>int n;</p><p>&nbsp;printf(\"enter a decimal number: \");</p><p>&nbsp;scanf(\"%d\" , &amp;n);</p><p>&nbsp;printf(\"%d in decimal = %d in binary\" , n, convert_deci(n));</p><p>&nbsp;return 0;</p><p>}</p>\',\'<p>{</p><p>&nbsp;long long binaryno = 0;</p><p>&nbsp;int rem , i = 1, step =1;</p>\',\'<p>{</p><p>&nbsp;rem = n%2;</p>\',\'<p>&nbsp;</p>\',\'<p>binaryno += rem*i;</p><p>&nbsp;i *= 10;}</p>\'', '[\'<p>long long convert_deci( int n );</p>\',\'<p>long long convert_deci( int n )</p>\',\'<p>long long convert_deci( float n)</p>\'],[\'<p>while ( n =0 )</p>\',\'<p>while ( n!=0 );</p>\',\'<p>while ( n!=0 )</p>\'],[\'<p>print(\"Step %d: %d/2, Remainder = %d, Quotient = %d\\n\", step++, n, rem, n/2);</p>\',\'<p>printf(\"Step %d: %d/2, Remainder = %d, Quotient = %d\\n\", n, step++, rem, n/2);</p>\',\'<p>printf(\"Step %d: %d/2, Remainder = %d, Quotient = %d\\n\", step++, n, rem, n/2)</p>\'],[\'<p>n /= 2;</p>\',\'<p>n /=10;</p>\',\'<p>n %= 2;;</p>\'],[\'<p>return n;}</p>\',\'<p>return binaryno;}</p>\',\'<p>return rem;}</p>\']', '\'<p>long long convert_deci( int n )</p>\',\'<p>while ( n!=0 )</p>\',\'<p>printf(\"Step %d: %d/2, Remainder = %d, Quotient = %d\\n\", n, step++, rem, n/2);</p>\',\'<p>n /= 2;</p>\',\'<p>return binaryno;}</p>\'', 'Decimal to Binary conversion', NULL),
(5, '<p>//(duck number is one which has 0 as any of its digits)</p><p>#include&lt;stdio.h&gt;</p><p>int main()</p><p>{</p><p>int num,digit,count=0;</p>', '\'<p>printf(\"enter number\");</p>\',\'<p>&nbsp;</p>\',\'<p>{</p>\',\'<p>}</p>\'', '[\'<p>scanf(\"%d\",&amp;num);</p>\',\'<p>scanf(\"%c\",&amp;num);</p>\',\'<p>scanf(\"%d\",&amp;number);</p>\'],[\'<p>while(num&gt;=0)</p>\',\'<p>while(num&gt;0)</p>\',\'<p>while(0&gt;num)</p>\'],[\'<p>num=num/10;</p><p>&nbsp;if(num=0)</p><p>&nbsp;count++;</p><p>&nbsp;digit=num%10;</p>\',\'<p>digit=num%10;</p><p>&nbsp;if(num==0)</p><p>&nbsp;count++;</p><p>&nbsp;num=num/10;</p>\',\'<p>num=num/10;</p><p>&nbsp;if(num=0)</p><p>&nbsp;count++;</p><p>&nbsp;digit=num%10;</p>\'],[\'<p>if(count&gt;=0)</p><p>&nbsp;printf(\"it\'s not a duck number);</p><p>&nbsp;else</p><p>&nbsp;printf(\"It\'s a duck number\");return 0;</p><p>}<br>&nbsp;</p>\',\'<p>if(count&gt;=0)</p><p>&nbsp;printf(\"it\'s a duck number);</p><p>&nbsp;else</p><p>&nbsp;printf(\"Its not a duck number\");return 0;</p><p>}</p>\',\'<p>if(count&gt;0)</p><p>&nbsp;printf(\"it\'s a duck number);</p><p>&nbsp;else</p><p>&nbsp;printf(\"Its not a duck number\");return 0;</p><p>}<br>&nbsp;</p>\']', '\'<p>scanf(\"%d\",&amp;num);</p>\',\'<p>while(num&gt;0)</p>\',\'<p>digit=num%10;</p><p>&nbsp;if(num==0)</p><p>&nbsp;count++;</p><p>&nbsp;num=num/10;</p>\',\'<p>if(count&gt;0)</p><p>&nbsp;printf(\"it\'s a duck number);</p><p>&nbsp;else</p><p>&nbsp;printf(\"Its not a duck number\");return 0;</p><p>}<br>&nbsp;</p>\'', 'To Check Wether a Number is a Duck Number or not.', NULL),
(6, '<p>//Equilibrium index of an array is an index such that the sum of elements at lower indexes is equal to the sum of elements at //higher indexes.</p><p>#include &lt;stdio.h&gt;&nbsp;</p><p>int equilibrium(int arr[], int n) ;&nbsp;</p><p>int main()&nbsp;</p><p>{</p><p>&nbsp;</p>', '\'<p>int arr[] = { -7, 1, 5, 2, -4, 3, 0 };&nbsp;</p><p>int arr_size = sizeof(arr) / sizeof(arr[0]);</p>\',\'<p>&nbsp;</p>\',\'<p>&nbsp;</p>\',\'<p>&nbsp;</p>\',\'<p>&nbsp;</p>\',\'<p>//If no equilibrium index found then what should be returned&nbsp;</p>\'', '[\'<p>printf(\"First equilibrium index is %d\", equilibrium(arr, arr_size)); return 0; }</p>\',\'<p>printf(\"First equilibrium index is %d\", equilibrium(arr[], arr_size));return 0;}</p>\',\'<p>int result=equilibrium(arr[],arr_size); printf(\"First equilibrium index is %d\",result);return 0;}</p>\'],[\'<p>int equilibrium(int arr[], int n)</p><p>{ int sum = 0, leftsum = 0;</p>\',\'<p>int equilibrium(int arr[], int n)&nbsp;</p><p>{ int sum =leftsum=0 ;</p>\',\'<p>int equilibrium(int arr, int n)&nbsp;</p><p>&nbsp;{ int sum,leftsum ;</p>\'],[\'<p>for (int i = 0; i &lt; n; ++i)&nbsp;</p><p>sum += arr[i];</p>\',\'<p>for (int i = 0; i &lt; n; ++i)&nbsp;</p><p>&nbsp;sum = arr[i];</p>\',\'<p>for (int i = 0; i &lt; n-1; ++i)&nbsp;</p><p>sum = arr[i];&nbsp;<br>&nbsp;</p>\'],[\'<p>for (int i = 0; i &lt; n; ++i) {&nbsp;</p><p>sum -= arr[i];</p>\',\'<p>for (int i = 0; i &lt; n-1; ++i)&nbsp;</p><p>sum = sum-arr[i-i];</p>\',\'<p>for (int i = 0; i &lt; n; ++i)&nbsp;</p><p>sum = sum+arr[i];</p>\'],[\'<p>if (leftsum == sum)&nbsp;</p><p>return i; leftsum += arr[i]; }</p>\',\'<p>if (leftsum == sum)&nbsp;</p><p>return 1; leftsum -= arr[i]; }&nbsp;</p>\',\'<p>if (leftsum == sum)&nbsp;</p><p>return i; leftsum = arr[i]; }</p>\'],[\'<p>return -1; }</p>\',\'<p>return 1;</p>\',\'<p>return 0;</p>\']', '\'<p>printf(\"First equilibrium index is %d\", equilibrium(arr, arr_size)); return 0; }</p>\',\'<p>int equilibrium(int arr[], int n)</p><p>{ int sum = 0, leftsum = 0;</p>\',\'<p>for (int i = 0; i &lt; n; ++i)&nbsp;</p><p>sum += arr[i];</p>\',\'<p>for (int i = 0; i &lt; n; ++i) {&nbsp;</p><p>sum -= arr[i];</p>\',\'<p>if (leftsum == sum)&nbsp;</p><p>return i; leftsum += arr[i]; }</p>\',\'<p>return -1; }</p>\'', 'Find Equilibrium Index of Array', NULL),
(7, '<p>#include &lt;stdio.h&gt;</p><p>int main()</p><p>{</p><p>&nbsp;int a, b, l, h, i;</p>', '\'<p>printf(\"Enter values of a and b\");</p><p>&nbsp;scanf(\"%d%d\", &amp;a, &amp;b);</p>\',\'<p>{&nbsp;<br>&nbsp;</p>\',\'<p>&nbsp;</p>\',\'<p>}</p>\'', '[\'<p>for(i = 1; i &lt;= a &amp;&amp; i != b; i++)</p>\',\'<p>for(i = 1; i &lt;= a || i &lt;= b; i++)</p>\',\'<p>for(i = 1; i &lt;= b; i++, a++)</p>\'],[\'<p>if(i%a == 0)</p>\',\'<p>if(b%i == 0)</p>\',\'<p>if(a%i == 0 &amp;&amp; b%i == 0)</p>\'],[\'<p>i = h;</p>\',\'<p>break;</p>\',\'<p>h = i;</p>\'],[\'<p>l = h/(a*b);</p><p>printf(\"LCM = %d\\nHCF = %d\", l, h);</p><p>&nbsp;return 0;</p><p>}</p>\',\'<p>l = (a*b)/h;</p><p>printf(\"LCM = %d\\nHCF = %d\", l, h);</p><p>&nbsp;return 0;</p><p>}</p>\',\'<p>l = a/(h*b);</p><p>printf(\"LCM = %d\\nHCF = %d\", l, h);</p><p>&nbsp;return 0;</p><p>}</p>\']', '\'<p>for(i = 1; i &lt;= a || i &lt;= b; i++)</p>\',\'<p>if(a%i == 0 &amp;&amp; b%i == 0)</p>\',\'<p>h = i;</p>\',\'<p>l = h/(a*b);</p><p>printf(\"LCM = %d\\nHCF = %d\", l, h);</p><p>&nbsp;return 0;</p><p>}</p>\'', 'find HCF & LCM of two numbers', NULL),
(8, '<p>#include &lt;stdio.h&gt;<br>&nbsp;</p>', '\'<p>//(function definition)</p>\',\'<p>{</p><p>&nbsp;int t = *a;<br>&nbsp;</p>\',\'<p>*b = t;</p><p>}<br>int main()</p><p>{</p><p>&nbsp;int a,b;</p><p>&nbsp;printf(\"Enter two numbers\\n\");</p><p>&nbsp;scanf(\"%d%d\",&amp;a,&amp;b);</p>\',\'<p>&nbsp;</p>\'', '[\'<p>void swap(int* a, int* b)</p>\',\'<p>void swap(int a, int b)</p>\',\'<p>void swap(int &amp;a, int &amp;b)</p>\'],[\'<p>*b = *a;</p>\',\'<p>*a = *b;</p>\',\'<p>*a = t;</p>\'],[\'<p>swap(a,b);</p>\',\'<p>swap(*a,*b);</p>\',\'<p>swap(&amp;a,&amp;b);</p>\'],[\'<p>printf(\"%d %d\",a,b);</p><p>printf(\"\\tare the swapped values\");</p><p>}</p>\',\'<p>printf(\"%d %d\",*a,*b);</p><p>printf(\"\\tare the swapped values\");</p><p>}</p>\',\'<p>printf(\"%d %d\",&amp;a,&amp;b);</p><p>printf(\"\\tare the swapped values\");</p><p>}</p>\']', '\'<p>void swap(int* a, int* b)</p>\',\'<p>*a = *b;</p>\',\'<p>swap(&amp;a,&amp;b);</p>\',\'<p>printf(\"%d %d\",a,b);</p><p>printf(\"\\tare the swapped values\");</p><p>}</p>\'', 'Swap two variables using function', NULL),
(9, '<p>#include&lt;stdio.h&gt;</p><p>&nbsp;</p><p>int main()</p><p>{</p>', '\'<p>int n,reverseint = 0, remainder;</p><p>&nbsp;printf(\"Enter number to check: \");</p><p>&nbsp;</p><p>scanf(\"%d\",&amp;n);</p><p>&nbsp;</p><p>int temp=n;</p>\',\'<p>{</p>\',\'<p>reverseint = reverseint*10 + remainder;</p>\',\'<p>}</p>\',\'<p>printf(\"%d is a palindrome \" , temp);</p><p>&nbsp;else</p>\'', '[\'<p>while( n!=0 )</p>\',\'<p>while( n&lt;0 )</p>\',\'<p>while( n&lt;0 )</p>\'],[\'<p>remainder = n%2;</p>\',\'<p>remainder = n%10;</p>\',\'<p>remainder = n/2;</p>\'],[\'<p>n=n-1;</p>\',\'<p>n = n/2</p>\',\'<p>n /=10;</p>\'],[\'<p>if(temp = reverseint )</p>\',\'<p>if(temp == reverseint)</p>\',\'<p>if(temp == reverseint);</p>\'],[\'<p>printf(\"%d is not a palindrome\", temp);</p><p>return 0;</p><p>}</p>\',\'<p>print(\"%d is not a palindrome\",temp)</p><p>return 0;&nbsp;</p><p>}</p>\',\'<p>printf(\"%d is not a palindrome\" , reverseint);</p><p>return 0;</p><p>}</p>\']', '\'<p>while( n!=0 )</p>\',\'<p>remainder = n%10;</p>\',\'<p>n /=10;</p>\',\'<p>if(temp == reverseint)</p>\',\'<p>printf(\"%d is not a palindrome\", temp);</p><p>return 0;</p><p>}</p>\'', 'If a number is palindrome or not', NULL),
(10, '<p>/*</p><p>&nbsp;1</p><p>&nbsp;2 3</p><p>&nbsp;4 5 6</p><p>7 8 9 10</p><p>*/</p><p>&nbsp;</p><p>#include &lt;stdio.h&gt;</p><p>int main()</p><p>{</p>', '\'<p>int c = 1, i, s, p;</p>\',\'<p>{</p>\',\'<p>printf(\" \");</p>\',\'<p>&nbsp;</p>\'', '[\'<p>for(i = 1; i &lt; 5; i--)</p>\',\'<p>for(; i&lt;= 4; j++)</p>\',\'<p>for(i = 1; i &lt;= 4; i++)</p>\'],[\'<p>for(s = 4-i; s &gt;= 1; s--)</p>\',\'<p>for(s = 1; s &lt;= 4-1; s--)</p>\',\'<p>for(s = 1; s &lt;= 4-1; s--)</p>\'],[\'<p>for(p = 1; p &lt;= i; p++, c++)</p>\',\'<p>for(p = i; p &lt;= 4; p++)</p>\',\'<p>for(p = 1; p &lt;= i; p++)</p>\'],[\'<p>printf(\"%d\", c);</p><p>printf(\"\\n\");</p><p>&nbsp;}</p><p>}</p>\',\'<p>printf(\"%d \", p);</p><p>printf(\"\\n\");</p><p>&nbsp;}</p><p>}</p>\',\'<p>printf(\"%d \", c);</p><p>printf(\"\\n\");</p><p>&nbsp;}</p><p>}</p>\']', '\'<p>for(i = 1; i &lt;= 4; i++)</p>\',\'<p>for(s = 4-i; s &gt;= 1; s--)</p>\',\'<p>for(p = 1; p &lt;= i; p++, c++)</p>\',\'<p>printf(\"%d \", c);</p><p>printf(\"\\n\");</p><p>&nbsp;}</p><p>}</p>\'', 'Pattern', NULL),
(11, '<p>/*&nbsp;</p><p>1</p><p>&nbsp;01</p><p>&nbsp;101</p><p>&nbsp;0101</p><p>&nbsp;.</p><p>&nbsp;.</p><p>&nbsp;.</p><p>&nbsp;n times</p><p>&nbsp;</p><p>*/</p><p>&nbsp;</p><p>#include &lt;stdio.h&gt;</p><p>&nbsp;</p><p>int main()</p><p>{</p>', '\'<p>int i,j,n,p=1;</p><p>&nbsp;printf(\"Enter the number of rows: \");</p><p>&nbsp;scanf(\"%d\",&amp;n);</p>\',\'<p>{</p><p>for(j=1;j&lt;=i;j++){</p>\',\'<p>{</p><p>&nbsp;printf(\"%d\",p);</p><p>&nbsp;}</p><p>&nbsp;else{</p>\'', '[\'<p>for(i=1;i&lt;=n;i++)</p>\',\'<p>for(i=0;i&lt;n;i++)</p>\',\'<p>for(i=1;i&lt;=n+1;i++)</p>\'],[\'<p>if(i%j==0)</p>\',\'<p>if((i-j)%2==0)</p>\',\'<p>if(i+j%2!=0)</p>\'],[\'<p>printf(\"%d\",--p);</p><p>}</p><p>&nbsp;printf(\"\\n\");</p><p>&nbsp;}</p><p>return 0;</p><p>}<br>&nbsp;</p>\',\'<p>printf(\"%d\",-p+1);</p><p>}</p><p>&nbsp;printf(\"\\n\");</p><p>&nbsp;}</p><p>return 0;</p><p>}</p>\',\'<p>printf(\"%d\",(p*-1)+1)</p><p>}</p><p>&nbsp;printf(\"\\n\");</p><p>&nbsp;}</p><p>return 0;</p><p>}<br>&nbsp;</p>\']', '\'<p>for(i=1;i&lt;=n;i++)</p>\',\'<p>if((i-j)%2==0)</p>\',\'<p>printf(\"%d\",-p+1);</p><p>}</p><p>&nbsp;printf(\"\\n\");</p><p>&nbsp;}</p><p>return 0;</p><p>}</p>\'', 'Pattern 2', NULL),
(12, '<p>#include &lt;stdio.h&gt;&nbsp;<br>&nbsp;<br>void FloydTriangle(int n) ;<br>&nbsp;<br>int main()&nbsp;<br>{int n;<br>printf(\"enter the row till which you want floyd\'s triangle\");<br>scanf(\"%d\",&amp;n);<br>&nbsp; &nbsp;FloydTriangle(n);&nbsp;<br>&nbsp; &nbsp;return 0;&nbsp;<br>}&nbsp;</p>', '\'<p>void FloydTriangle(int n)&nbsp;<br>{&nbsp;<br>&nbsp; int i, j, val = 1;&nbsp;</p>\',\'<p>{</p>\',\'<p>&nbsp;</p>\'', '[\'<p>for (i=1; i&lt;=n; i++)</p>\',\'<p>for (i=1; i&lt;n; i++)</p>\',\'<p>for (i=0; i&lt;=n; i++)</p>\'],[\'<p>for (j=1; j&lt;=i; j++)</p>\',\'<p>for (j=1; j&lt;=i; j--)</p>\',\'<p>for (j=1; j&lt;i; j++)</p>\'],[\'<p>printf(\"%d \", val++);</p><p>printf(\"\\n\");&nbsp;<br>&nbsp; }&nbsp;<br>}&nbsp;<br>&nbsp;</p>\',\'<p>printf(\"%d \", val);</p><p>printf(\"\\n\");&nbsp;<br>&nbsp; }&nbsp;<br>}&nbsp;<br>&nbsp;</p>\',\'<p>printf(\"%d \", val--);</p><p>printf(\"\\n\");&nbsp;<br>&nbsp; }&nbsp;<br>}&nbsp;<br>&nbsp;</p>\']', '\'<p>for (i=1; i&lt;=n; i++)</p>\',\'<p>for (j=1; j&lt;=i; j++)</p>\',\'<p>printf(\"%d \", val++);</p><p>printf(\"\\n\");&nbsp;<br>&nbsp; }&nbsp;<br>}&nbsp;<br>&nbsp;</p>\'', 'Print floyds triangle upto n rows entered by the user', NULL),
(13, '<p>#include&lt;stdio.h&gt;</p><p>&nbsp;</p><p>void reverse(int*arr,int size);</p><p>&nbsp;</p><p>int main(){</p>', '\'<p>&nbsp;</p>\',\'<p>scanf(\"%d\",&amp;size);</p>\',\'<p>{</p>\',\'<p>}</p><p>&nbsp;reverse(arr,size);</p><p>&nbsp;return 0;</p><p>}<br>&nbsp;</p>\',\'<p>{</p><p>int temp[100];</p>\',\'<p>{</p>\',\'<p>}</p>\'', '[\'<p>int arr[100];int size;</p>\',\'<p>int arr ; char size;</p>\',\'<p>float arr[5], size;</p>\'],[\'<p>for(int i = 0 ; i&lt;=size ; i++)</p>\',\'<p>for(int i = 1 ; i &lt; size ; i+=1)</p>\',\'<p>for(int i = 1 ; i &lt; size ; i+=1)</p>\'],[\'<p>scanf(\"%d\",&amp;arr[i]);</p>\',\'<p>scanf(\"%d\",&amp;arr[i+1]);</p>\',\'<p>scanf(\"%d\",&amp;arr[i-1]);</p>\'],[\'<p>void reverse(int arr[5], float size)</p>\',\'<p>void reverse(int arr[100],int size)</p>\',\'<p>int reverse(int arr, int size)</p>\'],[\'<p>for(int i = 0 ; i &lt; size ; i++)</p>\',\'<p>for(int i = 1 ; i&lt;size ; i++)</p>\',\'<p>for(int i = 0 ; i &lt;= size; i++)</p>\'],[\'<p>temp[i+1] = arr[size-i];</p>\',\'<p>temp[i] = arr[size-i];</p>\',\'<p>temp[i] = arr[size-i-1];</p>\'],[\'<p>for(int i = 0 ; i &lt; size ; i++)</p><p>{</p><p>&nbsp;printf(\"%d \",temp[i]);</p><p>&nbsp;}</p><p>}</p>\',\'<p>for(int i = 1; i&lt; size ; i++)</p><p>{</p><p>&nbsp;printf(\"%d \",temp[i]);</p><p>&nbsp;}</p><p>}</p>\',\'<p>for( int i = 0; i &lt;=size;i++)</p><p>{</p><p>&nbsp;printf(\"%d \",temp[i]);</p><p>&nbsp;}</p><p>}</p>\']', '\'<p>int arr[100];int size;</p>\',\'<p>for(int i = 1 ; i &lt; size ; i+=1)</p>\',\'<p>scanf(\"%d\",&amp;arr[i]);</p>\',\'<p>void reverse(int arr[100],int size)</p>\',\'<p>for(int i = 0 ; i &lt; size ; i++)</p>\',\'<p>temp[i] = arr[size-i-1];</p>\',\'<p>for(int i = 0 ; i &lt; size ; i++)</p><p>{</p><p>&nbsp;printf(\"%d \",temp[i]);</p><p>&nbsp;}</p><p>}</p>\'', 'Reversing of a number using Array', NULL),
(14, '<p>/*</p><p>&nbsp;</p><p>4</p><p>9</p><p>25</p><p>49</p><p>121</p><p>169</p><p>.</p><p>n terms</p><p>*/</p><p># include &lt;stdio.h&gt;</p><p>int main()</p><p>{</p>', '\'<p>int n, f, i, j, c = 1;</p><p>&nbsp;printf(\"Enter number of terms\");</p><p>&nbsp;scanf(\"%d\", &amp;n);</p>\',\'<p>{</p><p>&nbsp;f = 1;</p>\',\'<p>{</p>\',\'<p>{</p><p>&nbsp;f = 0;</p><p>&nbsp;break;</p><p>&nbsp;}</p><p>&nbsp;}<br>&nbsp;</p>\'', '[\'<p>or(i = 2; c &lt; n; i++)</p>\',\'<p>for(i = 2; c &lt;= n; i++)</p>\',\'<p>for(i = 2; c == n; i++)</p>\'],[\'<p>for(j = 2; j &lt; i; j++)</p>\',\'<p>for(j = 2; j &lt; n; j++)</p>\',\'<p>for(j = 2; j &lt; c; c++)</p>\'],[\'<p>if(i%j == 0)</p>\',\'<p>if(j%i != 0)</p>\',\'<p>if(j%i == 0)</p>\'],[\'<p>if(f == 0)</p><p>{</p><p>&nbsp;printf(\"%d\\n\", i*i);</p><p>&nbsp;c++;</p><p>&nbsp;}</p><p>&nbsp;}</p><p>&nbsp;return 0;</p><p>}</p>\',\'<p>if(f == 1)</p><p>{</p><p>&nbsp;printf(\"%d\\n\", i*i);</p><p>&nbsp;c++;</p><p>&nbsp;}</p><p>&nbsp;}</p><p>&nbsp;return 0;</p><p>}</p>\',\'<p>if(c == 0)</p><p>{</p><p>&nbsp;printf(\"%d\\n\", i*i);</p><p>&nbsp;c++;</p><p>&nbsp;}</p><p>&nbsp;}</p><p>&nbsp;return 0;</p><p>}</p>\']', '\'<p>for(i = 2; c &lt;= n; i++)</p>\',\'<p>for(j = 2; j &lt; i; j++)</p>\',\'<p>if(i%j == 0)</p>\',\'<p>if(f == 1)</p><p>{</p><p>&nbsp;printf(\"%d\\n\", i*i);</p><p>&nbsp;c++;</p><p>&nbsp;}</p><p>&nbsp;}</p><p>&nbsp;return 0;</p><p>}</p>\'', 'PROGRAM TO PRINT SERIES', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `roll` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `questions` varchar(300) DEFAULT NULL,
  `scores` varchar(300) DEFAULT NULL,
  `time` varchar(300) DEFAULT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `name`, `roll`, `email`, `password`, `questions`, `scores`, `time`, `year`) VALUES
(1, 'Ramit', '101706126', 'ramitkaul@gmail.com', '$5$rounds=535000$Diqho28kLFnLAoYI$mMOGmGm6FmVWzwF..RVd0D6y6LV6dDZZawQedoUaDT1', NULL, NULL, NULL, 2),
(3, 'Divya Prakash Mittal', '101706029', 'divyaprakashmittal@gmail.com', '$5$rounds=535000$T4MOCY8AiiFvQ.9a$ELtsT8zjfN0y8vU05m06rFh9UnzBtPTbG0RSV.wGDG.', NULL, NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Leaderboard`
--
ALTER TABLE `Leaderboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `q_id` (`q_id`);

--
-- Indexes for table `Questions`
--
ALTER TABLE `Questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Leaderboard`
--
ALTER TABLE `Leaderboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Questions`
--
ALTER TABLE `Questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Leaderboard`
--
ALTER TABLE `Leaderboard`
  ADD CONSTRAINT `q_id` FOREIGN KEY (`q_id`) REFERENCES `Questions` (`id`),
  ADD CONSTRAINT `u_id` FOREIGN KEY (`u_id`) REFERENCES `Users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
