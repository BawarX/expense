import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
   
   final Function addTx;
  final titleController = TextEditingController();
  final  amountController= TextEditingController();


    NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        label: Text('title'),
                      ),
                      controller: titleController,
                      // onChanged: (value) {
                      //   titleInput = value;
                      // },
                    ),
                    TextField(
                      decoration: InputDecoration(label: Text('price')),
                      controller: amountController,
                      // onChanged: (value)=> amountInput = value,
                    ),
                    FlatButton(
                      child: Text("Add Transaction"),
                      textColor: Colors.purple,
                      onPressed: (() {
                        addTx(titleController.text, double.parse(amountController.text));
                      }),
                    )
                  ],
                ),
              ),
            );
  }
}