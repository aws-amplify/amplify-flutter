import 'dart:convert';
import 'dart:io';

import 'package:mason/mason.dart';

Future<void> _runCommand(String command, [List<String> args = const []]) async {
  final result = await Process.run(
    command,
    args,
    stdoutEncoding: utf8,
    stderrEncoding: utf8,
  );
  if (await result.exitCode != 0) {
    throw Exception(
      'Error running `$command ${args.join()}`:\n'
      '${result.stdout}\n${result.stderr}',
    );
  }
}

Future<void> run(HookContext context) async {
  final linkProgress = context.logger.progress('Linking packages');
  await _runCommand('aft', ['link']);
  linkProgress.complete();

  final packagesProgress = context.logger.progress('Installing packages');
  await _runCommand('dart', ['pub', 'upgrade']);
  packagesProgress.complete();
}
