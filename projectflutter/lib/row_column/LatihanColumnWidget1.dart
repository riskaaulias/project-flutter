import 'package:flutter/material.dart';

class LatihanColumnWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 200,
        color: const Color.fromARGB(255, 255, 91, 140),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
              image:DecorationImage(
              image: NetworkImage('https://png.pngtree.com/png-clipart/20240812/original/pngtree-cute-panda-standing-with-happy-expression-png-image_15762144.png'), 
              fit: BoxFit.cover,
              ),
            ), 
            ),
            Column(children: [Text("Nama: Riska"), Text("Nis: 1234567"), Text("Kelas: XII RPL 1")],)
          ]
        )
        
      ), 
    );
  }
}