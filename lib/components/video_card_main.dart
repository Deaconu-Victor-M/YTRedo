import 'package:flutter/material.dart';
import 'package:yt_app/components/blur.dart';
import 'package:yt_app/constants/text_const.dart';

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
    return Container(
      decoration: BoxDecoration(
          color: const Color(0x42B9B9B9),
          borderRadius: BorderRadius.circular(21)),
      child: Column(
        children: [
          BlurBackImg(
            widget: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(17),
                child: Image.asset('assets/images/greenVector.png'),
              ),
            ),
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
                  children: [
                    BlurBack(
                      sigmaX: 1.5,
                      sigmaY: 1.5,
                      widget: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: _avatar(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
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
                                width: 90,
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
