// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// Keywords in Dart which *may* be used as identifiers in the right context.
/// Try to avoid using these keywords if possible since it can be difficult to
/// keep track of their valid contexts.
///
/// See [here](https://dart.dev/guides/language/language-tour#keywords) for more info.
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
/// See [here](https://dart.dev/guides/language/language-tour#keywords) for more info.
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
  'with'
};

/// Words reserved in the context of enums.
const enumReservedWords = [
  'name',
  'value',
  'index',
  'values',
];
