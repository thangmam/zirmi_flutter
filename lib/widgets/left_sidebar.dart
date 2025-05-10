import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zirmi_flutter/screens/row_column_screen.dart';

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
          _buildSideMenuItem(
            label: "Rows/Columns",
            iconData: Icons.add_business,
            context: context,
            child: RowColumnScreen(),
          ),
          _buildSideMenuItem(
            label: "Add User",
            iconData: Icons.add,
            context: context,
          ),
          _buildSideMenuItem(
            label: "Update user",
            iconData: Icons.verified_user,
            context: context,
          ),
          _buildSideMenuItem(
            label: "Settings",
            iconData: Icons.settings,
            context: context,
          ),
        ],
      ),
    );
  }

  Widget _buildSideMenuItem({
    required String label,
    required IconData iconData,
    required BuildContext context,
    Widget? child,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap:
            child != null
                ? () {
                  Navigator.of(context).pop();
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (ctx) => child));
                }
                : null,
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
