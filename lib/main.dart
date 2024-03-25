import 'package:expense/models/transaction.dart';
import 'package:expense/widgets/transaction_list.dart';
import 'package:expense/widgets/new_transaction.dart';
import 'package:expense/widgets/user_transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:  MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              child: const  Card(
                color: Colors.blue,
                child: Text('CHART!'),
                elevation: 5,
              ),
            ) , 
             UserTransaction(),
          ],
        ),
      ),
    );
  }
}