import 'package:flutter/material.dart';
class Edit extends StatelessWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFFFA451),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('asset/image/Kenny.png',
                  fit: BoxFit.cover,)
                ],
              ),
            ),
            SizedBox(height: 10),
            Text('Adeyemo Kehinde',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Roboto',
              fontSize: 20
            ),),
            Text('Edit Profile',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),),
          ],
        ),
      ),
    );
  }
}
