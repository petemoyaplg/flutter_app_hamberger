import 'dart:ui';

import 'package:flutter/material.dart';

class HambergerList extends StatefulWidget {
  const HambergerList({Key? key}) : super(key: key);

  @override
  State<HambergerList> createState() => _HambergerListState();
}

class _HambergerListState extends State<HambergerList> {
  @override
  Widget build(BuildContext context) {
    int _items = 10;
    Widget baconImage = SizedBox(
      height: 120,
      child: Image.asset("assets/images/h3.png"),
    );
    Widget burgerImage = SizedBox(
      height: 120,
      child: Image.asset("assets/images/hamburger.png"),
    );

    return SliverToBoxAdapter(
      child: Container(
        height: 250,
        margin: const EdgeInsets.only(top: 10),
        child: ListView.builder(
            itemCount: _items,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              bool reverse = index.isEven;
              int burgerNumber = index + 1;
              return Stack(
                children: [
                  Container(
                    height: 250,
                    width: 200,
                    margin: EdgeInsets.only(
                        left: 10, right: _items - 1 == index ? 10 : 0),
                    child: GestureDetector(
                      onTap: () {
                        // ignore: todo
                        // TODO NAVIGATOR
                      },
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Text(
                                'Burger $burgerNumber',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  const Spacer(),
                                  const Text(
                                    "15,75 \$",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Spacer(),
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Card(
                                      color: Theme.of(context).canvasColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Icon(Icons.add),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        elevation: 3,
                        margin: const EdgeInsets.all(10),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(45),
                            topRight: Radius.circular(45),
                            topLeft: Radius.circular(45),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 60,
                      left: 55,
                      child: GestureDetector(
                        onTap: () {
                          // TODO
                        },
                        child: reverse ? burgerImage : baconImage,
                      ))
                ],
              );
            })),
      ),
    );
  }
}
