import 'package:database_2/create_data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        elevation: 2,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 25,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CreateData(),));
              },
                child: Text("Create")),

            ElevatedButton(onPressed: () { },
                child: Text("Read")),

            ElevatedButton(onPressed: () { },
                child: Text("Update")),

            ElevatedButton(onPressed: () {
            },
                child: Text("Delete")),
          ],
        ),
      ),
    );
  }
}
