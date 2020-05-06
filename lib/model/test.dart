import 'package:json_annotation/json_annotation.dart';

class test {
  final String title;
  final String album_1000_1000;
  final String author;
  final String si_proxycompany;

  const test(this.title,this.album_1000_1000,this.author,this.si_proxycompany);

  test.fromJson(Map<String, dynamic> srcJson) : title = srcJson["title"],
  author=srcJson["author"],
  album_1000_1000=srcJson["album_1000_1000"],
  si_proxycompany=srcJson["si_proxycompany"];
}
