library generators;

import 'package:build/build.dart';
import 'package:generators/src/text_style_widget_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder generateTextStyleWidgets(BuilderOptions options) =>
    SharedPartBuilder([TextStyleWidgetGenerator()], 'text_widget');
