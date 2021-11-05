import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yt_app/components/blur.dart';
import 'package:yt_app/components/video_card_main.dart';
import 'package:yt_app/constants/widgets_const.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  Widget _serchBox() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.50,
      height: 41,
      decoration: BoxDecoration(
        color: const Color(0x77000000),
        borderRadius: BorderRadius.circular(26),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.35,
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search a video...',
                  hintStyle: TextStyle(
                    color: Colors.white60,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            SvgPicture.asset('assets/svg/search.svg'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: const Color(0xFFF0F0F0),
              expandedHeight: 80.0,
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const BlurBack(
                      sigmaX: 4,
                      sigmaY: 4,
                      widget: BackButtonA(),
                    ),
                    _serchBox(),
                    const BlurBack(
                      sigmaX: 4,
                      sigmaY: 4,
                      widget: SizedBox(
                        height: 65,
                        width: 65,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Avatar(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Text('ok'),

                  // Switch(
                  //   value: _light,
                  //   onChanged: (toggle) {
                  //     setState(() {
                  //       _light = toggle;
                  //     });
                  //   },
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
