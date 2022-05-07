import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CancelGoogle extends StatelessWidget {
  const CancelGoogle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close),
            ),
            SvgPicture.asset(
              "assets/svg/google_logo.svg",
              width: 120,
            ),
            Opacity(
              opacity: 0.0,
              child: IconButton(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
