import 'dart:convert';

import 'package:http/http.dart' as http;
import '../../model/vacctionrental/region_model.dart';

Future<RegionModel> getRegions() async {
/*
  var response = await http.get(
      Uri.parse('https://7fa2bdf0-98cb-45cc-b373-5275782f0a88.mock.pstmn.io'));
*/

  var response = await http.get(Uri.parse(''));
  if (response.statusCode == 200) {
    // print(jsonDecode(response.body));
    //notifyListeners();
    return RegionModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception();
  }
}
