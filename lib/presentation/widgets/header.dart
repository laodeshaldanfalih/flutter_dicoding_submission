import 'package:flutter/material.dart';
import '../../common/constants.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black26, Colors.white],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: kHeading6,
        ),
      ),
    );
  }
}
