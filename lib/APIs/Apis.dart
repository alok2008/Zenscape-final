import 'package:http/http.dart'as http;
import 'dart:convert';

class API{

  API(this.url);

  final Uri url;

  Future getData() async {


    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      dynamic data = response.body;
      return data;
    } else {
      return response.statusCode;
    }
}}
