import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlainPage extends StatefulWidget {
  const PlainPage({super.key});

  @override
  State<PlainPage> createState() => _PlainPageState();
}

class _PlainPageState extends State<PlainPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Plains :3"),
        ],
      ),
    );
  }
}
