// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:build/build.dart';
import 'package:path/path.dart' as p;

/// Copies the generated workers to `.js`, `.min.js`, `.wasm`, `.min.wasm`, `.mjs`, and `.min.mjs` files.
class WorkerCopyBuilder extends Builder {
  @override
  late final Map<String, List<String>> buildExtensions = {
    '.debug.dart.js': ['.js'],
    '.debug.dart2js.js': ['.dart2js.js'],
    '.debug.dart.js.map': ['.js.map'],
    '.debug.dart2js.js.map': ['.dart2js.js.map'],
    '.release.dart.js': ['.min.js'],
    '.release.dart.js.map': ['.min.js.map'],
    '.release.dart2js.js': ['.min.dart2js.js'],
    '.release.dart2js.js.map': ['.min.dart2js.js.map'],
    '.debug.wasm': ['.wasm'],
    '.debug.wasm.map': ['.wasm.map'],
    '.debug.mjs': ['.mjs'],
    '.release.wasm': ['.min.wasm'],
    '.release.wasm.map': ['.min.wasm.map'],
    '.release.mjs': ['.min.mjs'],
  };

  static final _dart2jsSourceMapUrl = RegExp(r'sourceMappingURL=[\w\.]*');

  @override
  Future<void> build(BuildStep buildStep) async {
    final inputPath = buildStep.inputId.path;
    final originalFilename = p.basename(inputPath);

    final outputFilename = originalFilename
        .replaceFirst('.debug.dart.js.map', '.js.map')
        .replaceFirst('.debug.dart2js.js.map', '.dart2js.js.map')
        .replaceFirst('.debug.dart2js.js', '.dart2js.js')
        .replaceFirst('.debug.dart.js', '.js')
        .replaceFirst('.release.dart.js.map', '.min.js.map')
        .replaceFirst('.release.dart2js.js.map', '.min.dart2js.js.map')
        .replaceFirst('.release.dart2js.js', '.min.dart2js.js')
        .replaceFirst('.release.dart.js', '.min.js')
        .replaceFirst('.debug.wasm.map', '.wasm.map')
        .replaceFirst('.debug.wasm', '.wasm')
        .replaceFirst('.debug.mjs', '.mjs')
        .replaceFirst('.release.wasm.map', '.min.wasm.map')
        .replaceFirst('.release.wasm', '.min.wasm')
        .replaceFirst('.release.mjs', '.min.mjs');

    final outputId = AssetId(
      buildStep.inputId.package,
      p.join(p.dirname(buildStep.inputId.path), outputFilename),
    );

    //Update WASM Source Mapping URL (We should really be using a WASM parser)
    //this logic will scan the WASM binary for a Custom section with only
    //sourceMappingURL defined and replace it with a new custom section
    //with the new sorceMappingURL path
    if (inputPath.endsWith('.wasm')) {
      var inputbytes = await buildStep.readAsBytes(buildStep.inputId);

      final oldCustomBytes = _generateWasmCustomSection(
        '$originalFilename.map',
      );

      final indexCustomSection = _findSequenceIndex(inputbytes, oldCustomBytes);

      if (indexCustomSection != -1) {
        final preCustomSection = inputbytes.sublist(0, indexCustomSection);
        final newCustomBytes = _generateWasmCustomSection(
          '$outputFilename.map',
        );
        final postCustomSection = inputbytes.sublist(
          indexCustomSection + oldCustomBytes.length,
        );

        inputbytes = List<int>.from(preCustomSection)
          ..addAll(newCustomBytes)
          ..addAll(postCustomSection);
      }

      await buildStep.writeAsBytes(outputId, inputbytes);
    } else {
      var input = await buildStep.readAsString(buildStep.inputId);

      //Update Mapping file's source map
      if (inputPath.endsWith('.map')) {
        final sourceMapJson = jsonDecode(input) as Map;
        sourceMapJson['file'] = outputFilename.replaceFirst(
          RegExp(r'.map$'),
          '',
        );

        input = jsonEncode(sourceMapJson);
      }
      //Update JS file's Source Mapping URL
      else if (inputPath.endsWith('.dart2js.js')) {
        input = input.replaceFirst(
          _dart2jsSourceMapUrl,
          'sourceMappingURL=$outputFilename.map',
        );
      }
      //Update JS/WASM loader with new source file names
      else if (inputPath.endsWith('.js')) {
        input = input.replaceAll('.debug.', '.');
        input = input.replaceAll('.release.', '.min.');
      }

      await buildStep.writeAsString(outputId, input);
    }
  }

  int _findSequenceIndex(List<int> source, List<int> sequence) {
    //Search backwards as we expect the Custom section to be at the end
    for (var i = source.length - sequence.length; i >= 0; i--) {
      var match = true;
      for (var j = 0; j < sequence.length; j++) {
        if (source[i + j] != sequence[j]) {
          match = false;
          break;
        }
      }
      if (match) return i;
    }
    return -1;
  }

  List<int> _generateWasmCustomSection(String mapFileName) {
    final key = 'sourceMappingURL'.codeUnits;
    final value = mapFileName.codeUnits;
    final sectionByteCount = 1 + key.length + 1 + value.length;

    //https://webassembly.github.io/spec/core/binary/modules.html#custom-section
    return <int>[
      0, // id
      sectionByteCount, // section length
      key.length, // key length
      ...key, // key data
      value.length, // value length
      ...value, // value data
    ];
  }
}
