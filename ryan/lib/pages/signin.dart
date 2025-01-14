import 'package:flutter/material.dart';

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
              colors: [Color(0xff380606), Color(0xff4a0807), Color(0xff5d0809)],
              begin: Alignment.topLeft,
              end: Alignment.topRight)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: const Text(
              "This is Ryan\nSign in!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 40),
          Expanded(
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
                        color: Color(0xff380606),
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
                        color: Color(0xff4a0807),
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
                          Color(0xff380606),
                          Color(0xff4a0807),
                          Color(0xff5d0809)
                        ], begin: Alignment.topLeft, end: Alignment.topRight),
                        borderRadius: BorderRadius.circular(25)),
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "SIGN IN",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 2, 51, 136),
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
