import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultTextfield extends StatelessWidget {
  String label;
  IconData icon;
  Function(String text) onChanged;

  DefaultTextfield({
    super.key,
    required this.label,
    required this.icon,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        onChanged(value);
      },
      decoration: InputDecoration(
        label: Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
        labelStyle: const TextStyle(color: Colors.white),
        suffixIcon: Icon(
          icon,
        ),
        suffixIconColor: Colors.white,
      ),
      style: const TextStyle(color: Colors.white),
    );
  }
}
