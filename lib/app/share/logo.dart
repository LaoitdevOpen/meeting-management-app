import 'package:flutter/material.dart';
import 'package:meeting_app/gen/assets.gen.dart';

// Big LOGO at the left side

class LeftLogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.image.logoITDEV2.path,
      width: 200,
      height: 200,
      fit: BoxFit.scaleDown,
    );
  }
}

// Small  LOGO on the top

class SmallLogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.image.logoITDEV2.path,
      width: 100,
      height: 100,
      fit: BoxFit.scaleDown,
    );
  }
}

// Big LOGO on the top

class BigLogoWidget extends StatelessWidget {
  final double logoSize;
  final double maxLogoSize;

  const BigLogoWidget({
    Key? key,
    required this.logoSize,
    required this.maxLogoSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Image.asset(
        Assets.image.iTDEVlogo.path,
        width: logoSize,
        height: logoSize,
      ),
    );
  }
}
