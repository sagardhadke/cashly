class ExpenseModel {
  int? id;
  int userId;
  String title;
  String desc;
  int amount;
  int balance;
  int expenseType; //* 1 -> debit, 2 -> credit
  int categoryId;
  int createdAt;

  ExpenseModel({
    this.id,
    required this.userId,
    required this.title,
    required this.desc,
    required this.amount,
    required this.balance,
    required this.expenseType,
    required this.categoryId,
    required this.createdAt,
  });
}
