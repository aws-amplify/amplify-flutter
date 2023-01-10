// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

///
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'codegen.pbenum.dart';

export 'codegen.pbenum.dart';

class SmithyLibrary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SmithyLibrary',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'packageName',
        protoName: 'packageName')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'serviceName',
        protoName: 'serviceName')
    ..e<SmithyLibrary_LibraryType>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'libraryType',
        $pb.PbFieldType.OE,
        protoName: 'libraryType',
        defaultOrMaker: SmithyLibrary_LibraryType.MODEL,
        valueOf: SmithyLibrary_LibraryType.valueOf,
        enumValues: SmithyLibrary_LibraryType.values)
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'filename')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'basePath',
        protoName: 'basePath')
    ..hasRequiredFields = false;

  SmithyLibrary._() : super();
  factory SmithyLibrary({
    $core.String? packageName,
    $core.String? serviceName,
    SmithyLibrary_LibraryType? libraryType,
    $core.String? filename,
    $core.String? basePath,
  }) {
    final _result = create();
    if (packageName != null) {
      _result.packageName = packageName;
    }
    if (serviceName != null) {
      _result.serviceName = serviceName;
    }
    if (libraryType != null) {
      _result.libraryType = libraryType;
    }
    if (filename != null) {
      _result.filename = filename;
    }
    if (basePath != null) {
      _result.basePath = basePath;
    }
    return _result;
  }
  factory SmithyLibrary.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SmithyLibrary.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SmithyLibrary clone() => SmithyLibrary()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SmithyLibrary copyWith(void Function(SmithyLibrary) updates) =>
      super.copyWith((message) => updates(message as SmithyLibrary))
          as SmithyLibrary; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SmithyLibrary create() => SmithyLibrary._();
  SmithyLibrary createEmptyInstance() => create();
  static $pb.PbList<SmithyLibrary> createRepeated() =>
      $pb.PbList<SmithyLibrary>();
  @$core.pragma('dart2js:noInline')
  static SmithyLibrary getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SmithyLibrary>(create);
  static SmithyLibrary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get packageName => $_getSZ(0);
  @$pb.TagNumber(1)
  set packageName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPackageName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPackageName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get serviceName => $_getSZ(1);
  @$pb.TagNumber(2)
  set serviceName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasServiceName() => $_has(1);
  @$pb.TagNumber(2)
  void clearServiceName() => clearField(2);

  @$pb.TagNumber(3)
  SmithyLibrary_LibraryType get libraryType => $_getN(2);
  @$pb.TagNumber(3)
  set libraryType(SmithyLibrary_LibraryType v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLibraryType() => $_has(2);
  @$pb.TagNumber(3)
  void clearLibraryType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get filename => $_getSZ(3);
  @$pb.TagNumber(4)
  set filename($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFilename() => $_has(3);
  @$pb.TagNumber(4)
  void clearFilename() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get basePath => $_getSZ(4);
  @$pb.TagNumber(5)
  set basePath($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasBasePath() => $_has(4);
  @$pb.TagNumber(5)
  void clearBasePath() => clearField(5);
}

class CodegenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CodegenRequest',
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'settings',
        entryClassName: 'CodegenRequest.SettingsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'serviceName',
        protoName: 'serviceName')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'json')
    ..hasRequiredFields = false;

  CodegenRequest._() : super();
  factory CodegenRequest({
    $core.Map<$core.String, $core.String>? settings,
    $core.String? serviceName,
    $core.String? json,
  }) {
    final _result = create();
    if (settings != null) {
      _result.settings.addAll(settings);
    }
    if (serviceName != null) {
      _result.serviceName = serviceName;
    }
    if (json != null) {
      _result.json = json;
    }
    return _result;
  }
  factory CodegenRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CodegenRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CodegenRequest clone() => CodegenRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CodegenRequest copyWith(void Function(CodegenRequest) updates) =>
      super.copyWith((message) => updates(message as CodegenRequest))
          as CodegenRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CodegenRequest create() => CodegenRequest._();
  CodegenRequest createEmptyInstance() => create();
  static $pb.PbList<CodegenRequest> createRepeated() =>
      $pb.PbList<CodegenRequest>();
  @$core.pragma('dart2js:noInline')
  static CodegenRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CodegenRequest>(create);
  static CodegenRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get settings => $_getMap(0);

  @$pb.TagNumber(2)
  $core.String get serviceName => $_getSZ(1);
  @$pb.TagNumber(2)
  set serviceName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasServiceName() => $_has(1);
  @$pb.TagNumber(2)
  void clearServiceName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get json => $_getSZ(2);
  @$pb.TagNumber(3)
  set json($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasJson() => $_has(2);
  @$pb.TagNumber(3)
  void clearJson() => clearField(3);
}

