import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MeetFeatures extends StatefulWidget {
  const MeetFeatures({
    Key? key,
  }) : super(key: key);

  @override
  State<MeetFeatures> createState() => _MeetFeaturesState();
}

class _MeetFeaturesState extends State<MeetFeatures> {
  // final meetFeaturesImages = [
  //   "assets/svg/s1 .svg",
  //   "assets/svg/s2.svg",
  //   "assets/svg/s3.svg",
  //   "assets/svg/s4.svg",
  // ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // CarouselSlider.builder(
          //   itemCount: meetFeaturesImages.length,
          //   itemBuilder: (context, index, realIndex) {
          //     final meetFeaturesImage = meetFeaturesImages[index];
          //     return buildImage(meetFeaturesImages, index);
          //   },
          //   options: CarouselOptions(),
          // ),
          Center(
            child: SvgPicture.asset(
              "assets/svg/s1.svg",
              width: 200,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Get a link you can\nshare",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Tap New meeting to get a link you can send to people you want to\nmeet with",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
