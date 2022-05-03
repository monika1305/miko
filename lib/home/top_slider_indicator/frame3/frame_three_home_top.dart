import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FrameThree extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[800],
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          Expanded(child: Text(
            'Get the most out of Miko’s talent!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),),

        ],
      ),
    );
  }
}
