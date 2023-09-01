import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer(
      {super.key,
      this.ccolor = false,
      this.creduis = false,
      this.chighte = false,
      this.cwhith = false});

  final bool ccolor;
  final bool creduis;
  final bool chighte;
  final bool cwhith;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: chighte ? 300 : 150,
      width: cwhith ? 300 : 200,
      decoration: BoxDecoration(
        color: ccolor ? Colors.tealAccent : Colors.purpleAccent,
        borderRadius:
            creduis ? BorderRadius.circular(50) : BorderRadius.circular(20),
      ),
    );
  }
}
