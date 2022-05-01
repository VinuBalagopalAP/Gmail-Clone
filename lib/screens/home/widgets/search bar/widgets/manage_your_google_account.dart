import 'package:flutter/material.dart';

class ManageYourGoogleAccount extends StatelessWidget {
  const ManageYourGoogleAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        border: Border.all(color: Colors.black87),
      ),
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Manage your Google Account",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
