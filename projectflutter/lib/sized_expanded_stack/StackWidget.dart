import 'package:flutter/material.dart'; 

class Stackwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(width: 50, height: 50, color: Colors.red,),
          Positioned(
            bottom: 10,
            right: 10,
            child: Icon(Icons.favorite, color: Colors.white,) 
          ),
          Positioned(top: 10, left: 10, child: Text("Label") ),
        ],
      ); 
  }
}