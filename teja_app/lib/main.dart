// import 'package:flutter/material.dart';


// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 72, 119, 98),
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text(
//             " 🌸 Teja App 🌸 ",
//             style: TextStyle(
//               backgroundColor: const Color.fromARGB(255, 84, 121, 126),
//               fontSize: 30,
//               color: Colors.black, 
//               fontWeight: FontWeight.bold,
//               decoration: TextDecoration.underline, 
//               decorationColor: Colors.redAccent, 
//               decorationThickness: 1.5),
//           ),
//         ),
//         body: Center(
//           child: Text(
//             "Hello Welcome to Teja App",
//              style: TextStyle(
//               backgroundColor: Colors.blueAccent,
//               fontSize: 40,
//               color: Colors.white,
//                fontWeight: FontWeight.bold)),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(debugShowCheckedModeBanner: false, home: Counter());
//   }
// }
// class CounterApp extends StatefulWidget {
//   const CounterApp({super.key});

//   @override
//   State<CounterApp> createState() => _CounterAppState();
// }

// class _CounterAppState extends State<CounterApp> {
//  int num=0;
//  void increment(){
//   setState(() {
//     num++;
//   });
//  }
// }
// void decrement(){
//   setState(() {
//     num--;
//   });
// }
// @override
// Widget build(BuildContext context) { 
//     return scaffold(
//       appBar: AppBar(tittle: Text("Counter App")),
//       body: Center(
//         child: Row(
//           Spacing: 50,
//           mainAxisAlignment: .center,
//           children:[
//             GestureDetector(
//               onTap:()=>decrement,
//               child: Container(
//                 height:40,
//                 width:40,
//                 color: Colors.amberAccent,
//                 child:
//               ),
//             ),
//             Text(num.toString(),style:TextStyle(fontsize:30)),
//             GestureDetector(
//               onTap:()=>increment,
//               child: Container(
//                 height:40,
//                 width:40,
//                 color: Colors.amberAccent,
//                 child:Icon(Icons.add),
//               ),
//             ),
//           ],

//         ),
//       ),
//     );
// }
// void main() {
//   runApp(MyApp());
// }
 
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
 
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(debugShowCheckedModeBanner: false, home: CounterApp());
//   }
// }
 
// class CounterApp extends StatefulWidget {
//   const CounterApp({super.key});
 
//   @override
//   State<CounterApp> createState() => _CounterAppState();
// }
 
// class _CounterAppState extends State<CounterApp> {
//   int num = 0;
 
//   void increment() {
//     setState(() {
//       num++;
//     });
//   }
 
//   void decrement() {
//     setState(() {
//       num--;
//     });
//   }
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Counter app")),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GestureDetector(
//               onTap: decrement,
//               child: Container(
//                 height: 40,
//                 width: 40,
//                 color: Colors.amberAccent,
//                 child: Icon(Icons.remove),
//               ),
//             ),
//             SizedBox(width: 50),
//             Text(num.toString(), style: TextStyle(fontSize: 24)),
//             SizedBox(width: 50),
//             GestureDetector(
//               onTap: increment,
//               child: Container(
//                 height: 40,
//                 width: 40,
//                 color: Colors.amberAccent,
//                 child: Icon(Icons.add),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// void main() {
//   runApp(const Scaffoldone());
// }
// class Scaffoldone extends StatelessWidget {
//   const Scaffoldone({super.key}); 
//   @override
//   Widget build(BuildContext context) { 
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Scaffold One'),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 height: 500,
//                 width: 800,
//                 alignment: Alignment.center,
//                 // Background image
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/Image1.jpg'),
//                     fit: BoxFit.cover,
//                   ),// boarder
//                   border: Border.all(color: Colors.red, width: 5),
//                   // boarder radius
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 padding: EdgeInsets.all(20),
//                 child: const Align(
//                   alignment: Alignment.topCenter,
//                   child: Icon(
//                     Icons.star,
//                     size: 100,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 20),
            
//               const Text('Hello, Scaffold one!'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// visible and invisible star //
// void main() {
//   runApp(const Scaffoldtwo());
// }
// class Scaffoldtwo extends StatefulWidget {
//   const Scaffoldtwo({super.key});

//   @override
//   State<Scaffoldtwo> createState() => _ScaffoldtwoState();
// }

// class _ScaffoldtwoState extends State<Scaffoldtwo>{
//   bool showstar= true;
//   void togglestar(){
//     setState(() {
//       showstar=!showstar;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Scaffold Two'),
//           centerTitle: true,
//           backgroundColor: Colors.blue,
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 height: 500,
//                 width: 800,
//                 alignment: Alignment.center,
//                 decoration: BoxDecoration(
//                   image: const DecorationImage(
//                     image: AssetImage('assets/images/Image1.jpg'),
//                     fit: BoxFit.cover,
//                   ),
//                   border: Border.all(color: Colors.red, width: 5),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: showstar
//                     ? const Align(
//                         alignment: Alignment.topCenter,
//                         child: Icon(
//                           Icons.star,
//                           size: 100,
//                           color: Colors.white,
//                         ),
//                       )
//                     : null,
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: togglestar,
//                 child: Text(showstar ? 'Hide Star' : 'Show Star'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// Calculator App

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String userInput = "";
  String result = "0";

  void buttonPressed(String value) {
    setState(() {
      if (value == "C") {
        userInput = "";
        result = "0";
      } else if (value == "⌫") {
        if (userInput.isNotEmpty) {
          userInput = userInput.substring(0, userInput.length - 1);
        }
      } else if (value == "=") {
        calculate();
      } else {
        userInput += value;
      }
    });
  }

  void calculate() {
    try {
      double answer = evaluateExpression(userInput);

      if (answer == answer.toInt()) {
        result = answer.toInt().toString();
      } else {
        result = answer.toString();
      }
    } catch (e) {
      result = "Error";
    }
  }

  double evaluateExpression(String expr) {
    final tokens = <String>[];
    String current = "";

    for (int i = 0; i < expr.length; i++) {
      String ch = expr[i];

      if ("0123456789.".contains(ch)) {
        current += ch;
      } else {
        if (current.isNotEmpty) {
          tokens.add(current);
          current = "";
        }
        tokens.add(ch);
      }
    }

    if (current.isNotEmpty) {
      tokens.add(current);
    }

    int precedence(String op) {
      if (op == "+" || op == "-") return 1;
      if (op == "*" || op == "/") return 2;
      return 0;
    }

    final output = <String>[];
    final operators = <String>[];

    for (var token in tokens) {
      if (double.tryParse(token) != null) {
        output.add(token);
      } else {
        while (operators.isNotEmpty &&
            precedence(operators.last) >= precedence(token)) {
          output.add(operators.removeLast());
        }
        operators.add(token);
      }
    }

    while (operators.isNotEmpty) {
      output.add(operators.removeLast());
    }

    final stack = <double>[];

    for (var token in output) {
      if (double.tryParse(token) != null) {
        stack.add(double.parse(token));
      } else {
        double b = stack.removeLast();
        double a = stack.removeLast();

        switch (token) {
          case "+":
            stack.add(a + b);
            break;
          case "-":
            stack.add(a - b);
            break;
          case "*":
            stack.add(a * b);
            break;
          case "/":
            stack.add(a / b);
            break;
        }
      }
    }

    return stack.first;
  }

  Widget calcButton(String text,
      {Color color = Colors.blueAccent}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: () => buttonPressed(text),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerRight,
            child: Text(
              userInput.isEmpty ? "0" : userInput,
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.centerRight,
            child: Text(
              result,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              padding: const EdgeInsets.all(12),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                calcButton("C", color: Colors.red),
                calcButton("⌫", color: Colors.orange),
                calcButton("/", color: Colors.orange),
                calcButton("*", color: Colors.orange),

                calcButton("7"),
                calcButton("8"),
                calcButton("9"),
                calcButton("-", color: Colors.orange),

                calcButton("4"),
                calcButton("5"),
                calcButton("6"),
                calcButton("+", color: Colors.orange),

                calcButton("1"),
                calcButton("2"),
                calcButton("3"),
                calcButton("=", color: Colors.green),

                calcButton("0"),
                calcButton("."),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


