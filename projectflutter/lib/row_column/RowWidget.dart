import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
        children: [Text("item 1"), Text("item 2"), Text("item 3")],
    );
  }
}