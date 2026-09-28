import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      decoration: BoxDecoration(color: Color(0xFF171717)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.check_box_outlined),
          Icon(Icons.calendar_today_outlined, color: Colors.white),
          Icon(Icons.circle_outlined, color: Colors.white54),
          Icon(Icons.bar_chart_outlined, color: Colors.white54),
          Icon(Icons.person_outline, color: Colors.white54),
        ],
      ),
    );
  }
}
