import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'frame1/frame_one_home_top.dart';
import 'frame2/frame_two_home_top.dart';
import 'frame3/frame_three_home_top.dart';

class TopSliderIndicator extends StatefulWidget {
  const TopSliderIndicator({Key? key}) : super(key: key);

  @override
  State<TopSliderIndicator> createState() => _TopSliderIndicatorState();
}

class _TopSliderIndicatorState extends State<TopSliderIndicator> {
  int _currentIndex = 0;
  final List<Widget> imagesList = [
    FrameOne(),
    FrameTwo(),
    FrameThree(),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            // enlargeCenterPage: true,
            //scrollDirection: Axis.vertical,
            onPageChanged: (index, reason) {
              setState(
                    () {
                  _currentIndex = index;

                },
              );
            },
          ),
          items: imagesList
              .map(
                (item) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                margin: const EdgeInsets.only(
                  top: 5.0,
                ),
                elevation: 6.0,
                shadowColor: Colors.redAccent,
                child: ClipRRect(

                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: item //Card
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
              .toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imagesList.map((urlOfItem) {
            int index = imagesList.indexOf(urlOfItem);
            return Container(
              width: 10.0,
              height: 10.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? Color.fromRGBO(0, 0, 0, 0.8)
                    : Color.fromRGBO(0, 0, 0, 0.3),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
