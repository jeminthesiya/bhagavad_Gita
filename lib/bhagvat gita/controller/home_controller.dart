import 'package:final_exam/utils/api_helper.dart';
import 'package:get/get.dart';

class GitaController extends GetxController {
  List<dynamic> dataList = [];
  List<dynamic> data = [];

  Future<List> callApi() async {
    dataList = await ApiHelper.apiHelper.getApi() as List;
    return dataList;
  }

  Future<List> callApi2() async {
    data = await ApiHelper.apiHelper.getApi2() as List;
    return data;
  }
}
