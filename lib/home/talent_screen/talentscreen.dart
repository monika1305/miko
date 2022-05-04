import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miko/home/talent_screen/talent_slider.dart';

class TalentScreen extends StatefulWidget {
  const TalentScreen({Key? key}) : super(key: key);

  @override
  State<TalentScreen> createState() => _TalentScreenState();
}

class _TalentScreenState extends State<TalentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text(
                'Talents',
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
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width*10,
            child: TalentSlider(),

          ),
          // TalentSlider(),

        ],
    ),),
    );
  }
}
