import 'package:database_2/person_model.dart';
import 'package:database_2/services/api.dart';
import'package:flutter/material.dart';

class DisplayData extends StatefulWidget {
  const DisplayData({super.key});

  @override
  State<DisplayData> createState() => _DisplayDataState();
}

class _DisplayDataState extends State<DisplayData> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Display Data"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),

      body: FutureBuilder(
        future: Api.getPerson(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final pdata = snapshot.data!;

            return ListView.builder(
              itemCount: pdata.length,
              
              itemBuilder: (context, index) {
                return ListTile(
                  minVerticalPadding: 14,
                  //icon
                  leading: const Icon(Icons.person),

                  //name
                  title: Text("Name : ${pdata[index].name}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18),),

                  //phone
                  subtitle: Text("Phone : ${pdata[index].phone}"),

                  //age
                  trailing: Text("Age : ${pdata[index].age}",
                    style: TextStyle(
                      fontSize: 16),),

                );
              },
            );
          } else {
            return const Center(
              child: Text("No Data Found"),
            );
          }
        },
      ),
    );
  }
}
