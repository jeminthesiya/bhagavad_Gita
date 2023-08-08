import 'dart:convert';
import 'package:final_exam/bhagvat%20gita/controller/home_controller.dart';
import 'package:final_exam/bhagvat%20gita/model/home_model.dart';
import 'package:final_exam/bhagvat%20gita/model/verse_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  static final apiHelper = ApiHelper._();

  ApiHelper._();

  Future<List<dynamic>> getApi() async {
    String link = "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/";
    var response = await http.get(Uri.parse(link), headers: {
      "X-RapidAPI-Key": "4f83946f48mshca990122bc500f1p19f8b9jsn13c11a386db0",
      "X-RapidAPI-Host": "bhagavad-gita3.p.rapidapi.com",
    });
    var json = jsonDecode(response.body);
    return json.map((e) => HomeModal.fromJson(e)).toList();
  }

  Future<List<dynamic>> getApi2() async {
    String link = "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/1/verses/";
    var response = await http.get(Uri.parse(link), headers: {
      "X-RapidAPI-Key": "4f83946f48mshca990122bc500f1p19f8b9jsn13c11a386db0",
      "X-RapidAPI-Host": "bhagavad-gita3.p.rapidapi.com",
    });
    var json = jsonDecode(response.body);
    return json.map((e) => VerseModel.fromJson(e)).toList();
  }
}
