import 'package:assignment/const/styles.dart';
import 'package:assignment/edit.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                ),
                const SizedBox(width: 20),
                const Text('Adeyemo Kehinde',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                    )),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Edit()));
                  },
                  child: const Icon(
                    Icons.edit,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Text('Menu',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,  
                  color: Colors.grey,
                )),
            CustomProfileRow(Icons.share, "Referrals"),
            CustomProfileRow(Icons.shield_moon, "Verification"),
            CustomProfileRow(Icons.headphones, "Support"),
            CustomProfileRow(Icons.settings, "Settings"),
            CustomProfileRow(Icons.logout, "Logout"),
          ],
        ),
      ),
    );
  }

  Widget CustomProfileRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: kPrimaryColor,
            ),
            child: Icon(icon, color: Colors.white, size: 22),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(text,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              )),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_rounded,
              color: Colors.grey, size: 15)
        ],
      ),
    );
  }
}
