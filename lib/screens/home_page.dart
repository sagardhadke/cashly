import 'package:cashly/constants/app_constants.dart';
import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

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
                  "The Smartest Way to Budget",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "Keep tabs on your money and make budgeting simple",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 25),
                Image.asset("assets/images/Chart.png"),
                SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Detail Activity",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF252525),
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(fontSize: 14, color: Color(0XFF444A51)),
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: AppConstants.expenseHistory.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsetsGeometry.symmetric(vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ListTile(
                          title: Text(
                            AppConstants.expenseHistory[index]['title'],
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // leading: CircleAvatar(
                          //   child: Image.asset(
                          //     height: 35,
                          //     AppConstants.expenseHistory[index]['imgPath'],
                          //   ),
                          // ),
                          leading: Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0XFFF7E1E5),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Image.asset(
                              AppConstants.expenseHistory[index]['imgPath'],
                              height: 24,
                              width: 24,
                            ),
                          ),
                          subtitle: Text(
                            AppConstants.expenseHistory[index]['catName'],
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0XFF5C656E),
                            ),
                          ),
                          trailing: Text(
                            "-${AppConstants.expenseHistory[index]['amount']}",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
