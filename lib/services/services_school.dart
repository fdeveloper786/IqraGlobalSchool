import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:mountassissi_clone/models/model_school.dart';


Future<String> _loadASchoolAsset() async {
  return await rootBundle.loadString('assets/localJson/schoolDetails.json');
}


Future loadStudent() async {
  String jsonString = await _loadASchoolAsset();
  final jsonResponse = json.decode(jsonString);
  School school = new School.fromJson(jsonResponse);
  print(school.title);
}