class CodegenResponse_Library extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CodegenResponse.Library',
      createEmptyInstance: create)
    ..aOM<SmithyLibrary>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        subBuilder: SmithyLibrary.create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'definition')
    ..hasRequiredFields = false;

  CodegenResponse_Library._() : super();
  factory CodegenResponse_Library({
    SmithyLibrary? metadata,
    $core.String? definition,
  }) {
    final _result = create();
    if (metadata != null) {
      _result.metadata = metadata;
    }
    if (definition != null) {
      _result.definition = definition;
    }
    return _result;
  }
  factory CodegenResponse_Library.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CodegenResponse_Library.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CodegenResponse_Library clone() =>
      CodegenResponse_Library()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CodegenResponse_Library copyWith(
          void Function(CodegenResponse_Library) updates) =>
      super.copyWith((message) => updates(message as CodegenResponse_Library))
          as CodegenResponse_Library; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CodegenResponse_Library create() => CodegenResponse_Library._();
  CodegenResponse_Library createEmptyInstance() => create();
  static $pb.PbList<CodegenResponse_Library> createRepeated() =>
      $pb.PbList<CodegenResponse_Library>();
  @$core.pragma('dart2js:noInline')
  static CodegenResponse_Library getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CodegenResponse_Library>(create);
  static CodegenResponse_Library? _defaultInstance;

  @$pb.TagNumber(1)
  SmithyLibrary get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(SmithyLibrary v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  SmithyLibrary ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get definition => $_getSZ(1);
  @$pb.TagNumber(2)
  set definition($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDefinition() => $_has(1);
  @$pb.TagNumber(2)
  void clearDefinition() => clearField(2);
}

class CodegenResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CodegenResponse',
      createEmptyInstance: create)
    ..aOB(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'success')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pubspec')
    ..pc<CodegenResponse_Library>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'libraries',
        $pb.PbFieldType.PM,
        subBuilder: CodegenResponse_Library.create)
    ..hasRequiredFields = false;

  CodegenResponse._() : super();
  factory CodegenResponse({
    $core.bool? success,
    $core.String? error,
    $core.String? pubspec,
    $core.Iterable<CodegenResponse_Library>? libraries,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (error != null) {
      _result.error = error;
    }
    if (pubspec != null) {
      _result.pubspec = pubspec;
    }
    if (libraries != null) {
      _result.libraries.addAll(libraries);
    }
    return _result;
  }
  factory CodegenResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CodegenResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CodegenResponse clone() => CodegenResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CodegenResponse copyWith(void Function(CodegenResponse) updates) =>
      super.copyWith((message) => updates(message as CodegenResponse))
          as CodegenResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CodegenResponse create() => CodegenResponse._();
  CodegenResponse createEmptyInstance() => create();
  static $pb.PbList<CodegenResponse> createRepeated() =>
      $pb.PbList<CodegenResponse>();
  @$core.pragma('dart2js:noInline')
  static CodegenResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CodegenResponse>(create);
  static CodegenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pubspec => $_getSZ(2);
  @$pb.TagNumber(3)
  set pubspec($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPubspec() => $_has(2);
  @$pb.TagNumber(3)
  void clearPubspec() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<CodegenResponse_Library> get libraries => $_getList(3);
}
