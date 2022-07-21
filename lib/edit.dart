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
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey,
              ),
              child: Row(
                children: [
                  Image.asset('asset/image/Kenny.png',
                  fit: BoxFit.fitWidth),
                ],
              ),
            ),
            const Text('Adeyemo Kehinde',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Roboto',
              fontSize: 20
            ),),
            const Text('Edit Profile',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),),
          const Padding(
            padding: EdgeInsets.symmetric(vertical:20),
            child: TextField(
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.grey),
              decoration: InputDecoration(
                labelText: 'Full Name',
                labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 16),
                hintText: 'ADEYEMO KEHINDE',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child:  TextField(
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.grey),
              decoration: InputDecoration(
                labelText: 'E-mail',
                labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 16),
                hintText: 'adeyemi0989@gmail.com',
                suffixIcon: Icon(Icons.mail, color: Colors.grey),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child:  TextField(
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.grey),
              decoration: InputDecoration(
                labelText: 'Phone number',
                labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 16),
                hintText: '08149038163',
                suffixIcon: Icon(Icons.phone_enabled, color: Colors.grey),
              ),
            ),
          ),
            Container(
                margin: EdgeInsets.only(top: 30, bottom: 30),
                height: 60, width: 150,
                decoration: BoxDecoration(
                  color: Color(0xFFFFA451),
                  borderRadius: BorderRadius.circular(20)
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const [
                  Text('Edit Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
