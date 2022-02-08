import 'dart:convert';

Map<String, dynamic> fromBase64toMap(String data) =>
    json.decode(String.fromCharCodes(base64Decode(data)));

List<Map<String, dynamic>> fromBase64toList(String data) =>
    (json.decode(String.fromCharCodes(base64Decode(data))) as List)
        .map((e) => e as Map<String, dynamic>)
        .toList();

String toBase64(data) => base64Encode(json.encode(data).codeUnits);
