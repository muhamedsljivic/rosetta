import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ColumnFooter extends StatelessWidget {
  final double widthLocation;
  final bool spaceText;
  final double widthImages;
  const ColumnFooter(
      {super.key,
      required this.widthLocation,
      required this.spaceText,
      required this.widthImages});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_pin,
              size: 20,
            ),
            const SizedBox(
              width: 11.25,
            ),
            spaceText
                ? const SelectableText(
                    "Put Mladih Muslimana 2,\nCity Gardens Residence,\n71 000 Sarajevo, Bosnia and Herzegovina 14425 Falconhead Blvd, Bee Cave,\nTX 78738, United States",
                    style: TextStyle(fontSize: 10))
                : const SelectableText(
                    "Put Mladih Muslimana 2, City Gardens Residence, 71 000 Sarajevo, Bosnia and Herzegovina 14425 Falconhead Blvd, Bee Cave, TX 78738, United States",
                    style: TextStyle(fontSize: 10),
                  ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.mail,
              size: 20,
            ),
            SizedBox(
              width: 11.25,
            ),
            SelectableText(
              "hello@tech387.com                                      ",
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                GestureDetector(
                  key: const Key('fbKeyMala'),
                  onTap: () {
                    launchUrl(Uri.parse('https://www.facebook.com/tech387'));
                  },
                  child: Image.asset(
                    "assets/images/facebook.png",
                    width: 37.5,
                    height: 37.37,
                  ),
                ),
                const SizedBox(
                  width: 18.5,
                ),
                GestureDetector(
                  key: const Key('instagramkeyMala'),
                  onTap: () {
                    launch('https://www.instagram.com/tech387/?hl=en');
                  },
                  child: Image.asset(
                    "assets/images/instagram.png",
                    width: 37.5,
                    height: 37.37,
                  ),
                ),
                const SizedBox(
                  width: 18.5,
                ),
                GestureDetector(
                  key: const Key('ldkeymala'),
                  onTap: () {
                    launch(
                        'https://www.linkedin.com/company/tech-387/mycompany/');
                  },
                  child: Image.asset(
                    "assets/images/linkedin.png",
                    width: 37.5,
                    height: 37.37,
                  ),
                ),
                const SizedBox(
                  width: 18.5,
                ),
                GestureDetector(
                  key: const Key('techkeymala'),
                  onTap: () {
                    launch('https://www.tech387.com/');
                  },
                  child: Image.asset(
                    "assets/images/tech387.png",
                    width: 37.5,
                    height: 37.37,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Privacy",
                style: TextStyle(
                    fontSize: 10, color: Color.fromRGBO(120, 120, 120, 1))),
            SizedBox(
              width: 45,
            ),
            Text(
              "Terms",
              style: TextStyle(
                  fontSize: 10, color: Color.fromRGBO(120, 120, 120, 1)),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
