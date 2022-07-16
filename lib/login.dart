import 'package:assignment/const/const.dart';
import 'package:assignment/const/styles.dart';
import 'package:assignment/profile.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                fontFamily: 'Roboto',
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: TextField(
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                decoration: kInputDecoration,
              ),
            ),
            TextField(
              obscureText: true,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              decoration: kInputDecoration.copyWith(
                prefixIcon: const Icon(Icons.lock,),
                suffixIcon: const Icon(Icons.remove_red_eye,),
                labelText: "Password:",
                hintText: "Enter password",

              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
              child: Container(
                height: 60,
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                    color: const Color(0xFFFFA451),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 6.0,
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Dont have an account?',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'Sign up?',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
