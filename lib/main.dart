import 'package:arminogameapp/controller/provider.dart';
import 'package:arminogameapp/view/taBar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) =>  GamedataProvider(),
      )
    ],child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabPage(),
    ),
  ));
}