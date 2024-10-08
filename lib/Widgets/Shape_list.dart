import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:learnhookflutter/Widgets/Calculations.dart';
import 'package:learnhookflutter/Widgets/Card.dart';

class CardListView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {'shapename': 'Circle', 'image': 'lib/images/Circle.png'},
      {'shapename': 'Rectangle', 'image': 'lib/images/Rectangles.png'},
      {'shapename': 'Triangle', 'image': 'lib/images/Triangle.png'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Bangun datar"),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: MyCard(
                shapename: items[index]['shapename']!,
                image: items[index]['image']!,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content:
                            Text('clicked on ${items[index]['shapename']}')),
                  );
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Caculate(
                                name: items[index]['shapename']!,
                                calculator: ShapeCalculator(),
                              )));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
