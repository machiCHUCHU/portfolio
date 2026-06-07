import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Tools extends StatelessWidget {
  const Tools({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: const Text(
            "Tools & Apps",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF312E81),
            ),
          ),
        ),
        CarouselSlider(
          items: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(8)),
                child: Image.asset("images/web-dev.jpg"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(8)),
                child: Image.asset("images/web-dev.jpg"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(8)),
                child: Image.asset("images/web-dev.jpg"),
              ),
            ),
          ],
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 1,
            height: 100,
            viewportFraction: 0.33,
          ),
        ),
      ],
    );
  }
}
