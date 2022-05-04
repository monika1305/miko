import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TalktoMikoSlider extends StatefulWidget {
  const TalktoMikoSlider({Key? key}) : super(key: key);

  @override
  State<TalktoMikoSlider> createState() => _TalktoMikoSliderState();
}

class _TalktoMikoSliderState extends State<TalktoMikoSlider> {

  final List<Color> colorsList = [
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.green,
    Colors.pink,
    Colors.purple,
    Colors.grey,
    Colors.white10,
    ];
  final List<String> titles = [
    ' red ',
    ' yellow ',
    ' blue ',
    ' green ',
    ' pink ',
    ' purple ',
    ' grey ',
    ' white10 ',
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width*5,
     child: CarouselSlider(

      options: CarouselOptions(

          aspectRatio:2.0,
           viewportFraction: 0.2,
           disableCenter: true,
           enableInfiniteScroll: false,
           autoPlay: false,
           onPageChanged: (index, reason) {
    setState(
    () {
    _currentIndex = index;
    },
    );
          }
      ),
      items: colorsList
          .map(
            (item) => Padding(
          padding: const EdgeInsets.all(5.0),
          child:  Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.25), // border color
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: EdgeInsets.all(5), // border width
              child: Container( // or ClipRRect if you need to clip the content
                decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  color: item, // inner circle color
                ),

                child: Align(
                  alignment: Alignment.bottomCenter,
                  child:  Text(
                    '${titles[_currentIndex]}',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black45,
                    ),

                  ),
                ), // inner content
              ),
            ),
          ),
        ),
      ).toList(),
    ),
      ),
    );

  }
}
