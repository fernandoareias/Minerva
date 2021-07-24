import 'package:flutter/material.dart';

Widget button({
  context,
  page,
  style,
  right: 30.0,
  left: 30.0,
  label: "",
}) {
  TextStyle _style = style;
  BuildContext _context = context;
  final double _right = right;
  final double _left = left;
  String _label = label;
  var _page = page;

  return Padding(
    padding: EdgeInsets.only(
      right: _right,
      left: _left,
    ),
    child: Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff207E50),
      child: MaterialButton(
        minWidth: MediaQuery.of(_context).size.width,
        padding: EdgeInsets.fromLTRB(
          20.0,
          15.0,
          20.0,
          15.0,
        ),
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => _page,
            ),
            (Route<dynamic> route) => false,
          );
        },
        child: Text(
          _label,
          textAlign: TextAlign.center,
          style: _style.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
