import 'package:flutter/material.dart';

class BuregerPage extends StatefulWidget {
  static const tag = "burger_page";
  const BuregerPage({Key? key}) : super(key: key);

  @override
  State<BuregerPage> createState() => _BuregerPageState();
}

class _BuregerPageState extends State<BuregerPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBar(),
    );
  }
}
