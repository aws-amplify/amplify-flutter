import 'dart:io';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:path_provider/path_provider.dart';

class FlutterPathProvider extends PathProvider {
  @override
  Future<Directory> getApplicationSupportPath() async {
    return getApplicationSupportDirectory();
  }
}
