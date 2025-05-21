import 'package:flutter/material.dart';

class StackWidgetScreen extends StatelessWidget {
  const StackWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(border: Border.all()),
        margin: EdgeInsets.all(10),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              top: 20,
              child: Container(width: 100, height: 100, color: Colors.red),
            ),
            Positioned(
              top: 50,
              left: 20,
              child: Container(width: 100, height: 100, color: Colors.amber),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Center(
                child: Container(width: 100, height: 100, color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
