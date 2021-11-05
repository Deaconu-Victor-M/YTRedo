import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yt_app/components/blur.dart';
import 'package:yt_app/constants/text_const.dart';
import 'package:yt_app/screens/video_screen.dart';

class VideoCardMain extends StatelessWidget {
  const VideoCardMain({Key? key}) : super(key: key);
  Widget _avatar() {
    return const CircleAvatar(
      backgroundColor: Color(0xFFF0F0F0),
      //radius: 25,
      backgroundImage: AssetImage('assets/images/pfp.png'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: RawMaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21),
        ),
        elevation: 0,
        //fillColor: const Color(0x42B9B9B9),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const VideoPage()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0x42B9B9B9),
              borderRadius: BorderRadius.circular(21)),
          child: Column(
            children: [
              Stack(
                children: [
                  BlurBackImg(
                    widget: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(17),
                        child: Image.asset('assets/images/greenVector.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 35,
                    right: 35,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SvgPicture.asset(
                          'assets/svg/clock.svg',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 67,
                  decoration: BoxDecoration(
                    color: const Color(0x98000000),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BlurBack(
                          sigmaX: 1.5,
                          sigmaY: 1.5,
                          widget: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: _avatar(),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Lorem Ipsum',
                              style: titleStyle,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Lorem channel',
                                  style: secondtitleStyle,
                                ),
                                SizedBox(
                                  width: 130,
                                  //height: 15,
                                  child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: Text(
                                      ' • 420K views • 4 minutes ago',
                                      style: infoStyle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
