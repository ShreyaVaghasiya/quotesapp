import 'package:flutter/services.dart';

class QuotesModel {
  String? name;
  String? quotes;
  String? pict;

  QuotesModel(
  this.name,
    this.quotes,
    this.pict,
      );

  QuotesModel.fromMap(Map map) {
    name = map[name];
    quotes = map[quotes];
    pict = map[pict];
  }

  Map<String, dynamic> toMap() => {
    "name": name,
    "quotes": quotes,
    "pict": pict,
  };
}