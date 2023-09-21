// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:node_io/node_io.dart' as node;
import 'package:platform/platform.dart';

class NodePlatform extends Platform {
  const NodePlatform();

  @override
  Map<String, String> get environment => node.Platform.environment;

  @override
  String get executable => node.Platform.executable;

  @override
  List<String> get executableArguments => node.Platform.executableArguments;

  @override
  String get localHostname => node.Platform.localHostname;

  @override
  String get localeName => node.Platform.localeName;

  @override
  int get numberOfProcessors => node.Platform.numberOfProcessors;

  @override
  String get operatingSystem => node.Platform.operatingSystem;

  @override
  String get operatingSystemVersion => node.Platform.operatingSystemVersion;

  @override
  String? get packageConfig => node.Platform.packageConfig;

  @override
  String get pathSeparator => node.Platform.pathSeparator;

  @override
  String get resolvedExecutable => node.Platform.resolvedExecutable;

  @override
  Uri get script => node.Platform.script;

  @override
  bool get stdinSupportsAnsi => false;

  @override
  bool get stdoutSupportsAnsi => false;

  @override
  String get version => node.Platform.version;
}
