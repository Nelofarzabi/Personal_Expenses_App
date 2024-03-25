import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function txAdd;
   NewTransaction (this.txAdd , {super.key});

   final titleController = TextEditingController();
   final amountController = TextEditingController();

   void submitData(){
      txAdd(titleController.text , double.parse(amountController.text));
   }

  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 5,
            child: Container(
              color: Colors.white,
              padding: const  EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(decoration: const InputDecoration(labelText: 'Title'), controller: titleController,onSubmitted: (_) => submitData,), 
                  TextField(decoration: const InputDecoration(labelText: 'Amount'),controller: amountController, keyboardType: TextInputType.number, onSubmitted: (_) => submitData,), 
                  TextButton(onPressed: submitData, child: Text('Add Transaction' , style: TextStyle(color:Colors.purple),),)
                ],
              ),
            ),
          );
  }
}