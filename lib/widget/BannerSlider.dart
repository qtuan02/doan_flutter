import 'package:banhangdienmay/api/fetchData.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyBannerSlider extends StatefulWidget {
  const MyBannerSlider({super.key});

  @override
  State<MyBannerSlider> createState() => _MyBannerSliderState();
}

class _MyBannerSliderState extends State<MyBannerSlider> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 190.0,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 2),
            autoPlayAnimationDuration: const Duration(milliseconds: 500),
            onPageChanged: (position, reason) {
              setState(() {
                currentIndex = position;
              });
            },
          ),
          items: Data().banners.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(i.img),
                          fit: BoxFit.fill
                      )
                  ),
                );
              },
            );
          }).toList(),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(Data().banners.length, currentIndex)
          ),
        ),
      ]
    );
  }
}


List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.black : Colors.black26,
          shape: BoxShape.circle),
    );
  });
}