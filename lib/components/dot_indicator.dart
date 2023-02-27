import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({Key? key, this.isActive = false
  }) : super(key: key);

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(12))
      ), duration: Duration(milliseconds: 300),
    );

  }
}
