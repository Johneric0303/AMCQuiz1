import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp( // #1 Ito yung main Material app na nagse-set ng buong app
        title: 'Week 1 - All 8 Widgets',
        theme: ThemeData(primarySwatch: Colors.teal),
        home: const HomeScreen(),
      );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold( // #2 Parang ito yung base layout ng page kasi dito napupunta yung app bar at body
        appBar: AppBar(title: const Text('All Widgets')), // #3 Ito yung top bar ng app kung saan nakalagay yung title
        body: Center( // #7 Ginamit yung Center para nasa gitna lang ng screen yung content
          child: Container( // #8 This acts like a box for the content, then dito rin nilagay yung spacing
            padding: const EdgeInsets.all(20),
            child: Column( // #6 Column yung gamit dito because pababa o vertical yung ayos ng laman
              children: [
                Row( // #5 Row naman yung gamit kapag gusto mong magkatabi o pahalang yung widgets
                  children: [
                    const Icon(Icons.star),
                    const Text('Flutter'), // #4 Ito mismo yung text na lumalabas sa loob ng Row
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
