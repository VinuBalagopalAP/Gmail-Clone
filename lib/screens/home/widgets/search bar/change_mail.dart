import 'package:flutter/material.dart';
import 'package:gmail_clone/screens/home/widgets/search%20bar/widgets/cancel_google.dart';
import 'package:gmail_clone/screens/home/widgets/search%20bar/widgets/icon_mail_message.dart';
import 'package:gmail_clone/screens/home/widgets/search%20bar/widgets/manage_your_google_account.dart';
import 'package:gmail_clone/screens/home/widgets/search%20bar/widgets/pp_tos.dart';

class ChangeMail extends StatelessWidget {
  const ChangeMail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      insetPadding: const EdgeInsets.only(
        top: 70.0,
        left: 10.0,
        right: 10.0,
        bottom: 50.0,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.7,
        child: Column(
          children: [
            const CancelGoogle(),
            const IconMailMessage(),
            const SizedBox(height: 15.0),
            const ManageYourGoogleAccount(),
            const SizedBox(height: 15.0),
            Divider(color: Colors.grey[300]),
            SingleChildScrollView(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return const IconMailMessage();
                },
                itemCount: 5,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            const Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: PPToS(),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          ],
        ),
      ),
    );
  }
}
