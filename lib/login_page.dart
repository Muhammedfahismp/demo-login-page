import 'package:flutter/material.dart';
import 'package:login_page/sign_up/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text(
                " Create your \n Account",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                label: Text("Email"),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  label: Text("Password"),
                  suffixIcon: Icon(Icons.lock_outline_rounded)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Checkbox(
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
      checkColor: Colors.white, // Color of the check icon
      activeColor: Colors.green, // Color of the checkbox when checked
      tristate: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      side: BorderSide(
        color: Colors.grey,
        width: 2.0,
      ),
    ),
            // IconButton(
            //         onPressed: () {


            //         },
            //         icon: Icon(
            //               Icons.check_box_outline_blank_rounded,
            //           color: Colors.green,
            //         )),
                Text("Remember Me"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpPage(),
                        ));
                  },
                  child: Container(
                    height: 45,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                        child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 2,
                  width: 100,
                  color: Colors.black,
                ),
                Text("Or Continue With"),
                Container(
                  height: 2,
                  width: 100,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.internetmatters.org/wp-content/uploads/2024/08/facebook-logo-new.png"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6WwgH7Nl5_AW9nDCnR2Ozb_AU3rkIbSJdAg&s"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwjeRTWEwod3acrG2ROU7X84hIRrfnPLvWsQ&s"),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(),));
                  },
                    child: Text(
                  "  Sign up",
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
