import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("isi column 1"),
        Text("isi column 2"),
        Text("isi column 3"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("item 4"),
            Text("item 5"),
            Text("item 6")
          ]
        )
      ]
    );
  }
}