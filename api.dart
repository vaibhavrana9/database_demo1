import 'dart:convert';
import 'package:http/http.dart' as http;
import '../person_model.dart';

class Api {
  static const baseurl = "http://192.168.1.223:3000/api/";

  //POST api
  static addperson (Map pdata) async {
    print(pdata);

    var url = Uri.parse(baseurl + "add_person");

    try {

      final res = await http.post(url, body: pdata);

      if (res.statusCode == 200) {

        var data = jsonDecode(res.body.toString());
        print(data);

      } else {
        print("Failed to upload data");
      }
    } catch (e){
      print(e.toString());
    }
  }

  //GET api
  static Future<List<dynamic>> getPerson() async {
    List<Person> person = [ ];
    var url = Uri.parse(baseurl + "get_person");

    try{
      final res = await http.get(url);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        print(data);

        data['person']?.forEach((value)=>{
          person.add(
            Person(
              name: value['pname'],
                phone: value['pphone'],
                age: value['page'],
            )
          )
        });
        return person;

      } else { return [];}

    } catch(e) {
      print(e.toString());
      return [];
    }
  }
}
