// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementflutter/provider/counterprovider.dart';
import 'package:statemanagementflutter/screen/home.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider<Counter>(create: (context)=>Counter())
    ],
    child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
    );
  }
  }