import 'package:flutter_ci_cd/environments.dart';
import 'package:flutter_ci_cd/main_common.dart';

Future<void> main() async {
  await mainCommon(Environment.prod);
}
