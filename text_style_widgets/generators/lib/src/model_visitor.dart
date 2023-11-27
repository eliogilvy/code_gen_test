// ignore_for_file: depend_on_referenced_packages

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';

class ModelVisitor extends SimpleElementVisitor<void> {
  late String className;
  Map<String, dynamic> fields = {};

  /// Visits each textStyle element and adds it to an AutoSize text widget
  @override
  void visitFieldElement(FieldElement element) {
    fields[element.name] = element.type.toString().replaceAll('*', '');
  }
}