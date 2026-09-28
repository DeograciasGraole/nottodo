import 'package:flutter/material.dart';

class DayHeader extends StatelessWidget {
  const DayHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 4),
      child: Row(
        children: [
          Text(
            "Tuesday",
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.w400,
              fontFamily: 'serif',
            ),
          ),
          Spacer(),
          Row(
            children: [
              Text(
                'SEP 2026',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 6),
              Icon(Icons.chevron_right, color: Colors.white70),
            ],
          ),
        ],
      ),
    );
  }
}
