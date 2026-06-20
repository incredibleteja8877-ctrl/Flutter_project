import 'dart:io';

void main(){
    print("***Calculator Menu***");
    print("1. Add");
    print("2. Subtract");
    print("3. Multiply");
    print("4. Exit");
print("Enter your choice : ");
int choice=int.parse(stdin.readLineSync()!);
switch (choice){
    case 1 :
    print("Enter first number: ");
    double num1=double.parse(stdin.readLineSync()!);
    print("Enter second number: ");
    double num2=double.parse(stdin.readLineSync()!);
    print("Result : ${num1+num2}");
    break;
    case 2:
    print("Enter first number: ");
    double num1=double.parse(stdin.readLineSync()!);
    print("Enter second number: ");
    double num2=double.parse(stdin.readLineSync()!);
    print("Result: ${num1-num2}");
    break;
    case 3:
     print("Enter first number: ");
    double num1=double.parse(stdin.readLineSync()!);
    print("Enter second number: ");
    double num2=double.parse(stdin.readLineSync()!);
    print("Result : ${num1*num2}");
    break;
case 4:
print("Program existed");
break;

}

}