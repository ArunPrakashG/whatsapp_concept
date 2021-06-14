import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const WhatsappConcept());
}

class WhatsappConcept extends StatelessWidget {
  const WhatsappConcept({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Concept',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

