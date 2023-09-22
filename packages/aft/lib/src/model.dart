import 'dart:io';

import 'package:aft/aft.dart';
import 'package:path/path.dart' as p;
import 'package:platform/platform.dart';

const _platform = LocalPlatform();

extension PackageInfoHelpers on PackageInfo {
  /// Skip package checks for Flutter packages when running in CI without
  /// Flutter, which may happen when testing Dart-only packages or specific
  /// Dart versions.
  bool get skipChecks {
    final isCI =
        _platform.getEnv('CI') == 'true' || _platform.getEnv('CI') == '1';
    return isCI &&
        _platform.getEnv('FLUTTER_ROOT') == null &&
        flavor == PackageFlavor.flutter;
  }

  /// The unit test directory within the enclosing directory, if any
  Directory? get unitTestDirectory {
    final expectedPath = p.join(path, 'test');
    final unitTestDir = Directory(expectedPath);
    if (!unitTestDir.existsSync()) {
      return null;
    }
    return unitTestDir;
  }

  /// The integration test directory within the enclosing directory, if any
  Directory? get integrationTestDirectory {
    final expectedPath = p.join(path, 'integration_test');
    final integrationTestDir = Directory(expectedPath);
    if (!integrationTestDir.existsSync()) {
      return null;
    }
    return integrationTestDir;
  }

  /// The goldens test directory within the enclosing directory, if any
  Directory? get goldensTestDirectory {
    final expectedPath = p.join(path, 'test', 'ui');
    final goldensTestDir = Directory(expectedPath);
    if (!goldensTestDir.existsSync()) {
      return null;
    }
    return goldensTestDir;
  }
}
