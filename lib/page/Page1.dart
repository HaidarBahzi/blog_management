import 'package:blog_management/page/Page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 300),
              width: 370,
              child: ElevatedButton(onPressed: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Page2()),
      );
              }, child: const Text("Page 2")),
            )
          ],
        ),
      ),
    );
  }
}
