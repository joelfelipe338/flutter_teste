import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Politics extends StatelessWidget {
  final bool withPositioned;
  const Politics({Key? key, this.withPositioned = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;

    return withPositioned ? Positioned(
        bottom: 20,

        child: SizedBox(
            width: sizeScreen.width,
            child:Center(
              child: InkWell(
                  onTap: () async {
                    if (await launchUrl(Uri.parse("https://www.google.com/"))) {
                      await launchUrl(
                        Uri.parse("https://www.google.com/"),
                      );
                    } else {
                      throw Exception('Could not launch https://www.google.com/');
                    }
                  },
                  child: const Text(
                    "Política de Privacidade",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            )))
    : InkWell(
        onTap: () async {
          if (await launchUrl(Uri.parse("https://www.google.com/"))) {
            await launchUrl(
              Uri.parse("https://www.google.com/"),
            );
          } else {
            throw Exception('Could not launch https://www.google.com/');
          }
        },
        child: const Text(
          "Política de Privacidade",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ));
  }
}
