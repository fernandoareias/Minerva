import 'package:flutter/material.dart';

Widget inputWidget({
  right: 30.0,
  left: 30.0,
  bottom: 0,
  label: "",
  icon: Icons.email,
  obscureText: false,
}) {
  final double _right = right;
  final double _left = left;
  final double _bottom = bottom;
  IconData _icon = icon;
  String _label = label;
  bool _obscureText = obscureText;
  return Padding(
    padding: EdgeInsets.only(
      right: _right,
      left: _left,
      bottom: _bottom,
    ),
    child: TextField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFF9F9FF),
        contentPadding: EdgeInsets.fromLTRB(
          20.0,
          15.0,
          20.0,
          15.0,
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.only(
            left: 5.0,
          ),
          child: Icon(_icon),
        ),
        hintText: _label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    ),
  );
}
