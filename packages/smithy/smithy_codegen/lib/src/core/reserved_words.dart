// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Keywords in Dart which *may* be used as identifiers in the right context.
/// Try to avoid using these keywords if possible, since it can be difficult to
/// keep track of their valid contexts.
///
/// See [here](https://dart.dev/guides/language/language-tour#keywords) for
/// more info.
const softReservedWords = {
  'abstract',
  'as',
  'async',
  'covariant',
  'deferred',
  'dynamic',
  'export',
  'extension',
  'external',
  'factory',
  'Function',
  'get',
  'hide',
  'implements',
  'import',
  'interface',
  'late',
  'library',
  'mixin',
  'on',
  'operator',
  'part',
  'required',
  'set',
  'show',
  'static',
  'sync',
  'typedef',
  'yield',
};

/// The Dart language's reserved words. These are words which can never be used
/// as identifiers and must be suffixed with "$" before they can be used.
///
/// See [here](https://dart.dev/guides/language/language-tour#keywords) for
/// more info.
const hardReservedWords = {
  'assert',
  'await',
  'break',
  'case',
  'catch',
  'class',
  'const',
  'continue',
  'default',
  'do',
  'else',
  'enum',
  'extends',
  'false',
  'finally',
  'for',
  'if',
  'in',
  'is',
  'new',
  'null',
  'rethrow',
  'return',
  'super',
  'switch',
  'this',
  'throw',
  'true',
  'try',
  'var',
  'void',
  'while',
  'with',

  // Lowercase type names create conflicts
  'double',
  'int',
  'bool',

  // Conflicts with `dart:core`
  'override',

  // aws equatable
  'props',

  // All generated types
  'serializers',
};

const enumReservedWords = [
  'name',
  'value',
  'index',
  'values',
];

const unionReservedWords = [
  'name',
  'value',
  'sdkUnknown',
  'unknown',
];

// Reserved due to `built_value`
const structReservedWords = [
  'update',
  'build',
  'rebuild',
  'serializer',
  'replace',
  'toBuilder',
  'object',
];

const reservedTypeNames = [
  // Conflicts with usages of core.Type in serializer classes.
  'Type',
  'Function',
  'Object',
];
