import 'dart:convert';
import 'dart:io';  
  
dynamic getJsonFromFile(String path) async {
  path = 'resources/' + path;
  String jsonString = '';
  try {
    jsonString = await File(path).readAsString();
  } catch (e) {
    jsonString = await File('test/' + path).readAsString();
  }
  return jsonDecode(jsonString);
}