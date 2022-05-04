import 'package:flutter/material.dart';
import 'package:miko/home/talent_screen/talentscreen.dart';
import 'package:miko/home/talktomiko/talktomikoscreen.dart';
import 'package:miko/home/tidbits_screen/tidbitsscreen.dart';
import 'package:miko/home/top_slider_indicator/topsliderindicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // set it to false
      body: Center(
        child: SingleChildScrollView(
          reverse: true,
          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              SizedBox(
                child: TopSliderIndicator(),
              ),
              SizedBox(
                child:  TalentScreen(),
              ),
              SizedBox(height: 10,),

              SizedBox(
                 child: TalktoMikoScreen(),
              ),  SizedBox(height: 10,),

              SizedBox(
                child: TidbitsScreen(),
              ),


            ],
          ),
        ),

        ),


    );
  }
}
