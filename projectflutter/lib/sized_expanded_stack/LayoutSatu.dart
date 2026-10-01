import 'package:flutter/material.dart';

class KartuProfil extends StatelessWidget {
  const KartuProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 72,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 246, 249, 251),
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
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWoPBJDm3UIDS4vt-PsxCvpTV1EeqEqyGFpJ0fWWQ4OHc2V4QSfaxxlHgr&s=10",
                ),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Riska"),
                  SizedBox(height: 4),
                  Text("XII RPL"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}