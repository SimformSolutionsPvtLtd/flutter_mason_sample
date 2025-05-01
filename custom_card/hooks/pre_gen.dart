import 'package:mason/mason.dart';

import 'dart:io';

Future<void> run(HookContext context) async {
  final widgetName = context.vars['widget_name'] as String;

  if (widgetName.trim().isEmpty) {
    context.logger.err('Error: widget_name cannot be empty!');
    exitCode = 1;
    return;
  }

  context.logger.info('Pre-generation check passed for: $widgetName');
}
