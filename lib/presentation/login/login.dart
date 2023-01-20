import 'package:flutter/material.dart';



class LoginClass extends StatefulWidget {
  const LoginClass({Key? key}) : super(key: key);

  @override
  State<LoginClass> createState() => LoginPageState();
}

class LoginPageState extends State<LoginClass> {
  bool _isObscure = true;
  String passBackData = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                  width: 200,
                  height: 150,
                  /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                  child: Image.network(
                      "https://t3.ftcdn.net/jpg/04/25/59/88/360_F_425598863_dUmOZke8TfrOwiP1ZLJcwmhIt2iiK7yo.jpg",
                      fit: BoxFit.cover),
                ),
              ),
            ),
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password',
                      suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                    ))),

            const Text(
              'Forgot Password?',
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),

            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: OutlinedButton(
                  onPressed: () async {
                    // passBackData =
                    //       await Navigator.pushNamed(context, Routes.homeScreen)
                    //         as String;
                  },
                  child: const Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
            // ),
            const SizedBox(
              height: 50,
            ),

            Center(
              child: OutlinedButton(
                  onPressed: () async {
                    // passBackData =
                    //     await Navigator.pushNamed(context, Routes.signupScreen)
                    //         as String;
                  },
                  child: const Text("Not a member? SignUp Now")),
            ),
          ],
        ),
      ),
    );
  }
}

//login code in flutter