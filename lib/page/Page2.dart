import 'package:blog_management/page/Page3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 300),
              width: 370,
              child: ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const Page3()));
              }, child: Text("Page 3")),
            ),
          ],
        ),

      ),
    );
  }
}
