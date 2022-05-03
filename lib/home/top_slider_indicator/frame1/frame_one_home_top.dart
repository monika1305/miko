import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FrameOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.deepPurpleAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const Expanded(child: Text(
            'Get the most out of Miko’s talent!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),),
          FloatingActionButton.extended(
            label: const Text('Get Miko Max',
            style: TextStyle(
              color: Colors.white,
            ),
            ), // <-- Text
            backgroundColor: Colors.redAccent,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
