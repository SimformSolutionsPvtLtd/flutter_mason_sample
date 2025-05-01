import 'package:flutter/material.dart';

class {{widget_name.pascalCase()}} extends StatelessWidget {
const {{widget_name.pascalCase()}}({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
return Card(
margin: const EdgeInsets.all(16),
child: Padding(
padding: const EdgeInsets.all(16),
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
Text(
'{{title}}',
style: Theme.of(context).textTheme.headlineSmall,
),
const SizedBox(height: 8),
Text(
'{{subtitle}}',
style: Theme.of(context).textTheme.bodyMedium,
),
],
),
),
);
}
}
