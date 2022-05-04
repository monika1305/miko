import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FrameTwo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.redAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          Expanded(child:  Align(
            alignment: Alignment.bottomCenter,
            child: Text(
            'Best Kids Content curated for you',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),),),

        ],
      ),
    );
  }
}
