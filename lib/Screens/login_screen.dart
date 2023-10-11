import 'package:flutter/material.dart';
import 'package:flutter_application_mentor_1/Screens/home_screen.dart';
import 'package:flutter_application_mentor_1/componant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.teal[600],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Wellcome",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                MyTextFormField(
                  label: 'UserName',
                ),
                SizedBox(
                  height: 20,
                ),
                MyTextFormField(
                  label: 'PassWord',
                ),
                // SizedBox(
                //   height: 20,
                // ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ));
                  },
                  child: Text(
                    "Enter",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.teal)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
