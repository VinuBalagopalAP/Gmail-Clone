import 'package:flutter/material.dart';

class IconMailMessage extends StatelessWidget {
  const IconMailMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 8.0,
      ),
      child: Row(
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Name',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 5.0),
                EmailNumber(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EmailNumber extends StatelessWidget {
  const EmailNumber({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Email',
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
        Text(
          '10',
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
