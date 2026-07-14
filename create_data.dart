import 'package:database_2/services/api.dart';
import 'package:flutter/material.dart';

class CreateData extends StatefulWidget {
  const CreateData({super.key});

  @override
  State<CreateData> createState() => _CreateDataState();
}

class _CreateDataState extends State<CreateData> {

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController ageController = TextEditingController();





  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //appbar
      appBar: AppBar(
        title: Text("Create Data"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        elevation: 2,
      ),

      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              //name
              TextField(controller: nameController,
              decoration: InputDecoration(
                hintText: "Enter Name"
              ),),

              //phone
              TextField(controller: phoneController,
                decoration: InputDecoration(
                    hintText: "Enter Phone"
                ),),

              //age
              TextField(controller: ageController,
                decoration: InputDecoration(
                    hintText: "Enter age",
                ),),

              const SizedBox(height: 40,),
              
              //create button
              ElevatedButton(onPressed: () {
                var data = {
                  "pname" : nameController.text,
                  "pphone" : phoneController.text,
                  "page" : ageController.text,

                };
                Api.addperson(data);
              },
                  child: Text("Create")),

            ],

          ),
        ),
      ),
    );
  }
}
