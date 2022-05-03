import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miko/home/tidbits_screen/tidbits_slider.dart';

class TidbitsScreen extends StatefulWidget {
  const TidbitsScreen({Key? key}) : super(key: key);

  @override
  State<TidbitsScreen> createState() => _TidbitsScreenState();
}

class _TidbitsScreenState extends State<TidbitsScreen> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 10,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),

          child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Text(
                'Tidbitss',
                style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,

                ),
                textAlign: TextAlign.left,
              ),
          SizedBox(height: 10,),
          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta porttitor diam, lobortis varius felis finibus non.',
            style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
              fontSize: 10
          ),
            textAlign: TextAlign.left,
          ),
          SizedBox(// otherwise the logo will be tiny
              height: 150,
            width: MediaQuery.of(context).size.width*2,// otherwise the logo will be tiny
              child: const TidbitsSlider(),

          ),
          // TidbitsSlider(),

        ],
    ),),
    );
  }
}
