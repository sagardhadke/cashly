import 'package:cashly/routes/app_routes.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    gotoOnBoard();
  }

  Future<void> gotoOnBoard() async {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppRoutes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/app_logo.png", height: 50, width: 75),
              SizedBox(width: 7),
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
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: CircularProgressIndicator.adaptive(
          backgroundColor: Color(0XFFD56174),
        ),
      ),
    );
  }
}
