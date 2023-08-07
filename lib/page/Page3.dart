import 'package:blog_management/page/Page1.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 3"),
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
                MaterialPageRoute(builder: (context) => const Page1()));
              }, child: Text("Page 1")),
            )
          ],
        ),
      ),
    );
  }
}
