import 'package:flutter/material.dart';

class RowColumnWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: double.infinity,
        color: Colors.grey,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(children: [Icon(Icons.call),SizedBox(height:10), Text("Call")]),
            Column(children: [Icon(Icons.route),SizedBox(height:10), Text("Route")]),
            Column(children: [Icon(Icons.share),SizedBox(height:10), Text("Share")]),
          ]
        )
      ),
    );
  }
}