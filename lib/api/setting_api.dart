import 'dart:convert';

import 'package:http/http.dart' as http;

Future<bool> createSetting(im, tt, tl, em, no,role) async {
  final response = await http.post(
      Uri.parse('http://192.168.163.102:8081/cms/v1/cmd/setting/saveSetting'),
      body: jsonEncode(
          {
            "image": im,
            "title": tt,
            "tagline": tl,
            "email": em,
            "no": no,
            'roleportal': role,
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

Future<bool> updateSetting(id, image, name, title, tagline, email, no,) async {
  final response = await http
      .put(Uri.parse('http://192.168.163.102:8081/cms/v1/cmd/setting/updateSetting'),
          body: jsonEncode({
            "idsetting": id,
            "image": image,
            "name": name,
            "title": title,
            "tagline": tagline,
            "email": email,
            "no": no,
            "idrole": "R001",
            'roleportal': 'MCS',
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

Future<List<dynamic>> getSetting() async {
  var response = await http.get(
      Uri.parse('http://192.168.163.102:8082/cms/v1/qry/setting/getAllSettingByIdRole'));
  return jsonDecode(response.body)['data'];
}

Future<List<dynamic>> getSettingDesc() async {
  var response = await http.get(
      Uri.parse('http://192.168.163.102:8082/cms/v1/qry/setting/getSettingByIdDesc'));
  return jsonDecode(response.body)['data'];
}
