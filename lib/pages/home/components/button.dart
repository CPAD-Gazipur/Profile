import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class Appbutton extends StatelessWidget {
  //Appbutton({Key? key}) : super(key: key);

  List socialButtons = [
    {
      'name': 'Github',
      'link': 'https://github.com/zobayer11',
      'image': 'assets/github.png',
    },
    {
      'name': 'Facebook',
      'link': 'https://www.facebook.com/md.naimul.rahman.durjoy1',
      'image': 'assets/facebook.png',
    },
    {
      'name': 'LinkdIn',
      'link': 'https://www.linkedin.com/in/zobayer-hasan-nayem-99bb281b8/',
      'image': 'assets/linkdin.png',
    },
    {
      'name': 'Twitter',
      'link': 'https://www.twitter.com/zobayer_hasan1',
      'image': 'assets/twitter.png',
    },
    {
      'name': 'Youtube',
      'link': 'https://www.youtube.com/channel/UCFl_hZk-AVRUdWg8-JVWpsQ',
      'image': 'assets/youtube.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Wrap(
          children: [
            for (int i = 0; i < socialButtons.length; i++)
              Container(
                width: 170,
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  child: Row(
                    children: [
                      Image.asset(
                        socialButtons[i]['image'],
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        socialButtons[i]['name'],
                        style: TextStyle(
                            // fontFamily: 'Inconsolata',
                            ),
                      ),
                    ],
                  ),
                  onPressed: () async {
                    String url = socialButtons[i]['link'];
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black87,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      textStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
