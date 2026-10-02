import 'package:flutter/material.dart';
import 'container/ContainerSatu.dart';
import 'container/LatihanContainer.dart';
import 'row_column/RowWidget.dart';
import 'row_column/ColumnWidget.dart';
import 'row_column/RowColumnWidget.dart';
import 'row_column/LatihanColumnWidget1.dart';
import 'sized_expanded_stack/ExpandedWIdget.dart';
import 'sized_expanded_stack/SizedBoxWidget.dart';
import 'sized_expanded_stack/StackWidget.dart';
import 'sized_expanded_stack/LayoutSatu.dart';
import 'sized_expanded_stack/LayoutDua.dart';
import 'sized_expanded_stack/LayoutTiga.dart';
import 'sized_expanded_stack/LayoutEmpat.dart';
import 'sized_expanded_stack/LatihanTiga.dart';
import 'sized_expanded_stack/LatihanEmpat.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("FlutterApp"),
        //   backgroundColor: const Color.fromARGB(255, 255, 137, 137),
        //   centerTitle: true,
        // ),
     body: LatihanEmpat(),
      ),
    );
  }
}

class HelloWidget extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
     child: Text("Hello Flutter", 
     style:  TextStyle(
       fontSize: 24,
       fontWeight: FontWeight.bold,
       color: const Color.fromARGB(255, 255, 85, 156),
     ) ,),
    );
  }
}