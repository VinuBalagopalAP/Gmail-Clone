import 'package:flutter/material.dart';
import 'package:gmail_clone/screens/home/meet/widgets/meet_options.dart';
import 'package:gmail_clone/screens/home/widgets/search%20bar/change_mail.dart';

class TabViewMeet extends StatelessWidget {
  const TabViewMeet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              const Text(
                "Meet",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
                      color: Colors.red,
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
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              MeetOptions(
                title: "New Meeting",
              ),
              MeetOptions(
                title: "Join with a code",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
