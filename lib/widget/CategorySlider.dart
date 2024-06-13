import 'package:banhangdienmay/api/fetchData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCategorySlider extends StatefulWidget {
  const MyCategorySlider({super.key});

  @override
  State<MyCategorySlider> createState() => _MyCategorySliderState();
}

class _MyCategorySliderState extends State<MyCategorySlider> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            for(var i=0; i<Data().categories.length; i+=2)
              Container(
                width: 75,
                height: 180,
                margin: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(Data().categories[i].img),
                                fit: BoxFit.cover,
                              )
                          ),
                        ),
                        Text(Data().categories[i].name, style: const TextStyle(fontSize: 12), textAlign: TextAlign.center,)
                      ],
                    ),
                    if (i + 1 < Data().categories.length)
                      Container(
                        margin: const EdgeInsets.only(top: 16),
                        child: Column(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(Data().categories[i+1].img),
                                    fit: BoxFit.cover,
                                  )
                              ),
                            ),
                            Text(Data().categories[i+1].name, style: const TextStyle(fontSize: 12), textAlign: TextAlign.center,)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}