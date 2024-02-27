// stress_details_page.dart
import 'package:flutter/material.dart';

class StressDetailsPage extends StatelessWidget {
  final String stressPost;

  StressDetailsPage({required this.stressPost});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stress Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(stressPost),
            // You can add more details or comments here
          ],
        ),
      ),
    );
  }
}
