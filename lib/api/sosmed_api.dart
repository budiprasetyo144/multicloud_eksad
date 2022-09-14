import 'dart:convert';

import 'package:http/http.dart' as http;


Future<bool> createSosmed (wa, ln, tw, ig, yt) async{
  final response = await http.post(
    Uri.parse('http://10.107.243.222:8081/settingsosmed/saveSettingSosmed'),
    body: jsonEncode(
      {
        'whatsapp': wa,
        'linkedin': ln,
        'twitter': tw,
        'instagram': ig,
        'youtube': yt,
      }),
    headers: {
      'Content-type': 'application/json; charset=UTF-8',
    });
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}

Future<bool> updateSosmed (wa,ln,tw,ig,yt) async {
  final response = await http 
      .put(Uri.parse('http://10.107.243.222:8081/settingsosmed/updateSettingSosmed'),
    body: jsonEncode({
      'whatsapp': wa,
      'linkedin': ln,
      'twitter': tw,
      'instagram': ig,
      'youtube': yt,
    }),
    headers: {
      'Content-type': 'application/json; charset=UTF-8',
    });
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}