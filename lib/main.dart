import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ws_expance_app/bloc/expense_bloc.dart';
import 'package:ws_expance_app/database/Appdatabase.dart';
import 'package:ws_expance_app/pages/AddExpense.dart';
import 'package:ws_expance_app/pages/AllExpense.dart';
import 'package:ws_expance_app/pages/LoginScreen.dart';
import 'package:ws_expance_app/pages/SplashScreen.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => ExpenseBloc(db: AppDataBase.db),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Allexpense(),
    );
  }
}

