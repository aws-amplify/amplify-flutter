// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/src/node/actions/core.dart';
import 'package:actions/src/node/fs.dart';
import 'package:actions/src/node/process_manager.dart';
import 'package:path/path.dart' as p;

/// Wrapper for a shell [script].
extension type ShellScript(String script) {
  /// Executes the script with `/bin/bash` and throws if there's an error.
  Future<void> run() async {
    final fullScript = '''
#!/bin/bash
set -eo pipefail
$script
''';
    core.info('Running script:\n$fullScript\n=======================================');
    await fs.withTempDir('launch_android_emulator', (tempDir) async {
      final scriptPath = p.join(tempDir, 'script.sh');
      fs.writeFileSync(scriptPath, fullScript);
      final result = await processManager.start(
        ['/bin/bash', scriptPath], 
        mode: ProcessStartMode.inheritStdio,
      );
      final exitCode = await result.exitCode;
      if (exitCode != 0) {
        throw ProcessException(
          '/bin/bash',
          [script],
          'Script failed with exit code', 
          exitCode,
        );
      }
    });
  }
}
