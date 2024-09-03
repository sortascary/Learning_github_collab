import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:learnhookflutter/Widgets/Arithmatic.dart';
import 'package:learnhookflutter/Widgets/Shape_list.dart';
class Between extends HookWidget {
  const Between({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // Container(
            //   margin: EdgeInsets.all(10),
            //   child: ElevatedButton(
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(builder: (context) => BMICalculator()),
            //         );
            //       },
            //       child: Text('BMI')),
            // ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CardListView()),
                    );
                  },
                  child: Text('Bangun datar')),
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Arithmetic()),
                    );
                  },
                  child: Text('Arirmatika')),
            ),
          ],
        ),
      ),
    );
  }
}
