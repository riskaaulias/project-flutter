import 'package:flutter/material.dart';

class LayoutTiga extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded
          (child: Container(
            height: 80,
            color: Colors.cyan,
            alignment: Alignment.center,
            child: Text("Pemasukan"),
          )
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              height: 80,
              color: Colors.amberAccent,
              alignment: Alignment.center,
              child: Text("Pengeluaran"),
            )
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              height: 80,
              color: const Color.fromARGB(255, 109, 255, 64),
              alignment: Alignment.center,
              child: Text("Saldo"),
            )
          )
        ],
      ),
    );
  }
}