import 'package:flutter/material.dart';

class PlainPage extends StatefulWidget {
  const PlainPage({super.key});

  @override
  State<PlainPage> createState() => _PlainPageState();
}

class _PlainPageState extends State<PlainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Text("Hello"),
    );
  }
}
