import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_widget.dart';
import 'config_reader.dart';
import 'environments.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();
  MaterialColor primarColor = Colors.blue;
  switch (env) {
    case Environment.dev:
      primarColor = Colors.blue;
      break;
    case Environment.prod:
      primarColor = Colors.red;
      break;
  }

  runApp(Provider.value(
    value: primarColor,
    child: const MyApp(),
  ));
}
