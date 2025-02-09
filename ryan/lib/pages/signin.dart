import 'package:flutter/material.dart';
import 'package:ryan/pages/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(top: 50),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xffea3452), Color(0xffec4662), Color(0xffee5972)],
              begin: Alignment.topLeft,
              end: Alignment.topRight)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: const Text(
              "Hey There\nSign in!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 90),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: 50, left: 30, right: 30),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                          color: Color(0xffea3452),
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Email",
                          prefixIcon: Icon(Icons.email_outlined)),
                    ),
                    Text(
                      "Password",
                      style: TextStyle(
                          color: Color(0xffea3452),
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          prefixIcon: Icon(Icons.key_outlined)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 2, 51, 136),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      height: 58,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color(0xffee5972),
                            Color(0xffec4662),
                            Color(0xffea3452)
                          ], begin: Alignment.topLeft, end: Alignment.topRight),
                          borderRadius: BorderRadius.circular(25)),
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                              color: Color(0xff2c4e2d),
                              shadows: [
                                Shadow(
                                  offset: Offset(2.0, 2.0), // X and Y offsets
                                  blurRadius: 0.3, // The blur intensity
                                  color: Colors.black, // Shadow color
                                ),
                              ],
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup()));
                              },
                              child: Text(
                                "SIGN UP",
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 2, 51, 136),
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
