import 'package:flutter/material.dart';

import 'login.dart';
import 'edit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: HomePage(),
    );

  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFA451),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(top:50),
                alignment: Alignment.center,
                height: 40,
                width: 65,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text('Skip',
                style: TextStyle(
                    color: Color(0xFFFFA451),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 120,
            ),

            Text('Welcome to the breej',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.w600,
            ),),

            SizedBox(
              height: 15,
            ),

            Text('Get connected to essential service provider on campus',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),),

            SizedBox(
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

                Text('sign in With',
                style: TextStyle(
                  color: Colors.white,
                ),),

                Container(
                  height: 2,
                  width: 80,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('asset/icon/facebook icon.png',
                        height: 35,),
                      Text('FACEBOOK'),
                    ],
                  ),
                ),

                Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('asset/icon/google icon.png',
                        height: 35,),
                      Text('GOOGLE'),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 35,
            ),

            GestureDetector(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: Colors.white,)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Start with email or phone',
                    style: TextStyle(
                      color: Colors.white,
                    ))
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 35,
            ),

            Text('Already have an account? Sign In',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),),

            SizedBox(
              width: 5,
            ),
          ],
        ),
      )
    );
  }
}


