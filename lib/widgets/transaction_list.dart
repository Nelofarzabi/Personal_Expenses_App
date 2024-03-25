import 'package:expense/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  TransactionList(this.transaction , {super.key});

  final List<Transaction> transaction;


 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (context , index){
              return Card(
                  child: Row(children: [
                    Container(
                    margin:const  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(border: Border.all(color: Colors.purple, width: 2)),
                    padding: const EdgeInsets.all(10),
                    child: Text('\$${transaction[index].amount}', 
                    style:const  TextStyle
                    (
                      fontWeight: FontWeight.bold , 
                      fontSize: 20 , 
                      color: Colors.purple),
                    ), 
                    ), 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(transaction[index].title ,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),), 
                      Text(DateFormat.yMMMd().format(transaction[index].date) , style: const  TextStyle(color: Colors.grey, ),),
                    ],)
                  ],),
                );
      
        },
        itemCount:transaction.length ,
            ),
    );
}
}