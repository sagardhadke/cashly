import 'package:cashly/routes/app_routes.dart';
import 'package:flutter/material.dart';

class MySignin extends StatelessWidget {
  MySignin({super.key});

  TextEditingController mMail = TextEditingController();
  TextEditingController mPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFAF9FA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign in ",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "We're thrilled to have you back. Let's dive in and get updated news for you!",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: mMail,

                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0XFFF5F5F5),
                          hintText: "Enter your email",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: mPass,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0XFFF5F5F5),
                          hintText: "Enter your password",
                          prefixIcon: Icon(Icons.enhanced_encryption_rounded),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Color(0XFFDD7888),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFFDD7888),
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, AppRoutes.home),
                    child: Text("Sign in"),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, AppRoutes.signUp),
                  child: Container(
                    height: 48,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: BoxBorder.all(color: Color(0XFFDD7888), width: 1),
                    ),
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: Color(0XFFDD7888), fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  spacing: 15,
                  children: [
                    Expanded(
                      child: Divider(color: Color(0XFFC1C3C7), height: 1),
                    ),
                    Text(
                      "or sign up with",
                      style: TextStyle(color: Color(0XFF8C9097)),
                    ),
                    Expanded(
                      child: Divider(color: Color(0XFFC1C3C7), height: 1),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 1, color: Color(0XFFC1C3C7)),
                    ),
                    child: Row(
                      spacing: 10,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.apple), Text("Sign Up with Apple")],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 1, color: Color(0XFFC1C3C7)),
                    ),
                    child: Row(
                      spacing: 10,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/google.png",
                          width: 25,
                          height: 25,
                        ),
                        Text("Continue with Google"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 1, color: Color(0XFFC1C3C7)),
                    ),
                    child: Row(
                      spacing: 10,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/facebook.png",
                          width: 25,
                          height: 25,
                        ),
                        Text("Continue with Facebook"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  "By signing up you acknowledge and agree to Cashly General Terms of Use and Privacy Policy",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
