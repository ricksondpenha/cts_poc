import 'dart:convert';

import 'package:http/http.dart' as http;
import '../../model/activity/activities_model.dart';

Future<ActivityModel> getActivites() async {
/*  var response = await http.get(
      Uri.parse('https://6ef1f2f1-eefc-4f4e-bc50-16fb029640b8.mock.pstmn.io'));*/
  var response = await http.get(Uri.parse(''));

  if (response.statusCode == 200) {
    // print(jsonDecode(response.body));
    //notifyListeners();
    return ActivityModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception();
  }
}
