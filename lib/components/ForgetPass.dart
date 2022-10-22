import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("App Name"),
        ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Đặt lại mật khẩu",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700)
              ),
              SizedBox(height: 30),
              Text("Vui lòng nhập email để tìm kiếm tài khoản của bạn."),
              SizedBox(height: 30),
              Text("Email"),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){},
                child: Text("Xác nhận", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  minimumSize: const Size.fromHeight(50),
                ),
              ),
            ],
          ),
        ),
      )

    );
  }
}