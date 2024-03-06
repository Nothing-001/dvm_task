import 'package:flutter/material.dart';
import 'data.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: DecoratedBox(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/back.png'),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'POKEDEX',
                    style: TextStyle(
                      fontFamily: 'Milord',
                      fontSize: 55,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(60,0,60,0),
                    child: SearchBar(
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.black),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      textStyle: const MaterialStatePropertyAll(
                        TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      side: const MaterialStatePropertyAll(
                        BorderSide(
                          width: 4,
                          color: Colors.white,
                        ),
                      ),
                      leading: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: 'Search',
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(60,30,60,30),
                        height: 170,
                        width: double.infinity,
                        color: const Color(0XFFF8EBAA),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(60,30,60,30),
                        height: 170,
                        width: double.infinity,
                        color: const Color(0XFFF8EBAA),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(60,30,60,30),
                        height: 170,
                        width: double.infinity,
                        color: const Color(0XFFF8EBAA),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
