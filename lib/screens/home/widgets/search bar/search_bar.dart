import 'package:flutter/material.dart';
import 'package:gmail_clone/screens/home/widgets/search%20bar/change_mail.dart';

class TopSearchBar extends StatelessWidget {
  const TopSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          color: Colors.grey[300],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            Flexible(
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: 'Search in emails',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.black),
                ),
                style: const TextStyle(color: Colors.black),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const ChangeMail();
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Colors.amber,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://pbs.twimg.com/media/Es6_LxfXIAAwAA_?format=jpg&name=large"),
                    ),
                  ),
                  height: 35,
                  width: 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
