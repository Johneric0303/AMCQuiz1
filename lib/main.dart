import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp( // #1 Dito nagsisimula yung whole Material app bago lumabas yung UI sa screen
        debugShowCheckedModeBanner: false,
        home: Scaffold( // #2 Parang ito yung pinaka-base layout ng page since dito napupunta yung app bar at body
          backgroundColor: const Color(0xFFF3F7FB),
          appBar: AppBar( // #3 Ito yung top bar ng app, andito usually nakalagay yung title
            backgroundColor: const Color(0xFF0F4C81),
            elevation: 0,
            title: const Text('Flutter'), // #4 Ito mismo yung text na nagiging title sa app bar
            centerTitle: true,
          ),
          body: Center( // #7 i think dito ginamit yung Center para siguradong nasa gitna ng screen yung content
            child: Column( // #6 Column yung gamit dito because pababa o vertical yung ayos ng laman
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Simple Flutter Layout',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF16324F),
                  ),
                ),
                const SizedBox(height: 18),
                Row( // #5 i think yung row ginagamit kapag gusto mong magkatabi o pahalang yung widgets
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container( // #8 This acts like a box for the content, then dito rin nilagay yung style at design
                      width: 220,
                      height: 160,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFF2D89EF), Color(0xFF155E9A)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x33000000),
                            blurRadius: 18,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: const Text(
                        'Hello, Flutter!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
