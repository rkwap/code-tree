-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 24, 2018 at 02:26 PM
-- Server version: 5.7.23-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CodeTreeRegister`
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
(3, '<p>#include &lt;stdio.h&gt;</p><p>&nbsp;</p><p>int main()</p><p>{<br>&nbsp;</p>', '\'<p>int n, i;</p>\',\'<p>&nbsp;&nbsp;</p>\',\'<p>printf(\"Enter the numbers of elements: \");</p><p>&nbsp;scanf(\"%d\", &amp;n);</p><p>&nbsp;</p><p>while (n &gt; 100 || n &lt;= 0)</p><p>&nbsp;</p><p>{</p><p>&nbsp;printf(\"Error! number should in range of (1 to 100).\\n\");</p><p>&nbsp;printf(\"Enter the number again: \");</p>\',\'<p>}</p><p>&nbsp;</p><p>for(i = 0; i &lt; n; ++i)</p><p>&nbsp;{</p><p>&nbsp;printf(\"%d. Enter number: \", i+1);</p><p>&nbsp;scanf(\"%f\", &amp;num[i]);</p>\',\'<p>}</p>\'', '[\'<p>float num[100];</p>\',\'<p>float num(100);</p>\',\'<p>float num {100}</p>\'],[\'<p>float sum = 1.0, average;</p>\',\'<p>float sum = 0, average;</p>\',\'<p>float sum = 0.0, average;</p>\'],[\'<p>scanf(\"%d\", &amp;n);</p>\',\'<p>scanf(\"%f\" ,&amp;n);</p>\',\'<p>Scanf(\"%d\", &amp;n)</p>\'],[\'<p>sum += num(i);</p>\',\'<p>sum += num[i];</p>\',\'<p>sum *= num[i];</p>\'],[\'<p>average = sum + n;printf(\"Average = %.2f\", average);</p><p>return 0;</p><p>}</p>\',\'<p>average = sum / n;printf(\"Average = %.2f\", average);</p><p>return 0;</p><p>}</p>\',\'<p>average = sum % n;printf(\"Average = %.2f\", average);</p><p>&nbsp;return 0;</p><p>}</p>\']', '\'<p>float num[100];</p>\',\'<p>float sum = 0.0, average;</p>\',\'<p>scanf(\"%d\", &amp;n);</p>\',\'<p>sum += num[i];</p>\',\'<p>average = sum / n;printf(\"Average = %.2f\", average);</p><p>return 0;</p><p>}</p>\'', 'Finding Average Using Arrays', NULL),
(4, '<p>/*HINT:-Equilibrium index of an array is an index such that the sum of elements at lower indexes is equal to the sum of elements at higher indexes. For example, in an array A:</p><p>Example :</p><p>Input : A[] = {-7, 1, 5, 2, -4, 3, 0}</p><p>Output : 3</p><p>3 is an equilibrium index, because:</p><p>A[0] + A[1] + A[2] = A[4] + A[5] + A[6] */</p><p>#include &lt;stdio.h&gt;</p><p>int equilibrium(int arr[], int n) ;</p><p>int main()&nbsp;</p><p>{</p>', '\'<p>int arr[] = { -7, 1, 5, 2, -4, 3, 0 };&nbsp;</p><p>int arr_size = sizeof(arr) / sizeof(arr[0]);</p>\',\'<p>&nbsp;</p>\',\'<p>&nbsp;&nbsp;</p>\',\'<p>&nbsp;</p>\',\'<p>&nbsp;</p>\',\'<p>/* If no equilibrium index found then what should be returned */</p>\'', '[\'<p>printf(\"First equilibrium index is %d\", equilibrium(arr, arr_size)); return 0; }</p>\',\'<p>printf(\"First equilibrium index is %d\", equilibrium(arr[], arr_size));return 0;}</p>\',\'<p>int result=equilibrium(arr[],arr_size); printf(\"First equilibrium index is %d\",result);return 0;}</p>\'],[\'<p>int equilibrium(int arr[], int n)&nbsp;</p><p>{ int sum = 0, leftsum = 0;</p>\',\'<p>int equilibrium(int arr[], int n)&nbsp;</p><p>{ int sum =leftsum=0 ;</p>\',\'<p>int equilibrium(int arr, int n)&nbsp;</p><p>{ int sum,leftsum ;</p>\'],[\'<p>for (int i = 0; i &lt; n; ++i)</p><p>&nbsp;sum += arr[i];</p>\',\'<p>for (int i = 0; i &lt; n; ++i)&nbsp;</p><p>sum = arr[i];</p>\',\'<p>for (int i = 0; i &lt; n-1; ++i)&nbsp;</p><p>&nbsp;sum = arr[i];</p>\'],[\'<p>for (int i = 0; i &lt; n; ++i) {</p><p>&nbsp;sum -= arr[i];</p>\',\'<p>for (int i = 0; i &lt; n-1; ++i)</p><p>&nbsp;sum = sum-arr[i-i];</p>\',\'<p>for (int i = 0; i &lt; n; ++i)</p><p>&nbsp;sum = sum+arr[i];</p>\'],[\'<p>if (leftsum == sum)&nbsp;</p><p>return i;</p><p>&nbsp;leftsum += arr[i]; }</p>\',\'<p>if (leftsum == sum)&nbsp;</p><p>&nbsp;return 1;</p><p>&nbsp;leftsum -= arr[i]; }</p>\',\'<p>if (leftsum == sum)&nbsp;</p><p>return i;</p><p>&nbsp;leftsum = arr[i]; }</p>\'],[\'<p>return -1; }</p>\',\'<p>return 1; }</p>\',\'<p>return 0; }</p>\']', '\'<p>printf(\"First equilibrium index is %d\", equilibrium(arr, arr_size)); return 0; }</p>\',\'<p>int equilibrium(int arr[], int n)&nbsp;</p><p>{ int sum = 0, leftsum = 0;</p>\',\'<p>for (int i = 0; i &lt; n; ++i)</p><p>&nbsp;sum += arr[i];</p>\',\'<p>for (int i = 0; i &lt; n; ++i) {</p><p>&nbsp;sum -= arr[i];</p>\',\'<p>if (leftsum == sum)&nbsp;</p><p>return i;</p><p>&nbsp;leftsum += arr[i]; }</p>\',\'<p>return -1; }</p>\'', 'Find equilibrium index of array', NULL),
(9, '<p>#include&lt;stdio.h&gt;</p><p>#include &lt;ctype.h&gt;&nbsp;</p><p>int main(){</p>', '\'<p>&nbsp;</p>\',\'<p>printf(\"Enter a character: \");</p>\',\'<p>int ctr = 0;</p>\',\'<p>if((val&gt;=\'a\' &amp;&amp; val&lt;=\'z\') || (val&gt;=\'A\' &amp;&amp; val&lt;=\'Z\') ){</p><p>&nbsp;printf(\"It is an alphabet\");</p><p>&nbsp;}</p>\'', '[\'<p>int val;</p>\',\'<p>void val;</p>\',\'<p>char val;</p>\'],[\'<p>scanf(\"%d\",&amp;val);</p>\',\'<p>scanf(\"%c\",&amp;val);</p>\',\'<p>scanf(\"%s\",&amp;val)</p>\'],[\'<p>while (*ch != NULL)</p>\',\'<p>while ( ch != NULL)</p>\',\'<p>while (*ch == NULL)</p>\'],[\'<p>else if( isdigit(val)==0)</p><p>{</p><p>&nbsp;printf(\"It is a special symbol\");</p><p>&nbsp;}</p><p>&nbsp;else {</p><p>&nbsp;printf(\"It is a Number\");</p><p>&nbsp;}</p><p>&nbsp;return 0;</p><p>&nbsp;}</p>\',\'<p>else if(isnum(val)==0)</p><p>{</p><p>&nbsp;printf(\"It is a special symbol\");</p><p>&nbsp;}</p><p>&nbsp;else {</p><p>&nbsp;printf(\"It is a Number\");</p><p>&nbsp;}</p><p>&nbsp;return 0;</p><p>&nbsp;}</p>\',\'<p>else if(isnumber(val)==0)</p><p>{</p><p>&nbsp;printf(\"It is a special symbol\");</p><p>&nbsp;}</p><p>&nbsp;else {</p><p>&nbsp;printf(\"It is a Number\");</p><p>&nbsp;}</p><p>&nbsp;return 0;</p><p>&nbsp;}</p>\']', '\'<p>char val;</p>\',\'<p>scanf(\"%c\",&amp;val);</p>\',\'<p>while (*ch != NULL)</p>\',\'<p>else if( isdigit(val)==0)</p><p>{</p><p>&nbsp;printf(\"It is a special symbol\");</p><p>&nbsp;}</p><p>&nbsp;else {</p><p>&nbsp;printf(\"It is a Number\");</p><p>&nbsp;}</p><p>&nbsp;return 0;</p><p>&nbsp;}</p>\'', ' check if the value entered is a digit, alphabet, or special symbol', NULL),
(10, '<p>#include &lt;stdio.h&gt;</p><p>int calculateLength(char*);</p><p>&nbsp;void main()&nbsp;</p><p>{</p>', '\'<p>har str1[25];</p><p>&nbsp;int len;</p><p>&nbsp;printf(\"\\n\\n Pointer : Calculate the length of the string :\\n\");&nbsp;</p><p>printf(\"---------------------------------------------------\\n\");</p><p>printf(\" Input a string : \");</p><p>&nbsp;scanf(\"%[^\\n]%*c\", str1);</p><p>len = calculateLength(str1);</p>\',\'<p>printf(\"\\n\\n\");</p><p>&nbsp;}</p>\',\'<p>{</p><p>&nbsp;int ctr = 0;</p>\',\'<p>{</p><p>&nbsp;ctr++;</p>\'', '[\'<p>printf(\" The length of the given string %s is : %d \", str1, len-1);</p>\',\'<p>printf(\" The length of the given string %s is : %d \", str1, len);</p>\',\'<p>printf(\" The length of the given string %s is : %d \", str1, len/2);</p>\'],[\'<p>int calculateLength(char* ch)</p>\',\'<p>float calculateLength(char* ch)</p>\',\'<p>int calcLength(char* ch)</p>\'],[\'<p>while (*ch != NULL)</p>\',\'<p>while ( ch != NULL)</p>\',\'<p>while (*ch == NULL)</p>\'],[\'<p>ch++</p><p>}</p><p>&nbsp;return ctr;</p><p>}</p>\',\'<p>ch--;</p><p>}</p><p>&nbsp;return ctr;</p><p>}</p>\',\'<p>ch++;</p><p>}</p><p>&nbsp;return ctr;</p><p>}</p>\']', '\'<p>printf(\" The length of the given string %s is : %d \", str1, len);</p>\',\'<p>int calculateLength(char* ch)</p>\',\'<p>while (*ch != NULL)</p>\',\'<p>ch++;</p><p>}</p><p>&nbsp;return ctr;</p><p>}</p>\'', 'Calculate length of string using pointers', NULL),
(15, '<p>#include&lt;stdio.h&gt;</p><p>&nbsp;</p><p>long long convert_deci(int);</p><p>&nbsp;</p><p>int main()</p><p>{#include&lt;stdio.h&gt;</p><p>&nbsp;</p><p>long long convert_deci(int);</p><p>&nbsp;</p><p>int main()</p><p>{#include&lt;stdio.h&gt;</p><p>&nbsp;</p><p>long long convert_deci(int);</p><p>&nbsp;</p><p>int main()</p><p>{</p>', '\'<p>int n;</p><p>&nbsp;printf(\"enter a decimal number: \");</p><p>&nbsp;scanf(\"%d\" , &amp;n);</p><p>&nbsp;printf(\"%d in decimal = %d in binary\" , n, convert_deci(n));</p><p>&nbsp;return 0;&nbsp;</p><p>}</p>\',\'<p>long long binaryno = 0;</p><p>&nbsp;int rem , i = 1, step =1;</p>\',\'<p>{</p><p>&nbsp;rem = n%2;</p>\',\'<p>&nbsp;</p>\',\'<p>&nbsp;&nbsp;</p>\',\'<p>i *= 10;</p><p>&nbsp;}</p>\'', '[\'<p>long long convert_deci( int n );</p><p>{</p>\',\'<p>long long convert_deci( int n )</p><p>{</p>\',\'<p>long long convert_deci( float n)</p><p>{</p>\'],[\'<p>while ( n =0 )</p>\',\'<p>while ( n!=0 );</p>\',\'<p>while ( n!=0 )</p>\'],[\'<p>print(\"Step %d: %d/2, Remainder = %d, Quotient = %d\\n\", step++, n, rem, n/2);</p>\',\'<p>printf(\"Step %d: %d/2, Remainder = %d, Quotient = %d\\n\", n, step++, rem, n/2);</p>\',\'<p>printf(\"Step %d: %d/2, Remainder = %d, Quotient = %d\\n\", step++, n, rem, n/2)</p>\'],[\'<p>n /= 2;</p>\',\'<p>n /=10;</p>\',\'<p>n %= 2;</p>\'],[\'<p>binaryno=rem*i;</p>\',\'<p>binaryno += rem*i;</p>\',\'<p>binaryno=rem+rem*i;</p>\'],[\'<p>return n;}</p>\',\'<p>return binaryno;}</p>\',\'<p>return rem;}</p>\']', '\'<p>long long convert_deci( int n )</p><p>{</p>\',\'<p>while ( n!=0 )</p>\',\'<p>printf(\"Step %d: %d/2, Remainder = %d, Quotient = %d\\n\", n, step++, rem, n/2);</p>\',\'<p>n /= 2;</p>\',\'<p>binaryno += rem*i;</p>\',\'<p>return binaryno;}</p>\'', 'Decimal to Binary conversion', NULL),
(16, '<p>// Arrange array of integers in ascending order&nbsp;</p><p>#include&lt;stdio.h&gt;</p><p>int main()</p><p>{</p>', '\'<p>&nbsp;</p>\',\'<p>printf(\"Enter how many values in array: \\n\");</p><p>&nbsp;scanf(\"%d\",&amp;n);</p><p>printf(\"Enter %d values: \\n\",n);</p><p>&nbsp;for(i=0;i&lt;n;i++)</p>\',\'<p>for(i=0;i&lt;n-1;i++)</p><p>&nbsp;{</p>\',\'<p>{</p>\'', '[\'<p>int a[100],i,j,n,temp;</p>\',\'<p>int a[100],int i,j,n,temp;</p>\',\'<p>int a[100];i,j,n,temp;</p>\'],[\'<p>scanf(\"%d\",&amp;a);</p>\',\'<p>scanf(\"%d\",&amp;a[i]);</p>\',\'<p>scanf(\"%d\",a[&amp;i]);</p>\'],[\'<p>for(j=1;j&lt;n;j++)</p>\',\'<p>for(j=i+1;j&lt;n;j++)</p>\',\'<p>for(j=0;j&lt;=n;j++)</p>\'],[\'<p><strong>if(a[i]&gt;=a[j])</strong></p><p>{</p><p>&nbsp;</p><p>temp=a[i];</p><p>&nbsp;a[i]=a[j];</p><p>&nbsp;a[j]=temp;</p><p>&nbsp;</p><p>}</p><p>&nbsp;}</p><p>&nbsp;}&nbsp;</p><p>printf(\"\\n\\nSorted array :\\n\");</p><p>&nbsp;</p><p>for(i=0;i&lt;n;i++)</p><p>&nbsp;printf(\"%5d \",a[i]);</p><p>&nbsp;</p><p>return 0;</p><p>}</p>\',\'<p><strong>if(i&gt;=j)</strong></p><p>{</p><p>&nbsp;</p><p>temp=a[i];</p><p>&nbsp;a[i]=a[j];</p><p>&nbsp;a[j]=temp;</p><p>&nbsp;</p><p>}</p><p>&nbsp;}</p><p>&nbsp;}&nbsp;</p><p>printf(\"\\n\\nSorted array :\\n\");</p><p>&nbsp;</p><p>for(i=0;i&lt;n;i++)</p><p>&nbsp;printf(\"%5d \",a[i]);</p><p>&nbsp;</p><p>return 0;</p><p>}</p>\',\'<p><strong>if(a[i]&lt;a[j])</strong></p><p>{</p><p>&nbsp;</p><p>temp=a[i];</p><p>&nbsp;a[i]=a[j];</p><p>&nbsp;a[j]=temp;</p><p>&nbsp;</p><p>}</p><p>&nbsp;}</p><p>&nbsp;}&nbsp;</p><p>printf(\"\\n\\nSorted array :\\n\");</p><p>&nbsp;</p><p>for(i=0;i&lt;n;i++)</p><p>&nbsp;printf(\"%5d \",a[i]);</p><p>&nbsp;</p><p>return 0;</p><p>}</p>\']', '\'<p>int a[100],i,j,n,temp;</p>\',\'<p>scanf(\"%d\",&amp;a[i]);</p>\',\'<p>for(j=i+1;j&lt;n;j++)</p>\',\'<p><strong>if(a[i]&gt;=a[j])</strong></p><p>{</p><p>&nbsp;</p><p>temp=a[i];</p><p>&nbsp;a[i]=a[j];</p><p>&nbsp;a[j]=temp;</p><p>&nbsp;</p><p>}</p><p>&nbsp;}</p><p>&nbsp;}&nbsp;</p><p>printf(\"\\n\\nSorted array :\\n\");</p><p>&nbsp;</p><p>for(i=0;i&lt;n;i++)</p><p>&nbsp;printf(\"%5d \",a[i]);</p><p>&nbsp;</p><p>return 0;</p><p>}</p>\'', 'Array Sorting', NULL),
(18, '<p>#include &lt;stdio.h&gt;</p><p>int main()</p><p>{</p>', '\'<p>int n,reverseint = 0, remainder;</p><p>&nbsp;printf(\"Enter number to check: \");</p><p>scanf(\"%d\",&amp;n);</p><p>int temp=n;</p>\',\'<p>{</p>\',\'<p>reverseint = reverseint*10 + remainder;</p>\',\'<p>}</p>\',\'<p>printf(\"%d is a palindrome \" , temp);</p><p>&nbsp;else</p>\'', '[\'<p>while( n!=0 )</p>\',\'<p>while( n&lt;0 )</p>\',\'<p>while( n==0 )</p>\'],[\'<p>remainder = n%2;</p>\',\'<p>remainder = n%10;</p>\',\'<p>remainder = n/2;</p>\'],[\'<p>n=n-1;</p>\',\'<p>n = n/2</p>\',\'<p>n /=10;</p>\'],[\'<p>if(temp = reverseint )</p>\',\'<p>if(temp == reverseint)</p>\',\'<p>if(temp == reverseint);</p>\'],[\'<p>print(\"%d is not a palindrome\",temp);</p><p>return 0;</p><p>}</p>\',\'<p>printf(\"%d is not a palindrome\", temp);<br>return 0;</p><p>}</p>\',\'<p>printf(\"%d is not a palindrome\" , reverseint);</p><p>return 0;</p><p>}</p>\']', '\'<p>while( n!=0 )</p>\',\'<p>remainder = n%10;</p>\',\'<p>n /=10;</p>\',\'<p>if(temp == reverseint)</p>\',\'<p>printf(\"%d is not a palindrome\", temp);<br>return 0;</p><p>}</p>\'', 'Check if a number is palindrome or not', NULL),
(20, '<p>/*</p><p>&nbsp;1</p><p>&nbsp;2 3</p><p>&nbsp;4 5 6</p><p>7 8 9 10</p><p>*/</p><p>&nbsp;</p><p>#include &lt;stdio.h&gt;</p><p>int main()<br>{</p>', '\'<p>int c = 1, i, s, p;</p>\',\'<p>{</p>\',\'<p>printf(\" \");</p>\',\'<p>&nbsp;</p>\'', '[\'<p>for(i = 1; i &lt; 5; i--)</p>\',\'<p>for(; i&lt;= 4; j++)</p>\',\'<p>for(i = 1; i &lt;= 4; i++)</p>\'],[\'<p>for(s = 4-i; s &gt;= 1; s--)</p>\',\'<p>for(s = 1; s &lt;= 4-1; s--)</p>\',\'<p>for(s = i; s &gt;= 0; s--)</p>\'],[\'<p>for(p = 1; p &lt;= i; p++, c++)</p>\',\'<p>for(p = i; p &lt;= 4; p++)</p>\',\'<p>for(p = 1; p &lt;= i; p++)</p>\'],[\'<p>printf(\"%d \", p);</p>\',\'<p>printf(\"%d\", c);</p>\',\'<p>printf(\"%d \", s);</p>\']', '\'<p>for(i = 1; i &lt;= 4; i++)</p>\',\'<p>for(s = 4-i; s &gt;= 1; s--)</p>\',\'<p>for(p = 1; p &lt;= i; p++, c++)</p>\',\'<p>printf(\"%d \", c);</p>\'', 'Pattern 1', NULL),
(25, '<p>/* pattern to print pascal triangle</p><p>&nbsp;Pascal triangle:</p><p>&nbsp;1</p><p>&nbsp;2 3 2</p><p>&nbsp;3 4 5 4 3</p><p>&nbsp;4 5 6 7 6 5 4</p><p>5 6 7 8 9 8 7 6 5</p><p>&nbsp;*/</p><p>&nbsp;#include &lt;stdio.h&gt;</p><p>int main()</p><p>{</p>', '\'<p>int i, space, rows,count = 0, count1 = 0;</p><p>&nbsp;int k=0;</p><p>&nbsp;printf(\"Enter number of rows: \");</p>\',\'<p>&nbsp;</p>\',\'<p>{</p>\',\'<p>{</p><p>&nbsp;printf(\" \");</p><p>&nbsp;++count;</p><p>&nbsp;}</p><p>&nbsp;while(k != 2*i-1)</p><p>&nbsp;{</p>\',\'<p>{</p><p>&nbsp;printf(\"%d \", i+k);</p><p>&nbsp;++count;</p><p>&nbsp;}</p><p>&nbsp;else</p><p>&nbsp;{</p><p>&nbsp;++count1;</p>\'', '[\'<p>scan(\"%d\",&amp;rows);</p>\',\'<p>scanf(\"%i\",&amp;rows);</p>\',\'<p>scanf(\"%d\"&amp;rows);</p>\'],[\'<p>for(i=2;i&lt;=rows+1;i++)</p>\',\'<p>for(i=0; i&lt;=rows; ++i)</p>\',\'<p>for(i=1; i&lt;=rows; ++i)</p>\'],[\'<p>for(space=1; space &lt;= rows-i; ++space)</p>\',\'<p>for(space=1; space &lt;= rows+i; ++space)</p>\',\'<p>for(space=1; space &lt;= rows-i; space--)</p>\'],[\'<p>if (count &lt;= rows)</p>\',\'<p>if (count &lt;= rows-1)</p>\',\'<p>if (count &lt;= rows+1)</p>\'],[\'<p>printf(\"%d \", (i-k+2*count1));</p>\',\'<p>printf(\"%d \", (i-k-2*count1));</p>\',\'<p>printf(\"%d \", (i+k-2*count1));</p>\']', '\'<p>scanf(\"%d\"&amp;rows);</p>\',\'<p>for(i=1; i&lt;=rows; ++i)</p>\',\'<p>for(space=1; space &lt;= rows-i; ++space)</p>\',\'<p>if (count &lt;= rows-1)</p>\',\'<p>printf(\"%d \", (i+k-2*count1));</p>\'', 'Pascal Triangle', NULL),
(26, '<p>//swap two variables using function&nbsp;</p><p>#include &lt;stdio.h&gt;</p>', '\'<p>&nbsp;</p>\',\'<p>int main()</p><p>{</p><p>&nbsp;int a,b;</p><p>&nbsp;printf(\"Enter two numbers\\n\");</p><p>&nbsp;scanf(\"%d%d\",&amp;a,&amp;b);</p>\',\'<p>&nbsp;</p>\',\'<p>printf(\" are the swapped values\");</p><p>}</p>\'', '[\'<p>void swap(int* a, int* b);</p>\',\'<p>void swap(int a, int b);</p>\',\'<p>void swap(int &amp;a, int &amp;b);</p>\'],[\'<p>swap(a,b);</p>\',\'<p>swap(*a,*b);</p>\',\'<p>swap(&amp;a,&amp;b);</p>\'],[\'<p>printf(\"%d %d\",a,b);</p>\',\'<p>printf(\"%d %d\",*a,*b);</p>\',\'<p>printf(\"%d %d\",&amp;a,&amp;b);</p>\'],[\'<p><strong>void swap(int* a, int* b)</strong></p><p>{</p><p>&nbsp;int t = *a;</p><p>&nbsp;*a = *b;</p><p>*b = t;</p><p>}</p>\',\'<p><strong>void swap(int a, int b)</strong></p><p>{</p><p>&nbsp;int t = *a;</p><p>&nbsp;*a = *b;</p><p>*b = t;</p><p>}</p>\',\'<p><strong>void swap(int &amp;a, int &amp;b)</strong></p><p>{</p><p>&nbsp;int t = *a;</p><p>&nbsp;*a = *b;</p><p>*b = t;</p><p>}</p>\']', '\'<p>void swap(int* a, int* b);</p>\',\'<p>swap(&amp;a,&amp;b);</p>\',\'<p>printf(\"%d %d\",a,b);</p>\',\'<p><strong>void swap(int* a, int* b)</strong></p><p>{</p><p>&nbsp;int t = *a;</p><p>&nbsp;*a = *b;</p><p>*b = t;</p><p>}</p>\'', 'Swap two variables', NULL),
(27, '<p>#include &lt;stdio.h&gt;</p><p>#include &lt;math.h&gt;</p><p>int main()</p><p>{</p>', '\'<p>int n, rem, sum=0,ctr=0,len,temp;</p><p>printf(\"Enter a number: \");</p>\',\'<p>temp=n;</p><p>while( temp!=0 ){</p><p>temp/=10;</p><p>&nbsp;ctr++;</p><p>&nbsp;}</p><p>len=ctr;</p><p>temp = n;&nbsp;</p><p>while( temp!=0 )</p><p>&nbsp;{</p><p>rem = temp%10;</p>\',\'<p>temp/=10;</p><p>&nbsp;}</p>\',\'<p>{</p><p>&nbsp;printf(\"%d is an armstrong number\",n);</p><p>&nbsp;}</p><p>else{</p>\'', '[\'<p>scanf(\"%d\", &amp;n);</p>\',\'<p>scan(\" %d \", &amp;n);</p>\',\'<p>scanf(\"%d \", &amp;n)</p>\'],[\'<p>sum += pow(rem,len);</p>\',\'<p>sum += rem*len;</p>\',\'<p>sum += pow(rem,len-1);</p>\'],[\'<p>if(sum = n)</p>\',\'<p>if(sum==n)</p>\',\'<p>if(sum == 1)</p>\'],[\'<p>printf(\"%f is not an armstrong number\");</p>\',\'<p>printf(\"%d is not an armstrong number\",n);</p>\',\'<p>printf(\"%d is not an armstrong number\", n)</p>\']', '\'<p>scanf(\"%d\", &amp;n);</p>\',\'<p>sum += pow(rem,len);</p>\',\'<p>if(sum==n)</p>\',\'<p>printf(\"%d is not an armstrong number\",n);</p>\'', 'Armstrong number', NULL),
(28, '<p>#include&lt;stdio.h&gt;</p><p>void lcm(int n1, int n2);</p><p>int main(){</p>', '\'<p>int main(){</p>\',\'<p>&nbsp;</p>\',\'<p>lcm(n1,n2);</p><p>&nbsp;return 0;</p><p>}</p><p>void lcm(int n1,int n2){</p><p>&nbsp;int hcf;</p><p>&nbsp;int s=(n1&gt;n2?n2:n1);</p>\',\'<p>{</p><p>&nbsp;if(n1%i==0 &amp;&amp; n2%i==0)</p><p>&nbsp;hcf=i;</p><p>&nbsp;}</p>\'', '[\'<p>int n1,n2;</p>\',\'<p>int n1;n2;</p>\',\'<p>int n1,int n2;</p>\'],[\'<p>scanf(\"%d%d\",&amp;n1,&amp;n2);</p>\',\'<p>scanf(\"%c%c\",&amp;n1,&amp;n2);</p>\',\'<p>scanf(\"%d%d\",n1,n2);</p>\'],[\'<p>for(int i=0;i&lt;s;i++)</p>\',\'<p>for(i==0;i&lt;s;i++)</p>\',\'<p>for(int i=0;i&lt;&lt;s;i++)</p>\'],[\'<p><strong>lcm=(n1*n2)/(hcf);</strong></p><p>printf(\"Lcm of the two numbers is:%d\",lcm);</p><p>}</p>\',\'<p><strong>lcm=(n1)/(n2*hcf);</strong></p><p>printf(\"Lcm of the two numbers is:%d\",lcm);</p><p>}</p>\',\'<p><strong>lcm=(n1)/(n2*hcf)</strong></p><p>printf(\"Lcm of the two numbers is:%d\",lcm);</p><p>}</p>\']', '\'<p>int n1,n2;</p>\',\'<p>scanf(\"%d%d\",&amp;n1,&amp;n2);</p>\',\'<p>for(int i=0;i&lt;s;i++)</p>\',\'<p><strong>lcm=(n1*n2)/(hcf);</strong></p><p>printf(\"Lcm of the two numbers is:%d\",lcm);</p><p>}</p>\'', 'LCM of Numbers', NULL),
(29, '<p>/* hashtag valley pattern</p><p># #</p><p># # # # # #</p><p># # # # # # # # # #</p><p># # # # # # # # # # #</p><p>*/</p><p>&nbsp;#include &lt;stdio.h&gt;</p><p>int main() {</p>', '\'<p>char prnt = \"#\";</p><p>&nbsp;int i, j, k, s, c = 1, nos = 9;</p><p>&nbsp;for (i = 1; c &lt;= 4; i++) {</p>\',\'<p>{</p>\',\'<p>{</p><p>&nbsp;printf(\"%2c\", prnt);</p><p>&nbsp;}</p>\',\'<p>{ //The spacing factor</p><p>&nbsp;if (c == 4 &amp;&amp; s == 1) {</p><p>&nbsp;break;</p><p>&nbsp;}</p><p>&nbsp;printf(\" \");</p><p>&nbsp;}<br>&nbsp;</p>\',\'<p>{</p><p>&nbsp;if (c == 4 &amp;&amp; k == 5)&nbsp;</p><p>{</p><p>&nbsp;break;</p><p>&nbsp;}</p><p>&nbsp;printf(\"%2c\", prnt);</p><p>&nbsp;}</p><p>&nbsp;printf(\"\\n\");</p>\'', '[\'<p>if ((i % 2) != 0)</p>\',\'<p>if ((i % 2) == 0)</p>\',\'<p>if ((i % 2) == 0 || (i%2)!=0)</p>\'],[\'<p>for (j = 1; j &lt;= i; j++)</p>\',\'<p>for (j = i; j &gt;= 1; j--)</p>\',\'<p>for (j = 1; j &lt;= i-1; j++)</p>\'],[\'<p>for (s = nos; s &gt;= 0; s--)</p>\',\'<p>for (s = nos; s &gt;= 1; s--)</p>\',\'<p>for (s = nos-1; s &gt;= 1; s--)</p>\'],[\'<p>for (k = 1; k &lt;= i*i; k++)</p>\',\'<p>for (k = 0; k &lt;= i; k++)</p>\',\'<p>for (k = 1; k &lt;= i; k++)</p>\'],[\'<p><strong>nos = nos - 4;</strong></p><p>c++;</p><p>&nbsp;}</p><p>&nbsp;}</p><p>&nbsp;return 0;</p><p>}</p>\',\'<p><strong>nos = nos + 4;</strong></p><p>c++;</p><p>&nbsp;}</p><p>&nbsp;}</p><p>&nbsp;return 0;</p><p>}</p>\',\'<p><strong>nos = nos * 4;</strong></p><p>c++;</p><p>&nbsp;}</p><p>&nbsp;}</p><p>&nbsp;return 0;</p><p>}</p>\']', '\'<p>if ((i % 2) != 0)</p>\',\'<p>for (j = 1; j &lt;= i; j++)</p>\',\'<p>for (s = nos; s &gt;= 1; s--)</p>\',\'<p>for (k = 1; k &lt;= i; k++)</p>\',\'<p><strong>nos = nos - 4;</strong></p><p>c++;</p><p>&nbsp;}</p><p>&nbsp;}</p><p>&nbsp;return 0;</p><p>}</p>\'', 'Valley Pattern', NULL),
(30, '<p>// To find Greatest Element in array</p><p>&nbsp;</p><p>#include &lt;stdio.h&gt;</p><p>&nbsp;</p><p>int main()</p><p>{</p>', '\'<p>int array[100], maximum, size, i, location = 1;</p><p>&nbsp;printf(\"Enter the number of elements in array\\n\");</p>\',\'<p>printf(\"Input elements of array\\n\");</p>\',\'<p>&nbsp;</p>\',\'<p>&nbsp;</p>\',\'<p>for (i = 1; i &lt; size; i++)</p><p>&nbsp;{</p><p>&nbsp;if (array[i] &gt; maximum)</p><p>&nbsp;{</p><p>&nbsp;maximum = array[i];</p>\'', '[\'<p>scanf(%d, &amp;size);</p>\',\'<p>scanf(\"%d\", &amp;size);</p>\',\'<p>scanf(\"%f\", &amp;size);</p>\'],[\'<p>for (i = 0; i &lt; 100; i++)</p>\',\'<p>for (i = 0; i &lt; location; i++)</p>\',\'<p>for (i = 0; i &lt; size; i++)</p>\'],[\'<p>scanf(\"%d\", array[i]);</p>\',\'<p>scanf(\"%c\", &amp;array[i]);</p>\',\'<p>scanf(\"%d\", &amp;array[i]);</p>\'],[\'<p>maximum = 0;</p>\',\'<p>maximum = array[0];</p>\',\'<p>maximum = array[size];</p>\'],[\'<p>location = i+1;</p>\',\'<p>location = i;</p>\',\'<p>location++;</p>\']', '\'<p>scanf(\"%d\", &amp;size);</p>\',\'<p>for (i = 0; i &lt; size; i++)</p>\',\'<p>scanf(\"%d\", &amp;array[i]);</p>\',\'<p>maximum = array[0];</p>\',\'<p>location = i+1;</p>\'', 'Greatest Element in array', NULL),
(31, '<p>/*&nbsp;</p><p>1</p><p>&nbsp;01</p><p>&nbsp;101</p><p>&nbsp;0101</p><p>&nbsp;.</p><p>&nbsp;.</p><p>&nbsp;.</p><p>&nbsp;n times</p><p>*/</p><p>#include &lt;stdio.h&gt;</p><p>int main()</p><p>{</p>', '\'<p>int i,j,n,p=1;<br>&nbsp; &nbsp;printf(\"Enter the number of rows: \");<br>&nbsp; &nbsp;scanf(\"%d\",&amp;n);</p>\',\'<p>{</p><p>&nbsp; &nbsp; &nbsp; &nbsp;for(j=1;j&lt;=i;j++){<br>&nbsp; &nbsp; &nbsp; &nbsp;</p>\',\'<p>{<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;printf(\"%d\",p);<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;else{</p>\'', '[\'<p>for(i=1;i&lt;=n;i++)</p>\',\'<p>for(i=0;i&lt;n;i++)</p>\',\'<p>for(i=1;i&lt;=n+1;i++)</p>\'],[\'<p>if(i%j==0)</p>\',\'<p>if((i-j)%2==0)</p>\',\'<p>if(i+j%2!=0)</p>\'],[\'<p>printf(\"%d\",--p);</p><p>&nbsp;}</p>\',\'<p>printf(\"%d\",-p+1);</p>\',\'<p>printf(\"%d\",(p*-1)+1)</p>\']', '\'<p>for(i=1;i&lt;=n;i++)</p>\',\'<p>if((i-j)%2==0)</p>\',\'<p>printf(\"%d\",--p);</p><p>&nbsp;}</p>\'', 'Pattern 2', NULL);

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
  `year` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `name`, `roll`, `email`, `password`, `questions`, `scores`, `time`, `year`) VALUES
(1, 'Tarun Kumar Dixit', '101803551', 'tarundixit0310@gmail.com', '$5$rounds=535000$8smqKC8ODwBNXyrL$QnGCqot6MCS3sDpjmmEJm07YRQIPXg1YRkjMfTN8Dw9', NULL, '10', NULL, '1'),
(2, 'Dhruv', '101803439', 'dhruvbehlk3@gmail.com', '$5$rounds=535000$qAaien82y2yAY0XN$PYDBoxSejEFzAQwJjieQLIP63qXDha93I9YWC5vkZpB', NULL, '10', NULL, '1'),
(3, 'Hritesh Mahajan', '101803661', 'hriteshmahajan26@yahoo.com', '$5$rounds=535000$.9NOPB23QrJ8uKW7$8VPy/KlwF5V3DSzt6LZ0RTJWTEiB2Ht1crZPf4EdHqA', NULL, '10', NULL, '1'),
(4, 'Shivam Goyal', '101803427', 'shivamgoyal1899@gmail.com', '$5$rounds=535000$COs.6tmW.kUBc3vY$kyibeiOI9NwaWlV53kZQbj00iypJ9YzgfNsJRMarENC', NULL, '10', NULL, '1'),
(5, 'Stuti Jain', '101806174', 'dpsstu11072@gmail.com', '$5$rounds=535000$97cvkusi0RhS/wan$Jr634ketx2ldyQ6dfj3OQ1GyEXtDaQvAqy6ULifZKC3', NULL, '10', NULL, '1'),
(6, 'Shaurya Khanna', '101803429', 'shauryakhanna56@gmail.com', '$5$rounds=535000$Y1AlU2IUHgQeyQlp$V0LjHaEiq6ed2IuSlCSIuj1CQA69hou2SvLpEvByZh8', NULL, '10', NULL, '1'),
(7, 'Ankita Gupta', '101804012', 'ankita1312gupta@gmail.com', '$5$rounds=535000$Uoil1VAda3KBvGTh$BTSH8Uw6Y4LobtcgHLx35TVzgLx81QhZ20ly2gxbzD4', NULL, '10', NULL, '1'),
(8, 'Rajat Gupta', '101703427', 'rajatgupta4488@gmail.com', '$5$rounds=535000$4NTu09KpJ88lSVsD$wL5u9CqLwNwKyg3i1FsLO1d3CimWmB.9RLn6Fq5PBE6', NULL, '10', NULL, '2'),
(9, 'Mansi Gupta', '101803412 ', 'guptamansi2712@gmail.com', '$5$rounds=535000$06SLOc7eFgWtMqsL$wQSOFqh.KTalE2PR94S8X8mi8QyjKEyrgwEcilXs6w0', NULL, '10', NULL, '1'),
(10, 'reachanihere', '101815121', 'reachanihere@hotmail.com', '$5$rounds=535000$CJBprFG6/KHl/8Jj$jQq6qnGP00kKKmlhxbbghqdx80EFsqCMoFlAuFtAO41', NULL, '10', NULL, '1'),
(11, 'Kashika Malick', '101715071', 'kashikamalick@gmail.com', '$5$rounds=535000$la5mwEggVwlMNNH/$QRRJx9BHws5WRo/5X2mGIejP78Y7fXO8t8g7Q1iz0J/', NULL, '10', NULL, '2'),
(12, 'Pallavi Garg', '101803375', 'pallavi312k@yahoo.in', '$5$rounds=535000$AidGv2jEdfuMjN1a$5krstkdsoAz3dMTYRTq30rGRAm/l8g2jOZXSGvyHed2', NULL, '10', NULL, '1'),
(13, 'Jaskaran Singh', '101803660', 'jaskaransingh.singh77@gmail.com', '$5$rounds=535000$z24J/VFr/kdPM6Lg$tZnaCqR6PYZqtxllYp3oZGKUHBhxHCVfeqMBb9Enak0', NULL, '10', NULL, '1'),
(14, 'Shivam Goel', '101703513', 'goel.shivam117@gmail.com', '$5$rounds=535000$4buvWVO0tdo/L.YU$MQiPk2BDK/CIFevgzOusbXAajHt7IHzDjX7jC.WfgM5', NULL, '10', NULL, '2'),
(15, 'Harshit Grover', '101703223', 'harshitgrover12@gmail.com', '$5$rounds=535000$svj4p6G/0gRIVCel$/xdwEzbQxf8cpUluFU4Cit4u0Jnc2d3JPyD6yAJKKn2', NULL, '10', NULL, '2'),
(16, 'Mankaran Singh', '101803444', 'mankaran32@gmail.com', '$5$rounds=535000$Q8ZPf4sfOs1ac4AO$/.q.C/F.0TRV78w5JEDqx81voN5cKceLR2LyQGkiQOD', NULL, '10', NULL, '1'),
(17, 'Prakhar Singh', '101803291', 'prakharsingh13@gmail.com', '$5$rounds=535000$pAIkhPrUSMGDgsj3$s3TRQ9CVcSCRSNMkadqZ.or4H30lz3r5riZW.c54iI9', NULL, '10', NULL, '1'),
(18, 'Ritik Rawat', '101803475', 'ritikneverback@gmail.com', '$5$rounds=535000$C58QW35cADIoRDFz$zeoqSD1E/TS6rtQQ5MrGJr8mwZT9wWwrMWFs/cmjWCC', NULL, '10', NULL, '1'),
(19, 'Jatin Aggarwal', '101815123', 'jatinagg1@gmail.com', '$5$rounds=535000$PmXVSdtRWD3.n8J4$475gzaJINojj6AoYQ5t0ujbLmeuJaRbg3PllhvH7oE5', NULL, '10', NULL, '1'),
(20, 'Snehdeep kaur', '101803350', 'deepsneh960@gmail.com', '$5$rounds=535000$jOVyHdBDZEplH54J$najg.gs63CcX0by8Fno6YtNJIdxvZgNtjBIIAhrF3M.', NULL, '10', NULL, '1'),
(21, 'Lira Chawla', '101803533', 'lirachawla@gmail.com', '$5$rounds=535000$TxGXnY.9KC6in9T9$W7AeO5tDXef4IDbuI2SbyllGhTld/YjSJA9vM5bCjN2', NULL, '10', NULL, '1'),
(22, 'Rajeev singla', '101803655', 'rajeevsingla780@gmail.com', '$5$rounds=535000$6pPNvmCDXOZxam5.$8EjR6UZiqYmk7Rrurn1JpCQuFcJwiHSvGrMUQmeUaUA', NULL, '10', NULL, '1'),
(23, 'Bibekpreet singh', '101803272', 'bibekpreet99@gmail.com', '$5$rounds=535000$VHFMIy7mie6TzK6i$9CuSsF7VxS6zsZY6Wg5f6Cxa88WlZfkUadVyN4hEs.C', NULL, '10', NULL, '1'),
(24, 'Akriti Singhal', '101803608', 'akritisinghal1663@gmail.com', '$5$rounds=535000$CiWml2lUvuX6m3VG$vGxUHnD.pGn9kuyMjtuX1R3lNrJ8jwWMhCoZxjrrQCD', NULL, '10', NULL, '1'),
(25, 'Radhika Modi', '101803342', 'modi.radhika456@gmail.com', '$5$rounds=535000$iXO7uAprucBgRksK$hULKCNjdcFF9m26LDQWVHwoxs.GLCS4w6Ii2/wJWDm7', NULL, '10', NULL, '1'),
(26, 'Shivam Ahuja', '101753014', 'coolshvm@gmail.com', '$5$rounds=535000$b96RGxXzvk8X4oWU$wBgemZL.1J71QC55bkerq.BSr4CtkvWGBeYFQV/e5R2', NULL, '10', NULL, '2'),
(27, 'Medha Gupta ', '101803656', 'guptamedha789@gmail.com', '$5$rounds=535000$80zbmkxTCbBZPwUY$ucvGZr8ABHpbz8TbaXhUUQGGaACXWIZalLU6K6bkA8B', NULL, '10', NULL, '1'),
(28, 'Bhavesh Pant', '101803668', 'pantbhavesh99@gmail.com', '$5$rounds=535000$2p/sGakqlsNENZuF$rarRJiVn4QNpNugovm1t1Hc7kqBkm.IKTNZtSjOk.A5', NULL, '10', NULL, '1'),
(29, 'Pranjal Sharma', '101803337', 'sharmapranjal468@gmail.com', '$5$rounds=535000$PqpgiDEiY6nFYwxQ$hCY.C5wrSaEnmVeyNYZLVQTeITH7rXp1aszBDuC1.MC', NULL, '10', NULL, '1'),
(30, 'Shivam Bansal', '101703511', 'shivam7abhi@gmail.com', '$5$rounds=535000$7k4SZfGpxRcuFZ4k$Joj4DNQHfII0G33egVbd4l0ECleQ8f04CM.X1WzVGh.', NULL, '10', NULL, '2'),
(31, 'Shubham', '101703528 ', 'sdhandahr08@gmail.com', '$5$rounds=535000$jdhQ.A8afmS7082o$WTamZsrtECEOxPn8n.k1WKDLAQkXHhDrIINd6aI/RR6', NULL, '10', NULL, '2'),
(32, 'Abheesh Bhardwaj', '101803662', 'bhardwajabheeshison@gmail.com', '$5$rounds=535000$v9NS2PdNqouArJL1$E0b6Eq/ntZFwD1NqjrJZdiqiA4tKnt7kEZAldY.VlN.', NULL, '10', NULL, '1'),
(33, 'Vishesh Gupta', '101803125', 'visheshgupta1495@gmail.com', '$5$rounds=535000$LUhPc.T3apcMMqWX$FOVJuQ6k5xcbu1GEVsjsjxIEkGqvyArqWlwotPjO4KB', NULL, '10', NULL, '1'),
(34, 'Ansh', '101803121', 'anshgupta661@gmail.com', '$5$rounds=535000$PmEvKz.f0UEzRpg1$wmlAtDI5QFQoerzOewRZ7.7jus98DI1ENLe5Q98Ynz0', NULL, '10', NULL, '1'),
(35, 'Hemant Taneja', '101815181', 'hemanttaneja30@gmail.com', '$5$rounds=535000$kyeA5qNzrj0JGSas$bdPqAskTCXeJwwtjhIK.FI3gNn/JZfHZ4cwR827A307', NULL, '10', NULL, '1'),
(36, 'Akshit Kumar', '101806002', 'kumarakshit02@gmail.com', '$5$rounds=535000$LvOvnlMwgC2Bv.Jk$h/ER12CHh61PNcOawCBdX56of.oEtczV0vzG66iKUA6', NULL, '10', NULL, '1'),
(37, 'Utkrisht Agrawal', '101815111', 'utkrishtisgutku@gmail.com', '$5$rounds=535000$vORGpYtAbiwl4EMJ$0aCPBYJqzU475.WENn4AFRMk.ylZv5xr.HEkb0Sqez4', NULL, '10', NULL, '1'),
(38, 'Simrat bir Singh', '101703550', 'simratbir4@gmail.com', '$5$rounds=535000$FBPq4.klHhxJScey$4LeGztLb/mTqDGE0UsXvzyX1uxG8LhSXtYoIHgO08T5', NULL, '10', NULL, '2'),
(39, 'Pulkit Garg', '101803535', 'pulkitgarg2108@gmail.com', '$5$rounds=535000$VlacT1OIGCp.7cg2$bVPCl9HEv7OzmY4hf1LEsVtzLEOZSJHxaBMDlS4Oc01', NULL, '10', NULL, '1'),
(40, 'Mehak Munjal', '101806109', 'mehakmunjal00@gmail.com', '$5$rounds=535000$V1P2QPhbJWp3YKTB$xkZyRrenBW0gxednvWpz4hbVfFWHry9rkEv3qaOGy.1', NULL, '10', NULL, '1'),
(41, 'Vaibhav shrotriya', '101806054', 'shrotriyavaibhav94@gmail.com', '$5$rounds=535000$dE9BVx39J8GKDoEM$SALE/UMklRZKGta4IOzCS8pIkv3s9ccHbAbCE8pQLr6', NULL, '10', NULL, '1'),
(42, 'PRATEEK KUMAR GUPTA', '101803538', 'prateek.gupta326@gmail.com', '$5$rounds=535000$GPk57gj/E5w1nklJ$Kbn8.Fizm.y1mteoycVsUL3AMGtyjb2t4qwCkk8f52D', NULL, '10', NULL, '1'),
(43, 'Shenum ', '101803591', 'Sheenamchadha1@gmail.com', '$5$rounds=535000$EARZtwLuSxo9OJur$9UeBoK4is0ShZ5DLefN8ngWhR0RhYpnGBfYy6nuzRQ2', NULL, '10', NULL, '1'),
(44, 'Shubham Khurana ', '101703533', 'khuranashubham512@gmail.com', '$5$rounds=535000$hMRNKMucG.KJaeh9$Fy8tgW75n6eXkOFq8jvS0tYV7XRCBbRHciSx9fHGjh5', NULL, '10', NULL, '2'),
(45, 'Payal ', '101803311', 'Payaljindal05052001@gmail.com', '$5$rounds=535000$3UM5qOeWf2n/J/b7$PgC.paffUsskBPmrANVbfpyvFQQRR/PfQkM6iYPz3q6', NULL, '10', NULL, '1'),
(46, 'Shruti Bansal', '101803512', 'shrutibansal05012001@gmail.com', '$5$rounds=535000$D2qyyzYBIhsZoa3Z$jwQiM5MNkvLChX6PNTJVgS077GS9TBcKCskko5mYOM6', NULL, '10', NULL, '1'),
(47, 'Palka garg', '101803232', 'palkagarg0@gmail.com', '$5$rounds=535000$vQdnBPf/WQ2su1GY$fo954WUH7lrlIvfkfRqMRUX57uiOT/A1FN2wUZRfWVA', NULL, '10', NULL, '1'),
(48, 'Kamal Kant', '101603145', 'kkant107@gmail.com', '$5$rounds=535000$T8DUkbtR/DxgC8PB$AJeCRbVAZIwzux93JRk2hfmXq38ZPyc7mIDsTwd6A34', NULL, '10', NULL, '3'),
(49, 'Sehaj Pal Singh', '101703498', 'sehajpalsingh121@gmail.com', '$5$rounds=535000$oVgIMn5TiRnUdp5D$4E2yUyPZeUCcmhONiRRwcvPkSNZBIEn0reCvZxFP6j8', NULL, '10', NULL, '2'),
(50, 'sehaj', '101703497', 'vermasehaj84@gmail.com', '$5$rounds=535000$Bs8q9bh.oofIf1N0$oYHnllb6Tr2eAR6/dTd16bEDpyVgQYb/fDu3E6Yq8q8', NULL, '10', NULL, '2'),
(51, 'Sharad', '101703500', 'sharadarora98@gmail.com', '$5$rounds=535000$zTrHKwRQZoFUdfUN$LEv4vWSCddsozIb.9s0GINZrHfMudNPF0Rf5C2PEZf6', NULL, '10', NULL, '2'),
(52, 'Shivam', '101703508', 'shivambehl123@gmail.com', '$5$rounds=535000$CDLkDNe.0NZdANWj$2qSz9DAKST2WoZTVrFjlCu94glnH9kt3oqlrXMkDeb8', NULL, '10', NULL, '2'),
(53, 'Manpreet Singh', '101803174', 'manpreet2000sin@gmail.com', '$5$rounds=535000$wL2uHOURHcV5gXgH$RS.JnEytQbPwnNGwrPcCXEjfS4lQv9Si2.67F55WhrC', NULL, '10', NULL, '1'),
(54, 'Ravi Singh', '401803006', 'sravi2644@gmail.com', '$5$rounds=535000$vOH2Su2TtC8ixGwk$IfcixIUQLPENdvH85dntNBZ.BIsweSo1q3VTZO5Mxs9', NULL, '10', NULL, '1'),
(55, 'Satvik Mehra', '7889179676', 'mehra.satvik1406@gmail.com', '$5$rounds=535000$dSUXn09i0gYTXHpJ$YVjCrM8CIqhAi2eiPp9QYUZVSaIDJMLY0t4UpLxYvv2', NULL, '10', NULL, '1'),
(56, 'Deepanshu', '401603009', 'deepanshu1422@gmail.com', '$5$rounds=535000$Cl.2BHeDCkbWF/Tw$5y3W.UHL4ruFPpjTSWQCMzPTvcMz16ElAUXkuxy/8b4', NULL, '10', NULL, '3'),
(57, 'Shashwat Singh', '101803385', 'n.shash.singh@gmail.com', '$5$rounds=535000$PtwcQl8bb7SmZdNN$uZmY/EDb5YC2.1tSMtSV/JS8xQLN.IzsTwMjLaM93U9', NULL, '10', NULL, '1'),
(58, 'Abhirath kapoor', '101803047', 'abhirathk29@gmail.com', '$5$rounds=535000$rNeh0gI2vDNSK0V3$wP/pTGRmjfOQsm4rhGh99xDiZM1GspSjD5aG1uiqrj4', NULL, '10', NULL, '1'),
(59, 'Nishant Mittal', '101803248', 'itsnishantmittal@gmail.com', '$5$rounds=535000$DXBTtsp3qKatjwT4$jWDadRZ8ZwVNKt4z8alvPFU1C2jh.b4Qgq/n2bsjZfC', NULL, '10', NULL, '1'),
(60, 'Pratyush saxena', '101806184', 'pratyush.2023@gmail.com', '$5$rounds=535000$ue00CWD3TRrxsUKG$XYEN7kKQw1N5p3H1P5DWdOKXAC.fJDeu2Q37/wBzhJ.', NULL, '10', NULL, '1'),
(61, 'Kartikay Tiwari', '101803024', 'kartikaytiwari69@gmail.com', '$5$rounds=535000$8m9cNcqPOJeUD04Z$jo7hgsdM8cknvfNr9KOJLaMfLBraHwCDxswW4p0S3cC', NULL, '10', NULL, '1'),
(62, 'Utkarsh chauhan', '101803070', 'utkarshchauhan2022@gmail.com', '$5$rounds=535000$WxN9wKmF9cq.V2Qs$iMkPf7ZHgX1d183BamJdHjde.9JgVP/BgKczqBvUNC2', NULL, '10', NULL, '1'),
(63, 'Ishita Gupta', '101803505', 'ishita2kbti@gmail.com', '$5$rounds=535000$dPFR64snemfe7MhQ$JwtzBPuy3svgvTUx31DTqAH/F77ur6upUZgHrNrW8S2', NULL, '10', NULL, '1'),
(64, 'Sarthak Kumar', '101703490', 'sharry1999@gmail.com', '$5$rounds=535000$kW5AgApRrA3U1hkQ$4dE8vws3oiv6vkfoxmTag7dDIcV.mWG8qAxW4qRiuKB', NULL, '10', NULL, '2'),
(65, 'Smilly garg', '101804031', 'smileygarg1@gmail.com', '$5$rounds=535000$IT0ksdHskf3Qj3rP$cO/Z6XoPUiDSgAqddJDi/uCaOYiVvTjooFJfznxLgI.', NULL, '10', NULL, '1'),
(66, 'Saarthak Srivastava', '101815089 ', 'saarthaksrivastava@gmail.com', '$5$rounds=535000$a3qtcKJlDLEwQRKW$qo4J7uyEPIzFvbmQNXrpoYiT2qfWZdXZnNEq6VBENW4', NULL, '10', NULL, '1'),
(67, 'Apoorv Bansal', '101808181', 'apoorvbansal2000@gmail.com', '$5$rounds=535000$06hxcwYfuHADR6l0$hbGFTyWNv15BxYvROYga1GG4hAPLQ.PhQxMhvEkWvP2', NULL, '10', NULL, '1'),
(68, 'Shimantika', '101803273', 'shimantika.das99@gmail.com', '$5$rounds=535000$p3YZoGWHn97mrBFu$GxinlfAO9xVmgsrvHIx9qCY8iG759FOAlisomcsBCS/', NULL, '10', NULL, '1'),
(69, 'Kamakshi behl', '101883050', 'kamakshi.behl22@gmail.com', '$5$rounds=535000$B6sveIMKhv1KI03P$dxCEjZuoYC/a8W5j8Fl3GjOrWa3tibVGwaNUDfvxhT7', NULL, '10', NULL, '2'),
(70, 'Piyush Kumar Singh', '101703390', 'piyushksingh1999@gmail.com', '$5$rounds=535000$akrK2nf6QW7RlGh8$zanqNJm2xya07RAhKcjuvXTNg9EIAxywdBzGjezr3R7', NULL, '10', NULL, '2'),
(71, 'Lakshit Farswan', '101703304', 'lakshit2010@gmail.com', '$5$rounds=535000$h4MQvDzC5g/hG.0K$bS94Ya3CnOEG.5xdK6QpsjlglTgU9V4h1KsphwZ4Q3.', NULL, '10', NULL, '2'),
(72, 'Disha Singla', '101703175', 'dishask99@gmail.com', '$5$rounds=535000$ESxD7f5lph2bOcE3$9r9CLbxqHm7jusozfmWNQmS2mrjv0d1kIfIUL47ht67', NULL, '10', NULL, '2'),
(73, 'Snigdha', '101703552', 'snigdha.bhatnagar312@gmail.com', '$5$rounds=535000$4mg35cF.b9IssVJX$YK759Jfio0sqiFIT.P1.wplGt7wKojLG24yOdm3JhN9', NULL, '10', NULL, '2'),
(74, 'SHOURYA GOYAL', '101703521', 'shouryagoy@gmail.com', '$5$rounds=535000$ZvlBnEM3ZZOuwzs5$1tzZAvauGyuGG7VV7/nNS3ELYArWa9f10nhvWAJtal5', NULL, '10', NULL, '2'),
(75, 'Ramit', '101706126', 'ramitkaul@gmail.com', '$5$rounds=535000$Diqho28kLFnLAoYI$mMOGmGm6FmVWzwF..RVd0D6y6LV6dDZZawQedoUaDT1', NULL, '10', NULL, '2'),
(76, 'Jishnu Bala', '101815088', 'jishnu60013bala@gmail.com', '$5$rounds=535000$k3JSoilLMLusXwk3$sM7lGZ8XBLw1NdKUnWMfAbPZeTJ0LNanfLZIj9Fy.G6', NULL, '10', NULL, '1'),
(77, 'Divya', '101706029', 'divyaprakashmittal@gmail.com', '$5$rounds=535000$4s0W2olb2phV5mWz$b7wOhBRnbi2QNNVGnnzVkEwlLxJeqCKk784xiQGKTe3', '[12, 3, 22, 16, 19, 21, 11, 13, 9, 29, 10, 6, 25, 23, 14, 17, 24, 5, 4, 20, 18, 28, 27, 26, 15]', '10', '119', '2'),
(78, 'ABHINAV KUMAR SINGH', '101803501', 'abhinavk2203@gmail.com', '$5$rounds=535000$W9nhuuUwJoabgm1n$ytYvtEdILpua6HI/h7yQ9Q.9b23VEu5QlIf1EQdm/Z4', NULL, '10', NULL, '1'),
(79, 'Shatul Bansal', '101703504', 'shatul_31@ccs', '$5$rounds=535000$o/sy6CksBOcSsIEY$MbvnVava.bgEuSA9bX0okqZtxA2NPjwJiC/wMH3lFQB', NULL, '10', NULL, '2'),
(80, 'Akshay', '101703049', 'akumarbangar@yahoo.in', '$5$rounds=535000$3zETPgCivjI605yS$JLYAZZP5pHay2O0Zo.MUCfw74UM4vOLUU1OnQUOht/0', NULL, '10', NULL, '2'),
(81, 'Anshika Bansal', '101806069', 'bansalanshika877@gmail.com', '$5$rounds=535000$JZUAwmgts93Rctz3$WWp/PHABCdikht6AOu96abHc/WKlRHdKUZg3CqXJOI1', NULL, '10', NULL, '1'),
(82, 'Kajal', '101803297', 'kajal11122000@gmail.com', '$5$rounds=535000$iLrd79Bf3l.vGW59$honjBSJbctFbz1oU1xCopg/XLluSbsFt36Ywfu7DgqD', NULL, '10', NULL, '1'),
(83, 'Rohan', '101815110', 'Rohananand60@gmail.com', '$5$rounds=535000$DQZi03xfRxPvK3Gt$qIAGEDjX9doKL52/keYfQh2S7ZOXAmupj1pR7d8caE6', NULL, '10', NULL, '1'),
(84, 'Sagar Mittal', '101883063', 'mittalsagar99@gmail.com', '$5$rounds=535000$el1UAYnZV24hR5Y2$Z6xdJs0rrCPDCjjoVy2gslKSprHAILzCZ0vsBKDjC77', NULL, '10', NULL, '2'),
(85, 'kanav', '101803374', 'knv.garg@gmail.com', '$5$rounds=535000$FdO8tnliEMI4vh77$CUVCRSzxf.KkpTHGQCkq4epz9ap.BxpPY6syuZl6H/8', NULL, '10', NULL, '1'),
(86, 'sambhav jain', '101703474', 'sambhav1020@gmail.com', '$5$rounds=535000$OWifHbmRAZxwild5$oFXT/uv9Qm1ODYBbPLaAILYKI1FIXRwDJfNJntaIle9', NULL, '10', NULL, '2'),
(87, 'Naman Monga', '101803438', 'namanmonga27@gmail.com', '$5$rounds=535000$piKFIRkLwXizDMPc$ksRZyumbCGqSTNkqcHLnQREftlAhTHu/waPmdRaDUG9', NULL, '10', NULL, '1'),
(88, 'Sukhwmit Kaur Kahlon', '101815161', 'sukhwmit.kaur@gmail.com', '$5$rounds=535000$6x5DVY5ooq6hogc/$ziW4M0cQ9/Q1Hc2.Blw75AGmXAtOJo5JUHWUAxi3bq3', NULL, '10', NULL, '1'),
(89, 'Vishrut Agrawal', '101815171', 'vishrutagrawal9@gmail.com', '$5$rounds=535000$tU57HAOcNPprwISm$DDklbuwMbFyXdlXsHRp5gF.MkQC2HSHfp9scDCpfZvB', NULL, '10', NULL, '1'),
(90, 'Rohit Bhatia', '101803203', 'rohitbhatia964@gmail.com', '$5$rounds=535000$l9SdLS6r9s91rof0$GTAP4uCskMiikrbXcmnp01oCxa9zs1Dim5mQIHW.ra5', NULL, '10', NULL, '1'),
(91, 'Dhruv Garg', '101703167', 'gargdindia@hotmail.com', '$5$rounds=535000$rNutUZfJleJq2uCZ$Z0JHAZzLrY.AAFZbT/S3/KGa5WL3wnQfH8KhJPPWCf0', NULL, '10', NULL, '2'),
(92, 'Yash Goien', '101803442', 'yashgauto@gmail.com', '$5$rounds=535000$Z.eJXaBh2kbOG2kg$xQBO3WK7wmxn56FHh/F5j5FBg9F/5ag1ly4ypqcF3K2', NULL, '10', NULL, '1'),
(93, 'Divyam Jain', '101803128', 'divyamvswild@gmail.com', '$5$rounds=535000$wJY.oTmCJP3EfLye$/OSOyF1pTQK6co8NSCxTrXobO.MTTV95wmbv4w02oi7', NULL, '10', NULL, '1'),
(94, 'Ashray', '101803460', 'ashrayarora833@gmail.com', '$5$rounds=535000$Am7e4oSs2HoQlK3B$KJW5meup1Y3EfSYp2ugDjbM.pcihwGuLwoVUAfY8sU7', NULL, '10', NULL, '1'),
(95, 'Sanchit Dhingra', '101703478', 'sanchit.dhingra03@gmail.com', '$5$rounds=535000$Piw17YXjHJqsqvPN$mE3PH6ZiYOmKFkkNBPz869cMfEe7Q.qpuaaPv.RHic/', NULL, '10', NULL, '2'),
(96, 'U.N Owen', '101803506', 'u.n.owen403@gmail.com', '$5$rounds=535000$AOmP3WTfBvLi/tii$zLh3evGBa1xuVusU4iyS9Es2Cbp7jAde/JxNv6wiIJB', NULL, '10', NULL, '1'),
(97, 'Shubham singh rana', '101703535', 'srana5898@gmail.com', '$5$rounds=535000$sWOZHZIO69AqN4wP$gaVrEoSV5kXJRDnPCsQVRf2rhxOW1VhMwl5xbashgN8', NULL, '10', NULL, '2'),
(98, 'Inderjeet Singh', '101803689', 'inder052000@gmail.com', '$5$rounds=535000$8k9YP2YXO7K9w3MR$XyfLW0gLfnUf0QMQa6KMrf13Bz/03RXAMoyloN2H2L1', NULL, '10', NULL, '1'),
(99, 'Kaustuv', '101803692', 'kaustuvkaran@gmail.com', '$5$rounds=535000$AY./lZUfb28wUDAA$B8zuDdyTbVTfMySn9tvHWu8Uh76Mko/vpe0yz4G3pz3', NULL, '10', NULL, '1'),
(100, 'AL', '101803347', 'latheyapoorv@gmail.com', '$5$rounds=535000$310RfKiZb0TYMc2q$tVNamwwzqUCZgDBR3Eb4okVD3MQc0t7y.bZ7cE81RE4', NULL, '10', NULL, '1'),
(101, 'abc', '1234', 'abc@aol.com', '$5$rounds=535000$GARC6KjlEDsqeixP$jaJ6dzFsz9/SaSFVb/4GuuiWTl1HhjVGeHozrNDtjQ8', NULL, '10', NULL, NULL),
(102, 'vinay', '101803108', 'singh.v357@gmail.com', '$5$rounds=535000$5.8KDNx5.4PdnBic$jBmbU0xRDow0X5iVut7J5kYX4wtyo6i9W4s5orLPjS6', NULL, '10', NULL, NULL),
(103, 'Raghav Virmani', '101803657', 'rvirmani9@gmail.com', '$5$rounds=535000$T64ng2H2mNc6V4G0$r.4TMnOnL4VXu7jVksmyLCIswdwMcnSeSeRr9IAuInC', NULL, '10', NULL, '1'),
(104, 'Kush daga ', '101803144', 'kushdaga@hotmail.com', '$5$rounds=535000$EmhYM7nSr8Xe7RFp$6QQJn7mDMLEXMjdRFz26ly52wByztfFIViefEIN6O24', NULL, '10', NULL, '1'),
(105, 'Tanishq Bhalla', '101803705', 'bhalla.tanishq2000@gmail.com', '$5$rounds=535000$jzAM5JEH2dj39cP2$YRjp3PDUefYDT03kYBOlLoHndq69iZ24C6c7DkMRHY2', NULL, '10', NULL, '1'),
(106, 'Shreshth Arora', '101803503', 'arorashreshth1@gmail.com', '$5$rounds=535000$Q2Wp9zZBAazrt6Xa$1wRK3JaM3fbeKfbMqVHyThg6HLpts37f3DQmezuGR9.', NULL, '10', NULL, NULL),
(107, 'akshat kaushal', '101806185', 'akshatkaush@gmail.com', '$5$rounds=535000$zwHR7X5QhlKamSZp$8ZdE6ZEpEPB7rlVR8rycliwbAZJiZ547Yyxc1DCUVwB', NULL, '10', NULL, '1'),
(108, 'Kaustabh kakoty', '101603159', 'kakoty.kaustabh@gmail.com', '$5$rounds=535000$F06lAASDYfpB1Lg6$swNwDPx.ulc4H0r4tJ2gFZBhYHdHA3iOZVpdd6azl8B', NULL, '10', NULL, '3'),
(109, 'Hacker', '1111', 'abcd@gmail.com', '$5$rounds=535000$RuPcgBpoyR.rtxO8$dEeKYfJc0OdLzKej0fV0Qu801HcSaFoAfLt7aLgXdy8', NULL, '10', NULL, '1');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Leaderboard`
--
ALTER TABLE `Leaderboard`
  ADD CONSTRAINT `q_id` FOREIGN KEY (`q_id`) REFERENCES `Questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `u_id` FOREIGN KEY (`u_id`) REFERENCES `Users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
