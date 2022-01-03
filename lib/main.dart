import 'package:flutter/material.dart';
import 'package:free/card_call.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CardCall(
        code: 454,
        description: 'Pão Quente Lda',
        adress: 'Rua da Junquerira, nr. 32',
        city: 'Talatona',
      ),
    );
  }
}
