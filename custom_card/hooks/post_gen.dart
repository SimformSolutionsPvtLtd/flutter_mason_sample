import 'package:mason/mason.dart';

import 'dart:io';

Future<void> run(HookContext context) async {
  final dir = Directory.current.path;
  final outputFile = File('$dir/lib/view/my_widget.dart'); // Adjust path based on your template

  if (!outputFile.existsSync()) {
    context.logger.warn('File not found. Skipping formatting.');
    return;
  }

  context.logger.info('Formatting Dart files in: $dir');

  try {
    final result = await Process.run('dart', ['format', dir]);

    if (result.exitCode == 0) {
      context.logger.success('Successfully formatted generated code');
    } else {
      context.logger.err('Failed to format code:\n${result.stderr}');
    }
  } catch (e) {
    context.logger.err('⚠ Error while running dart format: $e');
  }
}
