import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';

class DailyAndWeaklyButton extends StatelessWidget {
  const DailyAndWeaklyButton({
    super.key,
    this.isActive = false,
    required this.title,
  });


  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: 97,
      height: 42,
      decoration: BoxDecoration(
          color: isActive? Colors.white24 : Colors.black26,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(100)),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: circular,
          ),
        ),
      ),
    );
  }
}
