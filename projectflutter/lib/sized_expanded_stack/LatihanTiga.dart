import 'package:flutter/material.dart';

class LatihanTiga extends StatelessWidget {
  const LatihanTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 72,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 51, 182, 51), const Color.fromARGB(255, 255, 89, 89)],
            begin: Alignment.topLeft,            
            end: Alignment.bottomRight,         
          ),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 6)],
        ),
        child: Row(
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: CircleAvatar(
                // backgroundColor: Colors.amber,
                backgroundImage: NetworkImage(
                  "https://png.pngtree.com/png-clipart/20240812/original/pngtree-cute-panda-standing-with-happy-expression-png-image_15762144.png",
                ),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Riska Aulia",
                    style: TextStyle(color: Colors.white), 
                  ),
                  SizedBox(height: 4),
                  Text(
                    "XII RPL",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}