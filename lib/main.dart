// ignore_for_file: deprecated_member_use

import 'package:expense/models/transaction.dart';
import 'package:expense/widgets/new_transaction.dart';
import 'package:expense/widgets/transaction_list.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter app',
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          //accentColor: Colors.red
          fontFamily: 'Quicksand',
          textTheme:  ThemeData.light().textTheme.copyWith(
            headline6: TextStyle(fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
            fontSize: 18,
            )),
          appBarTheme: AppBarTheme(
              textTheme: ThemeData.light().textTheme.copyWith(
                  headline6: TextStyle(
                    fontFamily: 'OpenSans',
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   ),
                   ),
                   ),
                   ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // String? titleInput;

  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'new shoes',
      amount: 20.1,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'shirt',
      amount: 59.01,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  void _startAddnewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return NewTransaction(_addNewTransaction);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App demo for github"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _startAddnewTransaction(context),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              color: Theme.of(context).primaryColorLight,
              child: Container(

                  height: 20, width: 350, child: Text("Market System Beta",)
                  
                  ),
            ),
            TransactionList(_userTransactions),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startAddnewTransaction(context),
      ),
    );
  }
}
