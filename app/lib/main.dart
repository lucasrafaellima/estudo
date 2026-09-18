import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonApp());
}

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Types',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Scaffold(body: ButtonTypesExample()),
    );
  }
}

class ButtonTypesExample extends StatelessWidget {
  const ButtonTypesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(4.0),
      child: Row(
        children: <Widget>[
          ButtonTypesGroup(enabled: true),
          ButtonTypesGroup(enabled: false),
          Spacer(),
        ],
      ),
    );
  }
}

class ButtonTypesGroup extends StatelessWidget {
  const ButtonTypesGroup({super.key, required this.enabled});

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = enabled ? () {} : null;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(onPressed: onPressed, child: const Text('Elevated')), //Botão elevado
          FilledButton(onPressed: onPressed, child: const Text('Filled')), //Botão com tonalidade
          FilledButton.tonal( 
            onPressed: onPressed, //Botão com outra tonalidade
            child: const Text('Filled Tonal'),
          ),
          OutlinedButton(onPressed: onPressed, child: const Text('Outlined')), //Botão com borda
          TextButton(onPressed: onPressed, child: const Text('Text')), //Apenas botão de texto
        ],
      ),
    );
  }
}

