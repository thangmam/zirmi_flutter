import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppTextFormfield extends StatefulWidget {
  final String label;
  final bool isPassword;
  final TextEditingController controller;
  const AppTextFormfield({
    super.key,
    required this.label,
    this.isPassword = false,
    required this.controller,
  });

  @override
  State<AppTextFormfield> createState() => _AppTextFormfieldState();
}

class _AppTextFormfieldState extends State<AppTextFormfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        label: Text(widget.label),
      ),
      obscureText: widget.isPassword,
    );
  }
}
