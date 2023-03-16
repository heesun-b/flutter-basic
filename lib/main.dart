import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Woman",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Kids", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Shoes", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Bag", style: TextStyle(fontWeight: FontWeight.bold))
                  ]),
            ),
            Expanded(child: Image.asset("assets/bag.jpeg", fit: BoxFit.cover)),
            SizedBox(height: 20,),
            Expanded(child: Image.asset("assets/cloth.jpeg", fit: BoxFit.cover))

          ],
        ),
      ),
    );
  }
}
