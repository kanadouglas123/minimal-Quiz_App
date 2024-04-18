import 'package:flutter/material.dart';
class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Book",
            style:TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)
        ),
          Text("Store",
              style:TextStyle(color: Colors.orange, fontSize: 25, fontWeight: FontWeight.bold)
          ),

        ],

      ),
    ),);
  }
}
