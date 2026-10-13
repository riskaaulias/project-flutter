import 'package:flutter/material.dart';
import 'package:projectflutter/sized_expanded_stack/LatihanTiga.dart';

class NavigatorWidget extends StatelessWidget {
  const NavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return LatihanTiga();
                },
            ),
            );
          },
          child: Text("List Basic"),
        ),
      ],
    );
  }
}