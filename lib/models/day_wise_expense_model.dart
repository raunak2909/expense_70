import 'expense_model.dart';

class DayWiseExpenseModel {
  String date;
  String amt;
  List<ExpenseModel> transaction;

  DayWiseExpenseModel({
    required this.date,
    required this.amt,
    required this.transaction,
  });

  // Convert ExpenseModel to Map
  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'amt': amt,
      'transaction': transaction.map((expenseDetails) => expenseDetails.toMap()).toList(),
    };
  }

  // Reconstruct ExpenseModel from Map
  factory DayWiseExpenseModel.fromMap(Map<String, dynamic> map) {
    return DayWiseExpenseModel(
      date: map['date'],
      amt: map['amt'],
      transaction: List<ExpenseModel>.from(map['transaction'].map((x) => ExpenseModel.fromMap(x))),
    );
  }
}

/*
class ExpenseDetails {
  String title;
  String desc;
  String amt;
  String balance;
  String catImg;

  ExpenseDetails({
    required this.title,
    required this.desc,
    required this.amt,
    required this.balance,
    required this.catImg,
  });

  // Convert ExpenseDetails to Map
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'desc': desc,
      'amt': amt,
      'balance': balance,
      'catImg': catImg,
    };
  }

  // Reconstruct ExpenseDetails from Map
  factory ExpenseDetails.fromMap(Map<String, dynamic> map) {
    return ExpenseDetails(
      title: map['title'],
      desc: map['desc'],
      amt: map['amt'],
      balance: map['balance'],
      catImg: map['catImg'],
    );
  }
}
*/
