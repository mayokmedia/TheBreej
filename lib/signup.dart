import 'package:assignment/profile.dart';
import 'package:flutter/material.dart';
class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
    backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children:  [
              const Text('Sign Up',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
              const SizedBox(height: 30),
              const TextField(
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
                decoration: InputDecoration(
                  labelText: 'User Name',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 13),
                  hintText: 'user name',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),

              SizedBox(height: 30),
              const TextField(
                obscureText: true,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
                decoration: InputDecoration(
                  labelText: 'PassWord',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 13),
                  hintText: 'password',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                    suffixIcon: Icon(Icons.remove_red_eye_rounded, color: Colors.grey,)
                ),
              ),

              SizedBox(height: 30),
              const TextField(
                obscureText: true,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
                decoration: InputDecoration(
                  labelText: 'Confirm PassWord',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 13),
                  hintText: 'confirm password',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                suffixIcon: Icon(Icons.remove_red_eye_rounded, color: Colors.grey,)
                ),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                },
                child: Container(margin: EdgeInsets.only(top: 30),
                  height: 60, width: 120,
                  decoration: BoxDecoration(color: Color(0xFFFFA451),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFFFA451),
                        blurRadius: 10.0,
                        blurStyle: BlurStyle.outer,
                      )
                    ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Sign Up',style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
