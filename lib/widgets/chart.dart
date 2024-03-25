import 'package:expense/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTrasaction;
  Chart(this.recentTrasaction);

 List<Map<String , Object>> get groupedTransactionValues{
  return List.generate(7, (index){
       final  weekDay = DateTime.now().subtract(Duration(days: index),);
        double totalSum = 0.0;
        for(var i = 0 ; i < recentTrasaction.length ; i++){
          if(recentTrasaction[i].date.day == weekDay.day && 
          recentTrasaction[i].date.month == weekDay.month &&
           recentTrasaction[i].date.year == weekDay.year
          ){
            totalSum += recentTrasaction[i].amount;

          }
        }
     return {'day' : DateFormat.E().format(weekDay) , 'Amount' : totalSum};
  });
 }
 
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: [],
      ),
    );
  }
}