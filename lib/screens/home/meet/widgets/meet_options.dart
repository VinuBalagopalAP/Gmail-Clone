import 'package:flutter/material.dart';

class MeetOptions extends StatelessWidget {
  const MeetOptions({
    Key? key,
    required this.title,
    this.colors,
  }) : super(key: key);

  final String title;
  final Color? colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.04,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.blue,
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
