import 'dart:convert';

import 'package:http/http.dart' as http;

var cmd = 'https://dmsdev-api.eksad.com/gateway/mcs/v1/cmd';
var qry = 'https://dmsdev-api.eksad.com/gateway/mcs/v1/qry';

Future<bool> createNews(title, news, image,link) async {
  final response = await http.post(
      Uri.parse('$cmd/post/savePost'),
      body: jsonEncode({
        "title": title,
        "news": news,
        "image": image,
        "link": link
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

Future<bool> updateNews(id, title, news) async {
  final response = await http.post(
      Uri.parse('$cmd/post/savePost'),
      body: jsonEncode({
        "idnews": id,
        "title": title,
        "news": news}),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      });
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}

Future<List<dynamic>> getNews() async {
  var response = await http
      .get(Uri.parse('$qry/post/getAllPostByIdRole'));
  return jsonDecode(response.body)['data'];
}

Future<bool> deleteNews(id) async {
  final response = await http.post(
    Uri.parse('$cmd/post/updatePost'),
    body: jsonEncode({"idnews": id,}),
    headers: {
      'Content-type': 'application/json; charset=UTF-8',
    },
  );
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}
