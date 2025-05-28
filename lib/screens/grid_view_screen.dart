import 'dart:developer' as dev;
import 'dart:math';

import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  final random = Random(2000);
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    dev.log("Screen width -> ${MediaQuery.of(context).size.width}");
    return Scaffold(
      appBar: AppBar(title: Text("GridView Widget")),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent:
              100, // <= 200, numberOfColumns = screen width/ maxCrossAxisExtent
          childAspectRatio: 4 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 30,
        ),
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 3,
        //   crossAxisSpacing: 10, // column spacing
        //   mainAxisSpacing: 10, // row spacing
        //   // mainAxisExtent: 90, // height
        //   // childAspectRatio: 4/3,
        // ),
        itemBuilder: (context, index) {
          dev.log("itemBuilder $index", name: 'grid-view-screen');
          return Container(
            color: Color.fromARGB(
              255,
              random.nextInt(255),
              random.nextInt(255),
              random.nextInt(255),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }

  Widget _buildGridViewWidget() {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10, // column spacing
        mainAxisSpacing: 10, // row spacing
        // mainAxisExtent: 90, // height
        // childAspectRatio: 4/3,
      ),
      children: [
        Container(color: Colors.red),
        Container(color: Colors.yellow),
        Container(color: Colors.indigo),
        Container(color: Colors.black),
        Container(color: Colors.red),
        Container(color: Colors.yellow),
        Container(color: Colors.indigo),
        Container(color: Colors.black),
        Container(color: Colors.yellow),
        Container(color: Colors.indigo),
        Container(color: Colors.black),
        Container(color: Colors.indigo),
        Container(color: Colors.black),
        Container(color: Colors.yellow),
        Container(color: Colors.indigo),
        Container(color: Colors.black),
        Container(color: Colors.red),
        Container(color: Colors.yellow),
        Container(color: Colors.indigo),
        Container(color: Colors.black),
        Container(color: Colors.yellow),
        Container(color: Colors.indigo),
        Container(color: Colors.black),
        Container(color: Colors.red),
        Container(color: Colors.yellow),
        Container(color: Colors.indigo),
        Container(color: Colors.black),
        Container(color: Colors.yellow),
        Container(color: Colors.indigo),
        Container(color: Colors.black),
        Container(color: Colors.red),
        Container(color: Colors.yellow),
        Container(color: Colors.indigo),
        Container(color: Colors.black),
        Container(color: Colors.yellow),
      ],
    );
  }
}
