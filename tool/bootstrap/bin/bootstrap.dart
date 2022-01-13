import 'dart:io';

import 'package:args/args.dart';
import 'package:path/path.dart' as path;
import 'package:yaml/yaml.dart';
import 'package:yaml_edit/yaml_edit.dart';

const skipPackages = ['amplify_lints'];
const keepLocalPackage = ['amplify_test'];
const urlArg = 'url';
late String url;

void main(List<String> arguments) {
  final parser = ArgParser()
    ..addOption(
      urlArg,
      defaultsTo: 'http://localhost:4000',
    );
  final args = parser.parse(arguments);
  url = args[urlArg]!;

  final cwd = Directory.current.path;
  final packagesDir = Directory(path.join(cwd, 'packages'));
  if (!packagesDir.existsSync()) {
    stderr.writeln('Must be run from project root.');
    exit(1);
  }

  final packages = packagesDir.listSync();
  for (var package in packages) {
    final packageName = path.basename(package.path);
    if (skipPackages.contains(packageName)) {
      stdout.writeln('Skipping package $packageName...');
      continue;
    }
    updatePackage(package.path, packageName);
    final examplePath = path.join(package.path, 'example');
    if (Directory(examplePath).existsSync()) {
      updatePackage(examplePath, '${packageName}_example');
    }
  }
}

/// Updates the package at the given [packagePath] by editing the pubspec.yaml
/// file in place.
void updatePackage(String packagePath, String packageName) {
  final pubspecFile = File(path.join(packagePath, 'pubspec.yaml'));
  if (!pubspecFile.existsSync()) {
    stderr.writeln('Could not find pubspec.yaml for package: $packageName');
    return;
  }
  final pubspecYaml = YamlEditor(pubspecFile.readAsStringSync());
  updateDependencies(pubspecYaml, 'dependencies');
  updateDependencies(pubspecYaml, 'dev_dependencies');
  pubspecFile.writeAsStringSync(pubspecYaml.toString());
}

/// Updates dependencies in [pubspecYaml] for the given [dependencyKey],
/// e.g. 'dependencies' or 'dev_dependencies'.
void updateDependencies(YamlEditor pubspecYaml, String dependencyKey) {
  final dependencies = pubspecYaml.parseAt([dependencyKey]).value as YamlMap;
  for (final dependencyName in dependencies.keys.cast<String>()) {
    if (!dependencyName.startsWith('amplify_') ||
        keepLocalPackage.contains(dependencyName)) {
      continue;
    }
    pubspecYaml.update(
      [dependencyKey, dependencyName],
      YamlMap.wrap(<String, Object?>{
        'hosted': {
          'url': url,
          'name': dependencyName,
        },
        'version': 'any',
      }),
    );
  }
}
