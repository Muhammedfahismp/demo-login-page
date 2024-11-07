
import 'package:flutter/material.dart';

class SignUp{
  final String name;
  final IconButton? icons;
  
  SignUp({required this.name,this.icons});
}

List<SignUp>SignUpData=[
  SignUp(name: "Full Name"),
  SignUp(name: "nickname"),
  SignUp(name: "Date of Birth",icons: IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month_outlined))),
  SignUp(name: "Email",icons: IconButton(onPressed: (){}, icon: Icon(Icons.email_outlined))),
  SignUp(name: "Phone Number"),
  SignUp(name: "Gender",icons: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down))),
  // SignUp(name: "nickname"),
  // SignUp(name: "nickname"),
];