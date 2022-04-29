import 'package:flutter/material.dart';

class Mail extends StatefulWidget {
  const Mail({
    Key? key,
  }) : super(key: key);

  @override
  State<Mail> createState() => _MailState();
}

class _MailState extends State<Mail> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "S",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Mail Subject",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "From Where",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: const Text(
                    "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  now.hour.toString() + ":" + now.minute.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: IconButton(
                    icon: toggle
                        ? const Icon(Icons.star_border_outlined)
                        : const Icon(Icons.star),
                    onPressed: () {
                      setState(() {
                        toggle = !toggle;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
