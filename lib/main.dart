import 'package:expense/transaction.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'flutter app',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
       title: 'new shoes',
        amount: 20.1,
         date: DateTime.now(),
         ),
         Transaction(id: 't5',
          title: 'shirt', 
          amount: 59.01, 
          date: DateTime.now(),
          ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App demo for github"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
             color: Colors.red,
            child: Container(
              height: 40,
              width: 40,
              child: Text("this is Chart")
              ),
          ),
          Column(
            children: transactions.map((tx){
              return Card(
                child: Row(
                  children: [
                    Container(
                   margin: EdgeInsets.symmetric(
                     vertical: 10, horizontal: 15
                     ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 2),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        tx.amount.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ), 
                        ),
                    ),
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(tx.title, style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),),
                        Text(tx.date.toString(),
                        style: TextStyle(
                          color: Colors.grey,
                        ),)

                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      )
    );
  }
}