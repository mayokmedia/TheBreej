import 'package:assignment/signup.dart';
import 'package:assignment/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:assignment/const/styles.dart';

import 'login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: const EdgeInsets.only(top: 50),
                  alignment: Alignment.center,
                  height: 40,
                  width: 65,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Color(0xFFFFA451),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 120,
              ),
              const Text(
                'Welcome to the breej',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontFamily: 'Raleway',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Get connected to essential service provider on campus',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 2,
                    width: 80,
                    color: Colors.white,
                  ),
                  const Text(
                    'sign in With',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 80,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customContainer("asset/icon/facebook icon.png", "FACEBOOK"),
                  customContainer("asset/icon/google icon.png", "GOOGLE")
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Signup()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Start with email or phone',
                          style: TextStyle(
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                      child: const Text(
                        " Sign in",
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      )),
                ],
              ),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
        ));
  }
}
