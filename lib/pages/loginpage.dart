import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:miniproject/components/my_button.dart';
import 'package:miniproject/components/my_texttfield.dart';
import 'package:miniproject/components/square_tile.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);
      // WRONG EMAIL
      if (e.code == 'user-not-found') {
        // show error to user
        wrongEmailMessage();
      }

      // WRONG PASSWORD
      else if (e.code == 'wrong-password') {
        // show error to user
        wrongPasswordMessage();
      }
    }
  }

  // wrong email message popup
  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Color.fromRGBO(20, 188, 233, 1),
          title: Center(
            child: Text(
              'Incorrect Email',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  // wrong password message popup
  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Color.fromRGBO(20, 188, 233, 1),
          title: Center(
            child: Text(
              'Incorrect Password',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(6, 30, 69, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              Container(
                height: 170,
                child:
                    Image.asset('images/loginpagephoto-removebg-preview.png'),
              ),

              const SizedBox(height: 40),

              // welcome back, you've been missed!
              GradientText(
                'Welcome back u have been missed',
                style: TextStyle(
                  fontSize: 20.0,
                ),
                colors: [
                  Color.fromRGBO(67, 236, 227, 1),
                  Color.fromRGBO(20, 188, 233, 1)
                ],
              ),

              const SizedBox(height: 20),

              // email textfield
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Color.fromRGBO(172, 212, 230, 1)),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign in button
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 2,
                        color: Color.fromRGBO(20, 188, 233, 1),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style:
                            TextStyle(color: Color.fromRGBO(172, 212, 230, 1)),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 2,
                        color: Color.fromRGBO(67, 236, 227, 1),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Color.fromRGBO(172, 212, 230, 1)),
                  ),
                  const SizedBox(width: 4),
                  GradientText(
                    'Register now',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                    colors: [
                      Color.fromRGBO(67, 236, 227, 1),
                      Color.fromRGBO(20, 188, 233, 1)
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
