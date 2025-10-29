import 'package:cashly/constants/app_constants.dart';
import 'package:cashly/routes/app_routes.dart';
import 'package:flutter/material.dart';

class Onboard3 extends StatefulWidget {
  Onboard3({super.key});

  @override
  State<Onboard3> createState() => _Onboard3State();
}

class _Onboard3State extends State<Onboard3> {
  int? selectedCategoryIndex;
  String? selectedCategory;

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
                "Select 5 or more categories",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Start personalizing your budget view. You'll still see important updates from all categories",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 5,
                ),
                itemCount: AppConstants.categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategoryIndex = index;
                        selectedCategory = AppConstants.categories[index].title;
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0XFFF5F2F8),
                            borderRadius: BorderRadius.circular(25),
                            border: BoxBorder.all(
                              width: 2,
                              color: selectedCategoryIndex == index
                                  ? Color(0XFFDD7888)
                                  : Colors.transparent,
                            ),
                          ),
                          child: Image.asset(
                            AppConstants.categories[index].imgPath,
                            height: 30,
                            width: 30,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(AppConstants.categories[index].title),
                      ],
                    ),
                  );
                },
              ),
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
                    AppRoutes.home,
                  ),
                  child: Text("Continue"),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
