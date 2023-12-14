

import '../database/Appdatabase.dart';

class ExpenseModel {
  int eId;
  int catId;
  int eType;
  num amt;
  num balance;
  String title;
  String desc;
  String timeStamp;

  ExpenseModel({this.eId = 0,
    required this.catId,
    required this.eType,
    required this.amt,
    required this.balance,
    required this.title,
    required this.desc,
    required this.timeStamp});

  factory ExpenseModel.fromMap(Map<String, dynamic> map){
    return ExpenseModel(
        eId: map[AppDataBase.COLUMN_ID],
        catId: map[AppDataBase.COLUMN_EXPENSE_CAT_ID],
        eType: map[AppDataBase.COLUMN_TYPE],
        amt: map[AppDataBase.COLUMN_AMT],
        balance: map[AppDataBase.COLUMN_BALANCE],
        title: map[AppDataBase.COLUMN_TITLE],
        desc: map[AppDataBase.COLUMN_DESC],
        timeStamp: map[AppDataBase.COLUMN_TIMESTAMP],);

  }

  Map<String, dynamic> toMap(){
    return {
      AppDataBase.COLUMN_EXPENSE_CAT_ID : catId,
      AppDataBase.COLUMN_AMT : amt,
      AppDataBase.COLUMN_BALANCE : balance,
      AppDataBase.COLUMN_TITLE : title,
      AppDataBase.COLUMN_DESC : desc,
      AppDataBase.COLUMN_TIMESTAMP : timeStamp,
      AppDataBase.COLUMN_TYPE : eType,
    };
  }
}
