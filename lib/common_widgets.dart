import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText(
      {super.key,
      this.textName,
      this.fsize = false,
      this.fcolor = false,
      this.fbold = false});

  final textName;
  final bool fsize;
  final bool fcolor;
  final bool fbold;

  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      style: TextStyle(
          fontSize: fsize ? 30 : 10,
          color: fcolor ? Colors.orange : Colors.black,
          fontWeight: fbold ? FontWeight.w900 : FontWeight.w300),
    );
  }
}
