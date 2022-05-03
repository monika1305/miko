import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miko/home/talktomiko/talktomiko_slider.dart';
class TalktoMikoScreen extends StatefulWidget {
  const TalktoMikoScreen({Key? key}) : super(key: key);

  @override
  State<TalktoMikoScreen> createState() => _TalktoMikoScreenState();
}

class _TalktoMikoScreenState extends State<TalktoMikoScreen> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 5,
        child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text(
                'Talk to Mikos',
                style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,

                ),
                textAlign: TextAlign.left,
              ),
          const SizedBox(height: 10,),
          const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta porttitor diam, lobortis varius felis finibus non.',
            style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
              fontSize: 10
          ),
            textAlign: TextAlign.left,
          ),
          SizedBox(// otherwise the logo will be tiny
              height: 150,
            width: MediaQuery.of(context).size.width*30,// otherwise the logo will be tiny
              child: TalktoMikoSlider(),

          ),
          // TalktoMikoSlider(),

        ],
    ),),
    );
  }
}
