import 'package:flutter/widgets.dart';

class DashboardTab extends StatefulWidget {
  const DashboardTab({super.key});

  @override
  State<DashboardTab> createState() => _DashboardTabState();
}

class _DashboardTabState extends State<DashboardTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Dasboard 1"),
        Text("Dasboard 1"),
        Text("Dasboard 1"),
        Text("Dasboard 1"),
        Text("Dasboard 2"),
      ],
    );
  }
}
