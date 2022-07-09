import 'package:assignment/profile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Row(
              children: const [
                Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Text(
                  'E-mail',
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
              ],
            ),
            Container(
                height: 65,
                width: 325,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'Your e-mail or phone',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 35,
            ),
            Row(
              children: const [
                Text(
                  'Pasword',
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
              ],
            ),
            Container(
              height: 65,
              width: 325,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Password',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            const Text(
              'Forgot Password?',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 35,
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
                width: 248,
                decoration: BoxDecoration(
                    color: const Color(0xFFFFA451),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 12.0,
                        offset: Offset(5.5, 5),
                      )
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
            const SizedBox(
              height: 35,
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
