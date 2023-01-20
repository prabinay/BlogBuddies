// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/material.dart';



// class SignUpPage extends StatefulWidget {
//   const SignUpPage({super.key});

//   @override
//   State<SignUpPage> createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   bool _isObscure = true;
//   String passBackData = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(top: 60.0),
//               child: Center(
//                 child: Container(
//                   // width: 250,
//                   height: 50,
//                   /*decoration: BoxDecoration(
//                         color: Colors.red,
//                         borderRadius: BorderRadius.circular(50.0)),*/
//                   child: Text(
//                     "SignUp",
//                     // textAlign: TextAlign.justify,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 33,
//                       color: Colors.grey[700],
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 15.0, right: 15.0, top: 5, bottom: 20),
//               // padding: EdgeInsets.symmetric(horizontal: 15),
//               child: Center(
//                 child: Container(
//                   // width: 250,
//                   height: 50,
//                   child: Text(
//                     "Welcome to our app",
//                     // textAlign: TextAlign.justify,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15,
//                       color: Colors.grey[700],
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             const Padding(
//               // padding: const EdgeInsets.only(
//               //     left: 15.0, right: 15.0, top: 20, bottom: 0),
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               child: TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Full Name',
//                   hintText: 'Enter your full name as abc@gmail.com',
//                   prefixIcon: Icon(Icons.people),
//                 ),
//               ),
//             ),

//             const Padding(
//               padding:
//                   EdgeInsets.only(left: 15.0, right: 15.0, top: 20, bottom: 0),
//               // padding: EdgeInsets.symmetric(horizontal: 15),
//               child: TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Email',
//                   hintText: 'Enter valid email id as abc@gmail.com',
//                   prefixIcon: Icon(Icons.email),
//                 ),
//               ),
//             ),
//             const Padding(
//               padding:
//                   EdgeInsets.only(left: 15.0, right: 15.0, top: 20, bottom: 0),
//               // padding: EdgeInsets.symmetric(horizontal: 15),
//               child: TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Phone',
//                   hintText: 'Enter valid phone number',
//                   prefixIcon: Icon(Icons.phone_android),
//                 ),
//               ),
//             ),

//             Padding(
//                 padding: EdgeInsets.only(
//                     left: 15.0, right: 15.0, top: 15, bottom: 0),
//                 //padding: EdgeInsets.symmetric(horizontal: 15),
//                 child: TextField(
//                   obscureText: _isObscure,
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       labelText: 'Password',
//                       hintText: 'Enter secure password',
//                       prefixIcon: Icon(Icons.password),
//                       suffixIcon: IconButton(
//                         icon: Icon(_isObscure
//                             ? Icons.visibility
//                             : Icons.visibility_off),
//                         onPressed: () {
//                           setState(() {
//                             _isObscure = !_isObscure;
//                           });
//                         },
//                       )),
//                 )),

//             Padding(
//                 padding:const EdgeInsets.only(
//                     left: 15.0, right: 15.0, top: 15, bottom: 0),
//                 //padding: EdgeInsets.symmetric(horizontal: 15),
//                 child: TextField(
//                   obscureText: _isObscure,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Confirm Password',
//                     hintText: 'Enter your password again',
//                     prefixIcon: Icon(Icons.password_sharp),
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                           _isObscure ? Icons.visibility : Icons.visibility_off),
//                       onPressed: () {
//                         setState(() {
//                           _isObscure = !_isObscure;
//                         });
//                       },
//                     ),
//                   ),
//                 )),

//             Container(
//               margin: const EdgeInsets.only(top: 50),
//               height: 40,
//               width: 250,
//               decoration: BoxDecoration(
//                   color: Colors.blue, borderRadius: BorderRadius.circular(20)),
//               child: const Text(
//                 'Register',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.white, fontSize: 25),
//               ),
//             ),
//             // ),
//             const SizedBox(
//               height: 20,
//             ),

//             Center(
//               child: OutlinedButton(
//                   onPressed: () async {
//                     // passBackData =
//                         // await Navigator.pushNamed(context, Routes.loginScreen)
//                             // as String;
//                   },
//                   child: const Text("Already a member? log In Now")),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
