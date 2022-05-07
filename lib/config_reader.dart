import 'dart:convert';

import 'package:flutter/services.dart';

abstract class ConfigReader {
  static Map<String, dynamic> _config = {};

  static Future<void> initialize() async {
    final configString = await rootBundle.loadString('config/config.json');
    _config = jsonDecode(configString) as Map<String, dynamic>;
  }

  static int getIncrementAmount() {
    return _config['incrementAmount'] as int;
  }

  static String getSecretKey() {
    return _config['secretKey'] as String;
  }
}
