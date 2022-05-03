import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TalentSlider extends StatefulWidget {
  const TalentSlider({Key? key}) : super(key: key);

  @override
  State<TalentSlider> createState() => _TalentSliderState();
}

class _TalentSliderState extends State<TalentSlider> {
  final List<String> imagesList = [
    'https://m.media-amazon.com/images/I/51KPIT+HvxL._SX679_.jpg',
    'https://cdn.shopify.com/s/files/1/0579/2645/1339/products/miko-hero-img-red-new.png',
    'https://i.gadgets360cdn.com/large/miko_2_green_1543325372587.jpg',
    'https://rukminim2.flixcart.com/image/832/832/jmnrtzk0-1/smart-assistant/s/m/9/miko-companion-robot-mmc2226-emotix-original-imaf8dvtdvgy7gzj.jpeg',
    ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
    child: CarouselSlider(
      options: CarouselOptions(aspectRatio: 2.0, autoPlay: false),
      items: imagesList
          .map(
            (item) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            margin: const EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
            ),
            elevation: 6.0,
            shadowColor: Colors.redAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              child: Stack(
                children: <Widget>[
                  Image.network(
                    item,
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),

                ],
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
