import 'package:cashly/routes/app_routes.dart';
import 'package:flutter/material.dart';

class Onboard2 extends StatelessWidget {
  const Onboard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                "Access trusted tools for smarter budgeting",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Get a daily overview of your spending and savings, personalized just for you inside the app",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20),
              Image.asset("assets/images/onBoard2.png"),
              SizedBox(height: 45),
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
                  onPressed: () => Navigator.pushReplacementNamed(
                    context,
                    AppRoutes.onboard3,
                  ),
                  child: Text("Next"),
                ),
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.home);
                },
                child: Container(
                  height: 48,
                  width: double.infinity,

                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: BoxBorder.all(color: Color(0XFFDD7888), width: 1),
                  ),
                  child: Text(
                    "Skip",
                    style: TextStyle(color: Color(0XFFDD7888), fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
