import 'package:flutter/material.dart';
import 'package:zirmi_flutter/inline_span_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Zirmi Flutter")),
        body: Container(
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0.5),
          ),
          child: Row(
            children: [
              // Container(width: 150, height: 150, color: Colors.red),
              Image.asset("assets/arsilogo.png"),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Arsi Consultancy",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                        ),
                      ),
                      Text("T-14 Bungkawn, Dam Veng,"),
                      Text("Aizawl, Mizoram"),
                      Spacer(),
                      Text("contact@arsi.in"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
