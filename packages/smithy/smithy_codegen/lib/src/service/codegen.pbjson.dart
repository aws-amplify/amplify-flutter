// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use smithyLibraryDescriptor instead')
const SmithyLibrary$json = {
  '1': 'SmithyLibrary',
  '2': [
    {'1': 'packageName', '3': 1, '4': 1, '5': 9, '10': 'packageName'},
    {'1': 'serviceName', '3': 2, '4': 1, '5': 9, '10': 'serviceName'},
    {
      '1': 'libraryType',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.SmithyLibrary.LibraryType',
      '10': 'libraryType'
    },
    {'1': 'filename', '3': 4, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'basePath', '3': 5, '4': 1, '5': 9, '10': 'basePath'},
  ],
  '4': [SmithyLibrary_LibraryType$json],
};

@$core.Deprecated('Use smithyLibraryDescriptor instead')
const SmithyLibrary_LibraryType$json = {
  '1': 'LibraryType',
  '2': [
    {'1': 'MODEL', '2': 0},
    {'1': 'CLIENT', '2': 1},
    {'1': 'SERVICE', '2': 2},
    {'1': 'OPERATION', '2': 3},
    {'1': 'COMMON', '2': 4},
    {'1': 'TEST', '2': 5},
    {'1': 'SERVER', '2': 6},
    {'1': 'WAITERS', '2': 7},
  ],
};

/// Descriptor for `SmithyLibrary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List smithyLibraryDescriptor = $convert.base64Decode(
    'Cg1TbWl0aHlMaWJyYXJ5EiAKC3BhY2thZ2VOYW1lGAEgASgJUgtwYWNrYWdlTmFtZRIgCgtzZXJ2aWNlTmFtZRgCIAEoCVILc2VydmljZU5hbWUSPAoLbGlicmFyeVR5cGUYAyABKA4yGi5TbWl0aHlMaWJyYXJ5LkxpYnJhcnlUeXBlUgtsaWJyYXJ5VHlwZRIaCghmaWxlbmFtZRgEIAEoCVIIZmlsZW5hbWUSGgoIYmFzZVBhdGgYBSABKAlSCGJhc2VQYXRoIm8KC0xpYnJhcnlUeXBlEgkKBU1PREVMEAASCgoGQ0xJRU5UEAESCwoHU0VSVklDRRACEg0KCU9QRVJBVElPThADEgoKBkNPTU1PThAEEggKBFRFU1QQBRIKCgZTRVJWRVIQBhILCgdXQUlURVJTEAc=');
@$core.Deprecated('Use codegenRequestDescriptor instead')
const CodegenRequest$json = {
  '1': 'CodegenRequest',
  '2': [
    {
      '1': 'settings',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.CodegenRequest.SettingsEntry',
      '10': 'settings'
    },
    {'1': 'serviceName', '3': 2, '4': 1, '5': 9, '10': 'serviceName'},
    {'1': 'json', '3': 3, '4': 1, '5': 9, '10': 'json'},
  ],
  '3': [CodegenRequest_SettingsEntry$json],
};

@$core.Deprecated('Use codegenRequestDescriptor instead')
const CodegenRequest_SettingsEntry$json = {
  '1': 'SettingsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CodegenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List codegenRequestDescriptor = $convert.base64Decode(
    'Cg5Db2RlZ2VuUmVxdWVzdBI5CghzZXR0aW5ncxgBIAMoCzIdLkNvZGVnZW5SZXF1ZXN0LlNldHRpbmdzRW50cnlSCHNldHRpbmdzEiAKC3NlcnZpY2VOYW1lGAIgASgJUgtzZXJ2aWNlTmFtZRISCgRqc29uGAMgASgJUgRqc29uGjsKDVNldHRpbmdzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use codegenResponseDescriptor instead')
const CodegenResponse$json = {
  '1': 'CodegenResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    {'1': 'pubspec', '3': 3, '4': 1, '5': 9, '10': 'pubspec'},
    {
      '1': 'libraries',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.CodegenResponse.Library',
      '10': 'libraries'
    },
  ],
  '3': [CodegenResponse_Library$json],
};

@$core.Deprecated('Use codegenResponseDescriptor instead')
const CodegenResponse_Library$json = {
  '1': 'Library',
  '2': [
    {
      '1': 'metadata',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.SmithyLibrary',
      '10': 'metadata'
    },
    {'1': 'definition', '3': 2, '4': 1, '5': 9, '10': 'definition'},
  ],
};

/// Descriptor for `CodegenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List codegenResponseDescriptor = $convert.base64Decode(
    'Cg9Db2RlZ2VuUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIUCgVlcnJvchgCIAEoCVIFZXJyb3ISGAoHcHVic3BlYxgDIAEoCVIHcHVic3BlYxI2CglsaWJyYXJpZXMYBCADKAsyGC5Db2RlZ2VuUmVzcG9uc2UuTGlicmFyeVIJbGlicmFyaWVzGlUKB0xpYnJhcnkSKgoIbWV0YWRhdGEYASABKAsyDi5TbWl0aHlMaWJyYXJ5UghtZXRhZGF0YRIeCgpkZWZpbml0aW9uGAIgASgJUgpkZWZpbml0aW9u');
