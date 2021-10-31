import 'dart:ui';

import 'package:flutter/material.dart';

class BlurBackImg extends StatelessWidget {
  const BlurBackImg({Key? key, required this.widget}) : super(key: key);

  final Widget widget;

  final double _sigmaX = 8.0; // from 0-10
  final double _sigmaY = 8.0; // from 0-10
  // final double _opacity = 0.0; // from 0-1.0
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 10,
            left: 10,
            right: -5,
            bottom: -4,
            child: widget,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(21),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
              child: widget,
            ),
          ),
          //widget,
        ],
      ),
    );
  }
}

class BlurBack extends StatelessWidget {
  const BlurBack(
      {Key? key,
      required this.widget,
      required this.sigmaX,
      required this.sigmaY})
      : super(key: key);

  final Widget widget;

  final double sigmaX; //= 4.0; // from 0-10
  final double sigmaY; //= 4.0; // from 0-10
  // final double _opacity = 0.0; // from 0-1.0
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          widget,
          ClipRRect(
            borderRadius: BorderRadius.circular(21),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
              child: widget,
            ),
          ),
          //widget,
        ],
      ),
    );
  }
}
