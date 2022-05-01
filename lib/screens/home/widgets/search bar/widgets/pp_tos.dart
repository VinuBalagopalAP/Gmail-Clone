import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PPToS extends StatelessWidget {
  const PPToS({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Privacy Policy',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        SvgPicture.asset(
          "assets/svg/dot.svg",
          width: 5,
          color: Colors.grey,
        ),
        const Text(
          'Terms of service',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
