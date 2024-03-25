import 'package:expense/models/transaction.dart';
import 'package:expense/widgets/new_transaction.dart';
import 'package:expense/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransaction extends StatefulWidget {
 UserTransaction({super.key});


  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  
   final List<Transaction> _userTransaction = [
      Transaction(id: 'ti', title: 'New Shoes', amount: 12.90, date: DateTime.now()), 
      Transaction(id: 't2', title: 'New Book', amount: 15.7, date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle , double txAmount){
    final newTx= Transaction(id:DateTime.now().toString() , title: txTitle, amount: txAmount, date: DateTime.now());
     setState(() {
       _userTransaction.add(newTx);
     });
  }
  @override
  Widget build(BuildContext context) {
    return Column(children: [ 
       NewTransaction(_addNewTransaction),
       TransactionList(_userTransaction),
       ],
    );
  }
}