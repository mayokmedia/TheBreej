import 'package:assignment/const/const.dart';
import 'package:assignment/const/styles.dart';
import 'package:assignment/profile.dart';
import 'package:assignment/signup.dart';
import 'package:flutter/material.dart';
import 'package:assignment/widgets/custom_container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
              TextField(
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                decoration: kInputDecoration.copyWith(
                  labelText: "Email:",
                  hintText: "Enter email",
                ),
              ),
              TextField(
                obscureText: true,
                style: const TextStyle(
                  fontSize: 14,
                ),
                decoration: kInputDecoration.copyWith(
                  prefixIcon: const Icon(
                    Icons.lock,
                  ),
                  suffixIcon: const Icon(
                    Icons.remove_red_eye,
                  ),
                  labelText: "Password:",
                  hintText: "Enter password",
                ),
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: kPrimaryColor, fontFamily: 'Raleway'),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text("Login"),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ),
                      );
                    },
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Dont have an account?',
                    style: TextStyle(color: Colors.grey, fontFamily: 'Raleway'),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: Text(
                      'Sign up?',
                      style: const TextStyle(
                          color: Colors.red, fontFamily: 'Raleway'),
                    ),
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
