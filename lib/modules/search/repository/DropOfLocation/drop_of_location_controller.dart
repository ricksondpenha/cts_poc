import 'dart:convert';

import 'package:http/http.dart' as http;
import '../../model/LocationDropOff/location_drop_off.dart';

Future<LocationDropOff> getCarDropOffLocations() async {
/*  var response = await http.get(
      Uri.parse('https://85db6d7f-529a-42f1-bb9a-6b787d1e5b7d.mock.pstmn.io'));*/
  var response = await http.get(Uri.parse(''));

  if (response.statusCode == 200) {
    //notifyListeners();
    return LocationDropOff.fromJson(jsonDecode(response.body));
  } else {
    throw Exception();
  }
}
//}
