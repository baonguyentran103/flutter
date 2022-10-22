import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Input extends StatelessWidget {
  const Input(this.title, this.isPassword, {super.key});
  final String title;
  final bool isPassword;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.grey)
        ),
        SizedBox(height: 10),
        TextField(
          obscureText:isPassword,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        )
      ],
    );
  }
}
