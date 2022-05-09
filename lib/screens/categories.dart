import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentSelectedItem = 0;
  @override
  Widget build(BuildContext context) {
    int items = 10;

    return SliverToBoxAdapter(
      child: Container(
        height: 90,
        margin: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) => Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    margin:
                        EdgeInsets.only(left: index == 0 ? 15 : 0, right: 15),
                    child: GestureDetector(
                      onTap: () {
                        // ignore: avoid_print
                        print(currentSelectedItem.toString() +
                            '  ' +
                            index.toString());
                        setState(() {
                          currentSelectedItem = index;
                        });
                        // ignore: avoid_print
                        print(currentSelectedItem.toString() +
                            '  ' +
                            index.toString());
                      },
                      child: Card(
                        color: index == currentSelectedItem
                            ? Colors.black.withOpacity(0.7)
                            : Colors.white,
                        child: Icon(
                          Icons.fastfood,
                          color: index == currentSelectedItem
                              ? Colors.white
                              : Colors.black.withOpacity(0.7),
                        ),
                        elevation: 3,
                        margin: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  margin: EdgeInsets.only(left: index == 0 ? 15 : 0, right: 15),
                  width: 90,
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Spacer(),
                      const Text("Burger"),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
