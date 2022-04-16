import 'package:http/http.dart'as http;
import 'dart:convert';

class API{

  API(this.url);

  final Uri url;

  Future getData() async {


    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      var key =
      jsonDecode(data)[0]['prices'][0]['current_price'];
      // return jsonDecode(data);
      return key;
    } else {
      return response.statusCode;
    }
}}
