import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: CatsLogin()));
}

class CatsLogin extends StatelessWidget {
  const CatsLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Start your work here');
  }
}
