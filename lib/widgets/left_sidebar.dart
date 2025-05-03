import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LeftSidebar extends StatelessWidget {
  const LeftSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 60),
          _buildSideMenuItem(label: "Add User", iconData: Icons.add),
          _buildSideMenuItem(
            label: "Update user",
            iconData: Icons.verified_user,
          ),
          _buildSideMenuItem(label: "Settings", iconData: Icons.settings),
        ],
      ),
    );
  }

  Widget _buildSideMenuItem({
    required String label,
    required IconData iconData,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [Icon(iconData), SizedBox(width: 10), Text(label)],
          ),
        ),
      ),
    );
  }
}
