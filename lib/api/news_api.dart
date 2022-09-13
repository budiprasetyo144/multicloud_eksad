import 'dart:convert';

import 'package:http/http.dart' as http;

Future<bool> createNews(title, news, image) async {
  final response = await http.post(
      Uri.parse('http://10.107.243.222:8081/post/savePost'),
      body: jsonEncode({
        "title": title,
        "news": news,
        "image": image}),
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
      Uri.parse('http://10.107.243.222:8081/post/savePost'),
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
      .get(Uri.parse('http://10.107.243.222:8082/post/getAllPostByIdRole'));
  return jsonDecode(response.body)['data'];
}

Future<bool> deleteNews(id) async {
  final response = await http.delete(
    Uri.parse('http://10.107.243.222:8081/post/deletePost/$id'),
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
