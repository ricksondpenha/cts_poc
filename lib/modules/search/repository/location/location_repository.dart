import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../model/location1/locations_model.dart';

/*class LocationRepository extends ChangeNotifier {
  LocationRepository() {
    getLocations();
  }*/

Future<LocationsModel> getLocations() async {
  var response = await http.get(
      Uri.parse('https://c363552a-0d9b-48b1-b393-189e4581fd6f.mock.pstmn.io'));
  /* var response = await http.get(Uri.parse(''));*/
  if (response.statusCode == 200) {
    //print(jsonDecode(response.body));
    //notifyListeners();
    return LocationsModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception();
  }
}
//}
