import 'package:cashly/model/category_model.dart';
import 'package:cashly/model/expense_model.dart';

class AppConstants {
  static List<CategoryModel> categories = [
    CategoryModel(id: 1, title: "Coffee", imgPath: "assets/icons/Coffee.png"),
    CategoryModel(
      id: 2,
      title: "Education",
      imgPath: "assets/icons/Education.png",
    ),
    CategoryModel(id: 3, title: "Finance", imgPath: "assets/icons/Finance.png"),
    CategoryModel(id: 4, title: "Fitness", imgPath: "assets/icons/Fitness.png"),
    CategoryModel(id: 5, title: "Food", imgPath: "assets/icons/Food.png"),
    CategoryModel(
      id: 6,
      title: "Healthcare",
      imgPath: "assets/icons/Healthcare.png",
    ),
    CategoryModel(id: 7, title: "Hobby", imgPath: "assets/icons/Hobby.png"),
    CategoryModel(id: 8, title: "Shop", imgPath: "assets/icons/Shop.png"),
    CategoryModel(
      id: 9,
      title: "Transport",
      imgPath: "assets/icons/Transport.png",
    ),
    CategoryModel(id: 10, title: "Rent", imgPath: "assets/icons/Rent.png"),
    CategoryModel(
      id: 11,
      title: "Utilities",
      imgPath: "assets/icons/Utilities.png",
    ),
    CategoryModel(
      id: 12,
      title: "Groceries",
      imgPath: "assets/icons/Groceries.png",
    ),
    CategoryModel(
      id: 13,
      title: "Insurance",
      imgPath: "assets/icons/Insurance.png",
    ),
    CategoryModel(
      id: 14,
      title: "Entertainment",
      imgPath: "assets/icons/Entertainment.png",
    ),
    CategoryModel(id: 15, title: "Gifts", imgPath: "assets/icons/Gifts.png"),
    CategoryModel(id: 16, title: "Tax", imgPath: "assets/icons/Tax.png"),
    CategoryModel(id: 17, title: "Salary", imgPath: "assets/icons/Salary.png"),
    CategoryModel(
      id: 18,
      title: "Investment",
      imgPath: "assets/icons/Investment.png",
    ),
    CategoryModel(
      id: 19,
      title: "Savings",
      imgPath: "assets/icons/Savings.png",
    ),
  ];

  static List<Map<String, dynamic>> expenseHistory = [
     {
      "title": "Medical Expense",
      "amount": 850,
      "imgPath": "assets/icons/Healthcare.png",
      "catName": "Healthcare",
    },
    {
      "title": "Morning Coffee",
      "amount": 50,
      "imgPath": "assets/icons/Coffee.png",
      "catName": "Coffee",
    },
    {
      "title": "Monthly Rent",
      "amount": 18000,
      "imgPath": "assets/icons/Rent.png",
      "catName": "Rent",
    },
    {
      "title": "Grocery Shopping",
      "amount": 855,
      "imgPath": "assets/icons/Groceries.png",
      "catName": "Groceries",
    },
    {
      "title": "Gym Membership",
      "amount": 4000,
      "imgPath": "assets/icons/Fitness.png",
      "catName": "Fitness",
    },
    {
      "title": "Netflix Subscription",
      "amount": 199,
      "imgPath": "assets/icons/Entertainment.png",
      "catName": "Entertainment",
    },
    {
      "title": "Bus Pass",
      "amount": 250,
      "imgPath": "assets/icons/Transport.png",
      "catName": "Transport",
    },
    {
      "title": "Electricity Bill",
      "amount": 6050,
      "imgPath": "assets/icons/Utilities.png",
      "catName": "Utilities",
    },
    {
      "title": "Birthday Gift",
      "amount": 50,
      "imgPath": "assets/icons/Gifts.png",
      "catName": "Gifts",
    },
    {
      "title": "Investment Deposit",
      "amount": 300,
      "imgPath": "assets/icons/Investment.png",
      "catName": "Investment",
    },
    {
      "title": "Dinner Out",
      "amount": 4525,
      "imgPath": "assets/icons/Food.png",
      "catName": "Food",
    },
  ];
}
