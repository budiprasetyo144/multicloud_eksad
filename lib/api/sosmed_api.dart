import 'dart:convert';

import 'package:http/http.dart' as http;

var cmd = 'https://dmsdev-api.eksad.com/gateway/mcs/v1/cmd';
var qry = 'https://dmsdev-api.eksad.com/gateway/mcs/v1/qry';

Future<bool> createSosmed (wa, ln, tw, ig, yt) async{
  final response = await http.post(
    Uri.parse('$cmd/settingsosmed/saveSettingSosmed'),
    body: jsonEncode(
      {
        "whatsapp": wa,
        "linkedin": ln,
        "twitter": tw,
        "instagram": ig,
        "youtube": yt,
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
      .put(Uri.parse('$cmd/settingsosmed/updateSettingSosmed'),
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


Future<List<dynamic>> getSosmedDesc() async {
  var response = await http.get(
      Uri.parse('$qry/settingsosmed/getSettingSosmedByIdDesc'));
  return jsonDecode(response.body)['data'];
}


Future<bool> createWA (wa) async{
  final response = await http.post(
      Uri.parse('$cmd/settingsosmed/saveWhatsapp'),
      body: jsonEncode(
          {
            "whatsapp": wa,
            // "linkedin": ln,
            // "twitter": tw,
            // "instagram": ig,
            // "youtube": yt,
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

Future<bool> createLN (ln) async{
  final response = await http.post(
      Uri.parse('$cmd/settingsosmed/saveLinkedin'),
      body: jsonEncode(
          {
           // "whatsapp": wa,
            "linkedin": ln,
            // "twitter": tw,
            // "instagram": ig,
            // "youtube": yt,
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

Future<bool> createTW (tw) async{
  final response = await http.post(
      Uri.parse('$cmd/settingsosmed/saveTwitter'),
      body: jsonEncode(
          {
           // "whatsapp": wa,
          //  "linkedin": ln,
            "twitter": tw,
            // "instagram": ig,
            // "youtube": yt,
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


Future<bool> createIG (ig) async{
  final response = await http.post(
      Uri.parse('$cmd/settingsosmed/saveInstagram'),
      body: jsonEncode(
          {
            // "whatsapp": wa,
            // "linkedin": ln,
            // "twitter": tw,
            "instagram": ig,
           // "youtube": yt,
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

Future<bool> createYT (yt) async{
  final response = await http.post(
      Uri.parse('$cmd/settingsosmed/saveYoutube'),
      body: jsonEncode(
          {
            // "whatsapp": wa,
            // "linkedin": ln,
            // "twitter": tw,
            // "instagram": ig,
            "youtube": yt,
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