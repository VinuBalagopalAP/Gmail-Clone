import 'package:flutter/material.dart';
import 'package:gmail_clone/screens/home/mail/tabview_mail.dart';
import 'package:gmail_clone/screens/home/meet/tabview_meet.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _ix = 0;

  final List<Widget> _pages = [
    const TabViewMail(),
    const TabViewMeet(),
  ];
  Widget _bodyWidet() {
    return _pages[_ix];
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidet(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _ix,
        onTap: (ix) {
          setState(() {
            _ix = ix;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              color: Colors.black87,
            ),
            label: 'Mail',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.videocam_outlined,
              color: Colors.black87,
            ),
            label: 'Meet',
          ),
        ],
      ),
    );
  }
}
