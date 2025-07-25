// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:code_builder/code_builder.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/types.dart';

/// The strategy for prefixing library imports.
enum PrefixStrategy {
  /// Always prefix imports using standard `_i{index}` prefixes.
  always,

  /// Never prefix imports.
  ///
  /// **NOTE**: This may cause conflicts with runtime types.
  never,

  /// Only prefix runtime libraries.
  ///
  /// This is the default strategy as it protects the clients from
  /// conflicting with the vended runtime types.
  runtimeOnly,
}

/// Operates similar to [Allocator.simplePrefixing], prefixing symbols using
/// a simple incrementor.
///
/// Unlike [Allocator.simplePrefixing], though, it accepts a [library] parameter
/// so that references to values in the same file are not prefixed.
class SmithyAllocator implements Allocator {
  SmithyAllocator(
    this.library,
    this.smithyLibrary, {
    required this.withPrefixing,
  });

  final PrefixStrategy withPrefixing;

  /// Prefixing core makes things messy, although it does require escaping all
  /// core names.
  ///
  /// Some libraries like `built_value` do not like to be prefixed (their code
  /// generator will simply not work).
  static const _doNotPrefix = [
    'dart:core',
    BuiltValueType.mainUrl,
    BuiltValueType.serializerUrl,
    ShelfRouter.url,
  ];

  /// Tracks dependencies by looking at the packages we import.
  final dependencies = <String>{};

  final _imports = <String, int>{};
  var _keys = 1;

  final Library library;
  final SmithyLibrary smithyLibrary;

  /// The URL for the [library] being generated.
  String? get libraryUrl {
    if (smithyLibrary.libraryType == SmithyLibrary_LibraryType.TEST) {
      return null;
    }
    return 'package:${smithyLibrary.packageName}/${smithyLibrary.libRelativePath}';
  }

  /// Gets the package name from a [url].
  String packageName(String url) =>
      url.substring('package:'.length).split('/').first;

  @override
  String allocate(Reference reference) {
    final symbol = reference.symbol;
    final url = reference.url;
    final thisLibrary = libraryUrl;
    if (url == null || url == thisLibrary) {
      return symbol!;
    }

    // Track dependencies via the URLs we import
    if (thisLibrary != null) {
      final thisPackage = packageName(thisLibrary);
      if (!url.startsWith('dart:')) {
        final package = packageName(url);
        if (package != thisPackage) {
          dependencies.add(package);
        }
      }
    }

    if (shouldPrefix(url)) {
      return '_i${_imports.putIfAbsent(url, _nextKey)}.$symbol';
    }
    _imports[url] = -1;
    return symbol!;
  }

  bool shouldPrefix(String url) {
    return !_doNotPrefix.contains(url) &&
        switch (withPrefixing) {
          PrefixStrategy.always => true,
          PrefixStrategy.never => false,
          PrefixStrategy.runtimeOnly => !url.startsWith(
            'package:${smithyLibrary.packageName}',
          ),
        };
  }

  int _nextKey() => _keys++;

  @override
  Iterable<Directive> get imports => _imports.keys
      .where((key) => key != 'dart:core')
      .map(
        (u) => Directive.import(
          u,
          as: shouldPrefix(u) ? '_i${_imports[u]}' : null,
        ),
      );
}
