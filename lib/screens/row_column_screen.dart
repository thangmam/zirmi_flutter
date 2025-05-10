import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowColumnScreen extends StatefulWidget {
  const RowColumnScreen({super.key});

  @override
  State<RowColumnScreen> createState() => _RowColumnScreenState();
}

class _RowColumnScreenState extends State<RowColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rows/Columns")),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 100, height: 100, color: Colors.red),
            Container(width: 100, height: 100, color: Colors.amber),
            Container(width: 100, height: 100, color: Colors.brown),
            // SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 100, height: 100, color: Colors.brown),
                Container(width: 100, height: 100, color: Colors.amber),
                Container(width: 100, height: 100, color: Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
