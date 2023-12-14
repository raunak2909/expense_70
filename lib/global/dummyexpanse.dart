import 'package:flutter/material.dart';
import 'package:ws_expance_app/models/day_wise_expense_model.dart';
 class AppStatic{

  static const String basePath = "assets/icons/cat/";

  static const String coffeePath = "${basePath}coffee.png";
  static const String travelPath = "${basePath}travel.png";
  static const String snacksPath = "${basePath}snack.png";
  static const String shoppingPath = "${basePath}hawaiian-shirt.png";
  static const String moviePath = "${basePath}popcorn.png";
  static const String rechargePath = "${basePath}mobile-transfer.png";
  static const String petrolPath = "${basePath}vehicles.png";
  static const String restroPath = "${basePath}restaurant.png";


  static const List<Map<String, dynamic>> categories = [
   {'id': 1, 'name': 'Travel', 'img': travelPath},
   {'id': 2, 'name': 'Coffee', 'img': coffeePath},
   {'id': 3, 'name': 'Movie', 'img': moviePath},
   {'id': 4, 'name': 'Petrol', 'img': petrolPath},
   {'id': 5, 'name': 'Recharge', 'img': rechargePath},
   {'id': 6, 'name': 'Shopping', 'img': shoppingPath},
   {'id': 7, 'name': 'Snacks', 'img': snacksPath},
   {'id': 8, 'name': 'Restaurant', 'img': restroPath},
  ];




   /*static List<ExpenseModel>dummyExpense =[
      ExpenseModel(date: "12/12/23", amt: "20000", transaction: [

        ExpenseDetails(title: "cofee", desc: "family", amt: "500", balance: "15000",
     catImg: "https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=400"),
   ],



      ),

     ExpenseModel(date: "13/12/23", amt: "10000", transaction: [

       ExpenseDetails(title: "tea", desc: "culliges", amt: "500", balance: "15000",
           catImg: "https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=400"),
     ],



     ),

     ExpenseModel(date: "14/12/23", amt: "10000", transaction: [

       ExpenseDetails(title: "movie", desc: "freinds", amt: "500", balance: "15000",
           catImg: "https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=400"),
     ],



     ),
     ExpenseModel(date: "15/12/23", amt: "10000", transaction: [

       ExpenseDetails(title: "patrol", desc: "bike ke liye", amt: "500", balance: "15000",
           catImg: "https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=400"),
     ],



     ),
     ExpenseModel(date: "16/12/23", amt: "10000", transaction: [

       ExpenseDetails(title: "recharge", desc: "papa", amt: "500", balance: "15000",
           catImg: "https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=400"),
     ],



     ),
     ExpenseModel(date: "17/12/23", amt: "10000", transaction: [

       ExpenseDetails(title: "mandir", desc: "bhagvan jee ke", amt: "500", balance: "15000",
           catImg: "https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=400"),
     ],




     ),
     ExpenseModel(date: "13/12/23", amt: "10000", transaction: [

       ExpenseDetails(title: "bhai", desc: "pocket money", amt: "500", balance: "15000",
           catImg: "https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=400"),
     ],



     ),

   ];*/

 }