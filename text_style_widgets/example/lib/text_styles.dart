import 'package:annotations/annotations.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

part "text_styles.g.dart";

@textStyleWidgetGenerator
TextStyle defaultTextStyle = const TextStyle(
  fontSize: 16.0,
  color: Colors.black,
);
TextStyle headingTextStyle = const TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
  color: Colors.blue,
);
TextStyle subheadingTextStyle = const TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w600,
  color: Colors.grey,
);
TextStyle errorTextStyle = const TextStyle(
  fontSize: 14.0,
  color: Colors.red,
  fontStyle: FontStyle.italic,
);
TextStyle highlightedTextStyle = const TextStyle(
  fontSize: 18.0,
  color: Colors.green,
  backgroundColor: Colors.yellow,
);
