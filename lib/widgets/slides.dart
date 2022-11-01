import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/slide.dart';

class Slides extends StatelessWidget {
  const Slides({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.size.width,
      height: 250,
      child: CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1,
        height: 400.0,
        autoPlay: true,
        ),
      
      items: SlideController.slides.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 0.0),
              decoration: const BoxDecoration(
                color: Colors.amber
              ),
              child: Image.network(i,fit: BoxFit.cover,),
            );
          },
        );
      }).toList(),
    ),
    );
  }
}
