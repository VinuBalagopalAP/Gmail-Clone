import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChangeMail extends StatelessWidget {
  const ChangeMail({
    Key? key,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(8.0),
      title: Column(
        children: [
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
                color: Colors.black,
                width: 75,
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
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: Colors.amber,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://pbs.twimg.com/media/Es6_LxfXIAAwAA_?format=jpg&name=large"),
                  ),
                ),
                height: 40,
                width: 40,
              ),
              const SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Name',
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '10',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
