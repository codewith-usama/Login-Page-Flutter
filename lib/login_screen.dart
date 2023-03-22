import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  Widget buildTextField(IconData icon, String labelText) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(
            icon
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          labelText: labelText
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(30.0),
              color: Colors.white70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40.0,
                  ),
                  const ImageIcon(
                    AssetImage('images/logo.png'),
                    color: Colors.blue,
                    size: 100.0,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Text(
                        "OXA",
                        style: GoogleFonts.acme(
                            fontSize: 38.0,
                            color: Colors.black,
                            letterSpacing: 10.0
                        )
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  buildTextField(Icons.person, "Username"),
                  const SizedBox(
                    height: 20.0,
                  ),
                  buildTextField(Icons.lock, "Password"),
                  const SizedBox(
                    height: 20.0,
                  ),

                  TextButton(
                      onPressed: null,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                          ),
                        )
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold
                        ),
                      )
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const InkWell(
                    onTap: null,
                    child: Text(
                      "Forgot Password?",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Center(
                    child: Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const InkWell(
                    onTap: null,
                    child: Center(
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}
