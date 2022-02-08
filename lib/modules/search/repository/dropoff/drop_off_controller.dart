import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../model/dropoff/drop_off_model.dart';

/*class LocationRepository extends ChangeNotifier {
  LocationRepository() {
    getLocations();
  }*/

Future<DropOffModel> getDropOffLocations() async {
/*
  var response = await http.get(
      Uri.parse('https://78dddfd3-3efb-4fdb-9af8-93fec058de67.mock.pstmn.io'));
*/
  var response = await http.get(Uri.parse(''));
  if (response.statusCode == 200) {
    //print(jsonDecode(response.body));
    //notifyListeners();
    return DropOffModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception();
  }
}
//}
