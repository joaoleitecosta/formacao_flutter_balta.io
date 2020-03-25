

import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 40, 15, 0),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20),
        ),
      child: FlatButton(
        child: Text(
          "CALCULAR",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontFamily: "Big Shoulder Display", 
          ),
          ),
        onPressed: (){},
      ),
    );
  }

}