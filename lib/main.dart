import 'package:coffee_card/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Home(),
    ),
  );
}

// class Sandbox extends StatelessWidget {
//   const Sandbox({super.key});

//   @override
//   Widget build(context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sandbox'),
//         backgroundColor: Colors.grey,
//         centerTitle: true,
//       ),
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         textBaseline: TextBaseline.alphabetic,
//         crossAxisAlignment: CrossAxisAlignment.baseline,
//         children: [
//           Text(
//             "50",
//             style: TextStyle(
//               fontSize: 80,
//               decoration: TextDecoration.underline,
//             ),
//           ),
//           Text(
//             "KG",
//             style: TextStyle(
//               fontSize: 30,
//               decoration: TextDecoration.underline,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
