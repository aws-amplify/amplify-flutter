// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/actions.dart';
import 'package:actions/src/node/process_manager.dart';
import 'package:path/path.dart' as p;

/// Marker for code which can never be reached.
Never get unreachable => throw _UnreachableError();

final class _UnreachableError extends Error {}

/// Allocates swap space to help relieve memory pressure when running `build_runner`.
/// 
/// By default, the large runners do not allocate any swap space. Without swap space,
/// `build_runner` actions will often fail with an "The operation was canceled" exception.
/// This was found to be caused by running out of memory (which `build_runner` consumes
/// a lot of).
Future<void> allocateSwapSpace({int sizeInGb = 10}) async {
  await core.withGroup('Create swap space', () async {
    await ShellScript('''
# Log current swap space report
function log_swap {
  echo "Memory and swap:"
  free -h
  echo
  swapon --show
  echo
}

# Set swap
log_swap
SWAP_FILE=/swap
sudo fallocate -l ${sizeInGb}G \$SWAP_FILE
sudo chmod 600 \$SWAP_FILE
sudo mkswap \$SWAP_FILE
sudo swapon \$SWAP_FILE
log_swap
''').run();
  });
}

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
      final result = await nodeProcessManager.start(
        ['/bin/bash', scriptPath], 
        mode: ProcessStartMode.inheritStdio,
      );
      final exitCode = await result.exitCode;
      if (exitCode != 0) {
        throw ProcessException(
          '/bin/bash',
          [scriptPath],
          'Script failed with exit code', 
          exitCode,
        );
      }
    });
  }
}
