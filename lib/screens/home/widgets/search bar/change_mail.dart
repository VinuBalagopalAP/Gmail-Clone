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
            const SizedBox(height: 10.0),
            const ManageYourGoogleAccount(),
            const SizedBox(height: 10.0),
            Divider(color: Colors.grey[300]),
            Expanded(
              flex: 14,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return const IconMailMessage();
                },
                itemCount: 8,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
              ),
            ),
            const SizedBox(height: 10.0),
            AnotherMailOption(
              ontap: () {},
              icon: const Icon(Icons.person_add_alt_outlined),
              title: "Add another account",
            ),
            AnotherMailOption(
              ontap: () {},
              icon: const Icon(Icons.manage_accounts_outlined),
              title: "Manage accounts on this device",
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

class AnotherMailOption extends StatelessWidget {
  final Icon icon;
  final VoidCallback ontap;
  final String title;

  const AnotherMailOption({
    Key? key,
    required this.icon,
    required this.title,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: icon,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
