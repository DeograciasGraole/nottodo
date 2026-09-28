import 'package:flutter/material.dart';
import 'package:nottodo/pages/widgets/DecisionCard.dart';
import 'package:nottodo/pages/widgets/addDecisionField.dart';

class DaySection extends StatelessWidget {
  final String title;
  final int count;
  final Color color;
  final Icon icon;
  final List<String> decisions;
  const DaySection({
    super.key,
    required this.title,
    required this.count,
    required this.color,
    required this.icon,
    required this.decisions,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.fromLTRB(20, 12, 20, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 210,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(22),
            ),
            child: Row(
              children: [
                icon,
                SizedBox(width: 8),
                Text(
                  '$title($count)',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.keyboard_arrow_down, size: 20),
              ],
            ),
          ),
          SizedBox(height: 12),
          ...decisions.map((decision) => DecisionCard(text: decision)),
          SizedBox(height: 8),
          decisions.isEmpty ? AddDecisionField() : SizedBox(),
        ],
      ),
    );
  }
}
