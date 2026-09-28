import 'package:flutter/material.dart';
import 'package:nottodo/pages/widgets/DayHeader.dart';
import 'package:nottodo/pages/widgets/DaySection.dart';
import 'package:nottodo/pages/widgets/DaySelector.dart';
import 'package:nottodo/pages/widgets/bottomNavBar.dart';
import 'package:nottodo/pages/widgets/topheader.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DayHeader(),
                    Dayselector(),
                    SizedBox(height: 20),
                    DaySection(
                      icon: Icon(Icons.access_time, size: 18),
                      title: 'ANYTIME',
                      count: 0,
                      color: const Color(0xFF1C1C1C),
                      decisions: const [],
                    ),

                    DaySection(
                      icon: Icon(Icons.wb_sunny_outlined, size: 18),
                      title: 'MORNING',
                      count: 2,
                      color: const Color(0xFFAAA66D),
                      decisions: const ['No Instagram', 'No second coffee'],
                    ),
                    DaySection(
                      icon: Icon(Icons.wb_twilight),
                      title: 'AFTERNOON',
                      count: 1,
                      color: const Color(0xFF624C62),
                      decisions: const [],
                    ),
                    DaySection(
                      icon: Icon(Icons.nightlight_outlined, size: 18),
                      title: 'EVENING',
                      count: 2,
                      color: const Color(0xFF40395A),
                      decisions: const [
                        'No work after 8 PM',
                        'No phone in bed',
                      ],
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
