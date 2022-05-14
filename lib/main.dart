// ignore_for_file: deprecated_member_use

import 'package:expense/models/transaction.dart';
import 'package:expense/widgets/new_transaction.dart';
import 'package:expense/widgets/transaction_list.dart';
import 'package:expense/widgets/user_transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter app',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
 
  // String? titleInput;
  // String? amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter App demo for github"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                color: Colors.red,
                child: Container(
                    height: 40, width: 40, child: Text("this is Chart")),
              ),
              
             UserTransaction()
        
            ],
          ),
        ));
  }
}
