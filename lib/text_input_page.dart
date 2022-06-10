import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TextInputPage extends StatelessWidget {
  const TextInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Input sample'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            children: const <Widget>[
              TextInputFormWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class TextInputFormWidget extends HookWidget {
  const TextInputFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final text = useState('');

    return TextFormField(
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Enter your username',
      ),
      onChanged: (value) {
        text.value = value;
      },
    );
  }
}
