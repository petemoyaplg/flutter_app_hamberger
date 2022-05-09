import 'package:flutter/material.dart';
import 'package:flutter_app_hamberger/screens/categories.dart';
import 'package:flutter_app_hamberger/screens/hambergerList.dart';
import 'package:flutter_app_hamberger/screens/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        cardColor: Colors.teal,
        appBarTheme: const AppBarTheme(
          color: Colors.teal,
          centerTitle: true,
        ),
        bottomAppBarColor: Colors.teal,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.teal,
        ),
      ),
      home: const Hamberger(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hamberger extends StatefulWidget {
  const Hamberger({Key? key}) : super(key: key);

  @override
  _HambergerState createState() => _HambergerState();
}

class _HambergerState extends State<Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: const Text('Deliver Me'),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
              )
            ],
          ),
          const Header(),
          const Categories(),
          const HambergerList(),
          const HambergerList(),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.home),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Row(
            children: [
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_alert),
                color: Colors.white,
              ),
              const Spacer(),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.turned_in),
                color: Colors.white,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
