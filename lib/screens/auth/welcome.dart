import 'package:cashly/routes/app_routes.dart';
import 'package:flutter/material.dart';

class MyWelcome extends StatelessWidget {
  const MyWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/app_logo.png",
                      height: 50,
                      width: 75,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Cashly",
                      style: TextStyle(
                        color: Color(0XFFD56174),
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  "Welcome to Cashly",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Text(
                  "Get a daily overview of your spending and savings, personalized just for you inside the app",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
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
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFFDD7888),
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(fontSize: 18),
                    ),
                    onPressed: () => Navigator.pushReplacementNamed(
                      context,
                      AppRoutes.signIn,
                    ),
                    child: Text(
                      "Login with my account",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  "By signing up you acknowledge and agree to Cashly General Terms of Use and Privacy Policy",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
