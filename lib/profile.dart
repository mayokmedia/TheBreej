import 'package:assignment/edit.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                ),
                SizedBox(width: 10),
                Text('Adeyemo Kehinde',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                    )),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Edit()));
                  },
                  child: Icon(
                    Icons.edit,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),

            Text('Menu',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
              color: Colors.grey,
              )
            ),
            SizedBox(height: 25),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFFFFA451),
                  radius: 18,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_today_rounded,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Referrals',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  width: 170,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 15
                )
              ],

            ),
            SizedBox(height: 25),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFFFFA451),
                  radius: 18,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.verified_user_rounded,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Verification',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  width: 170,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 15
                )
              ],

            ),
            SizedBox(height: 25),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFFFFA451),
                  radius: 18,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.headphones,
                        color: Colors.white,
                        size: 25,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Support',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  width: 170,
                ),
                Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.grey,
                    size: 15
                )
              ],

            ),
            SizedBox(height: 25),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFFFFA451),
                  radius: 18,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 25,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Settings',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  width: 170,
                ),
                Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.grey,
                    size: 15
                )
              ],

            ),
            SizedBox(height: 25),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFFFFA451),
                  radius: 18,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.logout,
                        color: Colors.white,
                        size: 25,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Log out',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  width: 170,
                ),
                Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.grey,
                    size: 15
                )
              ],

            )
          ],
        ),
      ),
    );
  }
}
