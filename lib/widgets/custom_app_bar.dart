import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          appBarbutton(onTap: () {}, image: 'menu'),
          appBarbutton(onTap: () {}, image: 'search'),
        ],
      ),
    );
  }

  InkWell appBarbutton({required Function() onTap, required String image}) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(
        'assets/icon/$image.svg',
        width: 30,
      ),
    );
  }
}
