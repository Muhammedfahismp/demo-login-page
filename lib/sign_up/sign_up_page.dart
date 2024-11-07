import 'package:flutter/material.dart';
import 'package:login_page/login_page.dart';
import 'package:login_page/sign_up/sign_up.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fill Your Profile"),
      ),

      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
              itemCount: SignUpData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      label: Text(SignUpData[index].name),
                      suffixIcon: SignUpData[index].icons
                    ),
                    
                  ),
                );
              },
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ));
            },
            child: Container(
              height: 45,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Text(
                  "Sign in with password",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),

      // Column(
      //   children: [

      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: TextField(
      //         decoration: InputDecoration(
      //           border: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(15)
      //           ),
      //           label: Text("Full Name")
      //         ),

      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
