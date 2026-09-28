import 'package:flutter/material.dart';

class Dayselector extends StatelessWidget {
  const Dayselector({super.key});

  @override
  Widget build(BuildContext context) {
    final dates = [21, 22, 23, 24, 25, 26, 27];
    final letters = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
    return SizedBox(
      // width: double.infinity,
      height: 82,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        itemCount: dates.length,
        itemBuilder: (context, index) {
          final selected = dates[index] == 22;
          return Container(
            width: 64,
            margin: EdgeInsets.symmetric(horizontal: 3),
            decoration: BoxDecoration(
              color: selected ? const Color(0xFF202020) : Colors.transparent,
              borderRadius: BorderRadius.circular(22),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  letters[index],
                  style: TextStyle(
                    fontSize: 13,
                    color: selected ? Colors.white : Colors.white54,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '${dates[index]}',
                  style: TextStyle(
                    color: selected ? Colors.white : Colors.white54,
                  ),
                ),
                if (selected) ...[
                  SizedBox(height: 5),
                  Container(
                    width: 24,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}
