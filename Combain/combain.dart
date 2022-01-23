import 'dart:io';

import 'dart:math';

void main(List<String> args) {

  combain();
  

}

void combain() {

while(true){  

print("##Choose an option##");
print("1.Calculator");
print("2.Temprature Converter");
print("3.Fibonacci Sequence");
print("4.Ascii value");
print("5.Prime Number");
print("6.Quit !!!");

stdout.write("Please enter an input: ");
var input = int.parse(stdin.readLineSync()!); 

switch(input){
       
case 1:
calculator();
break;
case 2:
temp_converter();
break;
case 3:
fibonacci();
break;
case 4:
ascii_value();
break;
case 5:
prime();
break;
case 6:
print("Quiting !!!!!!!");
exit(0);

default:
print("Invalid Input");
break;


}


}
}


void calculator()
{

   while(true){
 
  print("1. Sumission");
  print("2. Subtraction");
  print("3. Multipication");
  print("4. Division");
  print("5. Square");
  print("6. Root");
  print("7. Modulus");
  print("8. Factorial");
  print("9. Even or Odd Check");
  print("10.Positive or Negative Check");
  print("11. Quit !!!!!!");
  
  stdout.write("Enter your choice: ");
  var user_input = int.parse(stdin.readLineSync()!);

  switch(user_input){
    case 1:
    sumission();
    break;
    case 2:
    subtraction();
    break;
    case 3:
    multipication();
    break;
    case 4:
    division();
    break;
    case 5:
    square();
    break;
    case 6:
    root();
    break;
    case 7: 
    modu();
    break;
    case 8:
    factorial();
    break;
    case 9:
    even_odd();
    break;
    case 10:
    negative_positive();
    break;
    case 11:
    print("Quit");
    combain();
    break;
    case 12: 
    print("Invalid Input");
    break;



  }
}
}

void sumission(){

  stdout.write("Enter First Value: ");
  var num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter Sceond Value:");
  var num2 = double.parse(stdin.readLineSync()!);
  
  var sum = num1 + num2;
  print("The Sum is: $sum");

}

void subtraction(){

 stdout.write("Enter first value: ");
  var num1 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter second value: ");
  var num2 = double.parse(stdin.readLineSync()!);

  var sub = num1 - num2;
  print("The Subtraction is $sub ");

}


void multipication()
{
  stdout.write("Enter first value: ");
  var num1 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter second value: ");
  var num2 = double.parse(stdin.readLineSync()!);
  var multi =((num1) * (num2));
   print("The Muntipication is $multi");

}
void division()
{

  stdout.write("Enter first value: ");
  var num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter second value: ");
  var num2 = double.parse(stdin.readLineSync()!);
  var div = (num1 / num2);
  print("The Division is $div");

}

void root(){
 
 
   stdout.write("Enter your value: ");
   var num = double.parse(stdin.readLineSync()!);

   print("The Squre root of $num is ${sqrt(num)}");

}

void square(){

  stdout.write("Enter your value: ");
  var num = double.parse(stdin.readLineSync()!);
  var sqr = num*num;
  print("The Square of $num is $sqr ");


}

void modu(){

stdout.write("Enter first value: ");
  var num1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter second value: ");
  var num2 =int.parse(stdin.readLineSync()!);

  var modu = num1 % num2;
  print("The Modulus is $modu");

}

void factorial()
{
  stdout.write("Enter The Value: ");
  var num = int.parse(stdin.readLineSync()!);
  
  if(num== 0){
    print("The Factorial of 0 is 1");
  }
  else{
    
  var sum = 1;
  for ( var i = 1; i<=num;i++)
  {
     sum = sum*i;
  }
  print("${num}! = $sum");
  }
}

void temp_converter()
{


  while(true){
  print("Please Enter(A B or Q)");  
  print("A. Fahrenheit to Celcius");
  print("B. Celcius to Fahrenheit");
  print("Q. Quit !!!!!");

  stdout.write("Enter your choice: ");
  var input = stdin.readLineSync()!.toUpperCase();

  switch(input){
    case "A":
    stdout.write("Enter Fahrenheit: ");
    final far = double.parse(stdin.readLineSync()!);
    final cel = (far - 32) / 1.8;
    print("${far}\xB0F = ${cel.toStringAsFixed(2)}\xB0C");
    break;
    case "B":
    stdout.write("Enter Celcius: ");
    var cel = double.parse(stdin.readLineSync()!);
    var far = (cel*1.8) + 32;
    print("${cel}\xB0C = ${far.toStringAsFixed(2)}\xB0F");
    break;
    case "Q":
    print("Quit !!!");
    combain();
    break;
    default:
    print("Invalid Input");
    break;



  }
  }
}



void even_odd(){


  stdout.write("Enter your value: ");
  var num = int.parse(stdin.readLineSync()!);

  if( num % 2 == 0 ){
  print("This is an Even Number");
}
  else{
  print("This is an Odd Number");
}
}

void negative_positive()
{
  stdout.write("Enter your value: ");
  var num = int.parse(stdin.readLineSync()!);

  if ( num < 0 )
  {
    print("This is a Negative Number");
  }

  else{
    print("This is a Positive Number");
  }
}


void fibonacci()
{


  stdout.write("Enter your value: ");
  var num = int.parse(stdin.readLineSync()!);
  var fibo = 0;
  var fibo1 = 1;
  var fibo2;
  
  print("The fibonacci Sequence for ${num} is: ");
  print(fibo);
  print(fibo1);
  for(var i =2; i<=num;i++)
  {
    fibo2 = fibo + fibo1;
    print("$fibo2");

    fibo = fibo1;
    fibo1 = fibo2;

    
  }
}

void ascii_value()
{

  stdout.write("Enter your input: ");
  var num =stdin.readLineSync()!;
  if (num.length > 1){
  for(var i = 0;i < num.length;i ++){
    print("The Ascii value of ${num[i]} is ${num.codeUnitAt(i)} ");


  }
}
else{
  print("Ascii values of ${num} is ${num.codeUnits}");
}

}


void prime()
{


  stdout.write("Enter a positive number: ");
  var num = int.parse(stdin.readLineSync()!);
  var flag = 0;
  var m=0;
  m = num~/2;


  if(num == 0 || num ==1){
    print("This is nor prime or nor constant number");
  }
else{
  for(var i =2;i<=m;i++)
  {
    if(num%i == 0){
      print("This is not a prime number");
      flag = 1;
      break;
    } 



  }
  if (flag == 0){
    print("This is a prime number");
  }
}


}