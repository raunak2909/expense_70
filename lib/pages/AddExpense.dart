import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:ws_expance_app/CustomWidgets/Uihelper.dart';
import 'package:ws_expance_app/bloc/expense_bloc.dart';
import 'package:ws_expance_app/global/dummyexpanse.dart';
import 'package:ws_expance_app/models/expense_model.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({Key? key}) : super(key: key);

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  String selectedTransactionType = 'Credit';
  DateTime selectedDate = DateTime.now();
  var selectedCatIndex = -1;
  var format = DateFormat.yMMMMd();
  TextEditingController tcontroller = TextEditingController();
  TextEditingController Desccontroller = TextEditingController();
  TextEditingController amtcontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        title: Text('Add Expense'),
        backgroundColor: Colors.teal,
      ),
      // Set the background color
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              Uihelper.CustomTextField(
                  tcontroller, "Name your Expense", Icons.abc, true),
              SizedBox(height: 10),
              Uihelper.CustomTextField(
                  Desccontroller, "Add Desc", Icons.abc, true),
              SizedBox(height: 10),
              Uihelper.CustomTextField(
                  amtcontroller, "Enter amount", Icons.money, true),
              SizedBox(height: 10),
              DropdownButton(
                value: selectedTransactionType,
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    setState(() {
                      selectedTransactionType = newValue;
                    });
                  }
                },
                items: ['Credit', 'Debit'].map<DropdownMenuItem<String>>((
                    String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return GridView.builder(
                        itemCount: AppStatic.categories.length,
                        padding: EdgeInsets.all(20),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          var eachCat = AppStatic.categories[index];
                          return InkWell(
                            onTap: () {
                              selectedCatIndex = index;
                              setState(() {

                              });
                              Navigator.pop(context);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.teal.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(21),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(21),
                                child: Center(
                                  child: Image.asset(eachCat["img"]),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
                child: selectedCatIndex == -1 ? Text("Choose Expense") : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppStatic.categories[selectedCatIndex]["img"], width: 20,
                      height: 20,),
                    Text(" - ${AppStatic.categories[selectedCatIndex]["name"]}")
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black87,
                ),
              ),
              ElevatedButton(onPressed: () async {
                var dateFromPicker = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000, 9, 01),
                    lastDate: DateTime.now());

                selectedDate = dateFromPicker!;
                setState(() {

                });
              }, child: Text(format.format(selectedDate))),
              ElevatedButton(onPressed: () {
                var title = tcontroller.text.toString();
                var desc = Desccontroller.text.toString();
                var amt = amtcontroller.text.toString();

                var newExpense = ExpenseModel(
                    catId: 0,
                    eType: selectedTransactionType=="Credit" ? 0 : 1,
                    amt: double.parse(amt),
                    balance: 0,
                    title: title,
                    desc: desc,
                    timeStamp: selectedDate.millisecondsSinceEpoch.toString());

                BlocProvider.of<ExpenseBloc>(context).add(AddExpenseEvent(newExpense: newExpense));


              }, child: Text("ADD Expanse"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    foregroundColor: Colors.white
                ),),
              SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}
