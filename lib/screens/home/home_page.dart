import 'package:flutter/material.dart';
import 'package:gmail_clone/screens/home/widgets/mail.dart';
import 'package:gmail_clone/screens/home/widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const TopSearchBar(),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Primary",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListView.separated(
                  itemBuilder: (context, index) {
                    return const Mail();
                  },
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return const Divider(
                      height: 10,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
