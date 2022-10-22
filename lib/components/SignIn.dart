import 'package:dack_18120141/components/Input.dart';
import 'package:dack_18120141/components/ForgetPass.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget{
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignIn();
}
class _SignIn extends State<SignIn> {
  bool isSignIn = true;
  void switchInUp(){
    setState((){
      isSignIn= !isSignIn;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Name"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child:
                    isSignIn ?  Text(
                      "Đăng nhập",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue),
                    )
                    : Text(
                    "Đăng ký",
                    style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue),
                    ),

                ),
                SizedBox(height: 30),
                Text(
                  "Phát triển kỹ năng nhanh nhất bằng cách học 1 kèm 1 trực tuyến theo mục tiêu và lộ trình dành riêng cho bạn",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 30),
                Input("Email", false),
                SizedBox(height: 20),
                Input("Mật khẩu", true),
                SizedBox(height: 20),
                isSignIn ? InkWell(child: Text(
                  "Quên mật khẩu?",
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                  onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ForgetPass()),
                    );
                  },
                )  : SizedBox(height: 0),
                SizedBox(height: 5),
                ElevatedButton(
                  onPressed: (){},
                  child: isSignIn ? Text("Đăng nhập", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  )) : Text("Đăng ký", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  )),
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.blueAccent,
                   minimumSize: const Size.fromHeight(50),
                 ),
                ),
                SizedBox(height: 20),
                const Center(
                  child: Text("Hoặc tiếp tục với", style: TextStyle(
                    fontSize: 20,
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                              border: Border.all(width: 2, color: Colors.blue)),
                          child: const Center(
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              icon: Icon(
                                Icons.facebook_outlined,
                                size: 45,
                                color: Colors.blue,
                              ),
                              onPressed: null,
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                              border: Border.all(width: 2, color: Colors.blue)),
                          child: const Center(
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              icon: Icon(
                                Icons.phone_android,
                                size: 45,
                              ),
                              onPressed: null,
                            ),
                          )),
                       Center(
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon:Image.asset("assets/images/google.png", width: 80, height: 80,),
                          onPressed: null,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Center(
                    child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: isSignIn ? [
                            Text("Chưa có tài khoản? ", style: TextStyle(
                                fontSize: 20,
                                )),
                            InkWell(
                              child: Text(
                                "Đăng ký",
                                style: TextStyle(fontSize: 20, color: Colors.blue),
                              ),
                              onTap: switchInUp,
                            )
                          ] : [
                            Text("Đã có tài khoản? ", style: TextStyle(
                              fontSize: 20,
                            )),
                            InkWell(
                              child: Text(
                                "Đăng nhập",
                                style: TextStyle(fontSize: 20, color: Colors.blue),
                              ),
                              onTap: switchInUp,
                            )
                          ],
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
