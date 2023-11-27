// ignore_for_file: implementation_imports, depend_on_referenced_packages

import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:generators/src/model_visitor.dart';
import 'package:source_gen/source_gen.dart';
import 'package:annotations/annotations.dart';

class TextStyleWidgetGenerator
    extends GeneratorForAnnotation<TextStyleWidgetAnnotation> {
  @override
  String generateForAnnotatedElement(Element element,
      ConstantReader annotation,
      BuildStep buildStep,) {
    final visitor = ModelVisitor();
    element.visitChildren(visitor);
    final buffer = StringBuffer();

    for (int i = 0; i < visitor.fields.length; i++) {
      if (i != 0) buffer.writeln();
      // TextStyle name
      final name = visitor.fields.keys.elementAt(i);
      // TextStyle var
      final style = visitor.fields.keys.elementAt(i);
      buffer.writeln(_createTextWidget(name, style));
    }
    print(buffer.toString());
    return buffer.toString();
  }

  String _createTextWidget(name, style) {
        return 'AutoSizeText ${name}TextWidget(String text) => AutoSizeText(text, style: $style);';
  }
}
