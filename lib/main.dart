import 'package:flutter/material.dart';
import 'package:personal_expenses_app/transactions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal-Expenses',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<Transaction> transactions = <Transaction>[
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Expenses'),
      ),
      body: Column(children: <Widget>[
        Container(
          width: double.infinity,
          child: const Card(
            color: Colors.blue,
            child: Text('Chart!'),
            elevation: 5,
          ),
        ),
        Column(children: transactions.map((tx) {
          return Card(child: Text('${tx.title}'));
        }).toList()),
      ]),
    );
  }
}
