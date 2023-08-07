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
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Page2()),
              );
            },
            child: Text("Go to Page 2"),
          ),
          SizedBox(
              height:
                  20), // Add some spacing between the button and the ListView
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                final number = index + 1;
                return ListTile(
                  title: Text('Item $number'),
                  onTap: () {
                    // You can add specific actions when an item is tapped.
                    // For now, it will just print the item number.
                    print('Tapped Item $number');
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
