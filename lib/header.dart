import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio_x/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nameWidget = "Sampath\nNarayanan."
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 10 : 20)
        .bold
        .make()
        .shimmer(primaryColor: Coolors.accentColor);
    return SafeArea(
      child: VxBox(
              child: VStack([
        ZStack(
          [
            PictureWidget(),
            Row(
              children: [
                VStack([
                  if (context.isMobile) 50.heightBox else 10.heightBox,
                  CustomAppBar().shimmer(primaryColor: Coolors.accentColor),
                  30.heightBox,
                  nameWidget,
                  20.heightBox,
                  VxBox()
                      .color(Coolors.accentColor)
                      .size(60, 10)
                      .make()
                      .px4()
                      .shimmer(primaryColor: Coolors.accentColor),
                  30.heightBox,
                  SocialAccounts(),
                ]).pSymmetric(
                  h: context.isMobile ? context.percentWidth * 4 : context.percentWidth * 10,
                  v: 32,
                ),
              ],
            ).w(context.screenWidth)
          ],
        )
      ]))
          .size(context.screenWidth, context.percentHeight * 60)
          .color(Coolors.secondaryColor)
          .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          "Programmer by day, Programmer by night.\nFlutter, Dart, Android, ML & Python."
              .text
              .white
              .xl3
              .maxLines(5)
              .make()
              .w(context.screenWidth),
          20.heightBox,
        ].vStack(),
      ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolors.accentColor,
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Transform(
        alignment: Alignment.center,
        origin: context.isMobile ? Offset(context.percentWidth * 22, 0) :  Offset(context.percentWidth * 25, 0),
        transform: Matrix4.rotationY(pi),
        child: Image.asset(
          "assets/profile.png",
          fit: BoxFit.cover,
          height: context.percentHeight * 60,
        ),
      );

  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.linkedin_square,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.linkedin.com/in/narayanan-sampath/");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.github,
        color: Colors.white,
      ).mdClick(() {
        launch("https://github.com/narayanansampath");
      }).make()
    ].hStack();
  }
}
