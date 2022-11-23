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

import 'dart:core' as core;
import 'dart:core';

import 'package:amplify_codegen/src/helpers/types.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;
import 'package:aws_common/aws_common.dart' as aws_common;
import 'package:code_builder/code_builder.dart';
import 'package:meta/meta.dart' as meta;

/// Dart types used in code generation.
abstract class DartTypes {
  DartTypes._();

  /// Creates a reference for the [scalar] type.
  static Reference scalar(mipr.AppSyncScalar scalar) {
    switch (scalar) {
      case mipr.AppSyncScalar.awsDate:
        return DartTypes.amplifyCore.temporalDate;
      case mipr.AppSyncScalar.awsDateTime:
        return DartTypes.amplifyCore.temporalDateTime;
      case mipr.AppSyncScalar.awsTime:
        return DartTypes.amplifyCore.temporalTime;
      case mipr.AppSyncScalar.awsTimestamp:
        return DartTypes.amplifyCore.temporalTimestamp;
      case mipr.AppSyncScalar.awsJson:
        return DartTypes.core.object;
      case mipr.AppSyncScalar.awsUrl:
        return DartTypes.core.uri;
      case mipr.AppSyncScalar.boolean:
        return DartTypes.core.bool;
      case mipr.AppSyncScalar.float:
        return DartTypes.core.double;
      case mipr.AppSyncScalar.id:
      case mipr.AppSyncScalar.string:
      case mipr.AppSyncScalar.awsEmail:
      case mipr.AppSyncScalar.awsPhone:
      case mipr.AppSyncScalar.awsIpAddress:
        return DartTypes.core.string;
      case mipr.AppSyncScalar.int_:
        return DartTypes.core.int;
    }
    throw ArgumentError('Invalid type: $scalar');
  }

  /// `package:amplify_core` types.
  static const amplifyCore = _AmplifyCore();

  /// `package:aws_common` types.
  static const awsCommon = _AwsCommon();

  /// `dart:core` types.
  static const core = _Core();

  /// `package:meta` types.
  static const meta = _Meta();
}

class _AmplifyCore {
  const _AmplifyCore();

  static const _url = 'package:amplify_core/amplify_core.dart';

  /// Creates an [amplify_core.AsyncModel] reference.
  TypeReference asyncModel([
    Reference? modelIdentifierType,
    Reference? modelType,
    Reference? partialModelType,
    Reference? selectedModelType,
  ]) =>
      TypeReference(
        (t) => t
          ..symbol = 'AsyncModel'
          ..url = _url
          ..types.addAll([
            if (modelIdentifierType != null) modelIdentifierType,
            if (modelType != null) modelType,
            if (partialModelType != null) partialModelType,
            if (selectedModelType != null) selectedModelType,
          ]),
      );

  /// Creates an [amplify_core.AsyncModelCollection] reference.
  TypeReference asyncModelCollection([
    Reference? modelIdentifierType,
    Reference? modelType,
    Reference? partialModelType,
    Reference? selectedModelType,
  ]) =>
      TypeReference(
        (t) => t
          ..symbol = 'AsyncModelCollection'
          ..url = _url
          ..types.addAll([
            if (modelIdentifierType != null) modelIdentifierType,
            if (modelType != null) modelType,
            if (partialModelType != null) partialModelType,
            if (selectedModelType != null) selectedModelType,
          ]),
      );

  Mipr get mipr => const Mipr._();

  /// Creates an [amplify_core.Model] reference.
  TypeReference model(
    Reference modelIdentifierType,
    Reference modelType,
  ) =>
      TypeReference(
        (t) => t
          ..symbol = 'Model'
          ..url = _url
          ..types.addAll([modelIdentifierType, modelType]),
      );

  /// Creates an [amplify_core.ModelFieldError] reference.
  Reference get modelFieldError => const Reference('ModelFieldError', _url);

  /// Creates an [amplify_core.ModelType] reference.
  TypeReference modelType(
    Reference modelIdentifierType,
    Reference modelType,
    Reference partialModelType,
  ) =>
      TypeReference(
        (t) => t
          ..symbol = 'ModelType'
          ..url = _url
          ..types.addAll([modelIdentifierType, modelType, partialModelType]),
      );

  /// Creates an [amplify_core.PartialModel] reference.
  TypeReference partialModel(
    Reference modelIdentifierType,
    Reference modelType,
  ) =>
      TypeReference(
        (t) => t
          ..symbol = 'PartialModel'
          ..url = _url
          ..types.addAll([modelIdentifierType, modelType]),
      );

  /// Creates an [amplify_core.NestedQueryField] reference.
  TypeReference nestedQueryField(
    Reference rootModelIdentifierType,
    Reference rootModelType,
    Reference modelIdentifierType,
    Reference modelType,
    Reference fieldType,
  ) =>
      TypeReference(
        (t) => t
          ..symbol = 'NestedQueryField'
          ..url = _url
          ..types.addAll([
            rootModelIdentifierType,
            rootModelType,
            modelIdentifierType,
            modelType,
            fieldType,
          ]),
      );

  /// Creates an [amplify_core.QueryField] reference.
  TypeReference queryField(
    Reference modelIdentifierType,
    Reference modelType,
    Reference fieldType,
  ) =>
      TypeReference(
        (t) => t
          ..symbol = 'QueryField'
          ..url = _url
          ..types.addAll([modelIdentifierType, modelType, fieldType]),
      );

  /// Creates an [amplify_core.RemoteModel] reference.
  TypeReference remoteModel(
    Reference modelIdentifierType,
    Reference modelType,
  ) =>
      TypeReference(
        (t) => t
          ..symbol = 'RemoteModel'
          ..url = _url
          ..types.addAll([modelIdentifierType, modelType]),
      );

  /// Creates an [amplify_core.TemporalTimestamp] reference.
  Reference get temporalTimestamp => const Reference('TemporalTimestamp', _url);

  /// Creates an [amplify_core.TemporalTime] reference.
  Reference get temporalTime => const Reference('TemporalTime', _url);

  /// Creates an [amplify_core.TemporalDateTime] reference.
  Reference get temporalDateTime => const Reference('TemporalDateTime', _url);

  /// Creates an [amplify_core.TemporalDate] reference.
  Reference get temporalDate => const Reference('TemporalDate', _url);
}

/// Model Intermediate Platform Representation (MIPR) types.
class Mipr {
  const Mipr._();

  /// URL for MIPR types.
  static const url = 'package:amplify_core/src/types/models/mipr.dart';

  /// Creates an [mipr.ModelTypeDefinition] reference.
  Reference get modelTypeDefinition =>
      const Reference('ModelTypeDefinition', url);

  /// Creates an [mipr.serializers] reference.
  Reference get serializers => const Reference('serializers', url);
}

/// `package:aws_common` types.
class _AwsCommon {
  const _AwsCommon();

  static const _url = 'package:amplify_core/amplify_core.dart';

  /// Creates an [aws_common.AWSDebuggable] reference.
  Reference get awsDebuggable => const Reference('AWSDebuggable', _url);

  /// Creates an [aws_common.AWSEquatable] reference.
  Reference awsEquatable(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'AWSEquatable'
          ..url = _url
          ..types.add(ref),
      );

  /// Creates an [aws_common.AWSSerializable] reference.
  Reference awsSerializable([Reference? type]) => TypeReference(
        (t) => t
          ..symbol = 'AWSSerializable'
          ..url = _url
          ..types.addAll([if (type != null) type]),
      );

  /// Creates a [aws_common.uuid] instance.
  Expression createUuid({core.bool secure = false}) => uuid.call([], {
        'secure': literalBool(secure),
      });

  /// Creates a [aws_common.uuid] reference.
  Reference get uuid => const Reference('uuid', _url);
}

/// `dart:core` types
class _Core {
  const _Core();

  static const _url = 'dart:core';

  /// Creates a [core.BigInt] reference.
  Reference get bigInt => const Reference('BigInt', _url);

  /// Creates a [core.bool] reference.
  Reference get bool => const Reference('bool', _url);

  /// Creates a [core.DateTime] reference.
  Reference get dateTime => const Reference('DateTime', _url);

  /// Creates a [core.Deprecated] reference.
  Reference get deprecated => const Reference('Deprecated', _url);

  /// Creates a [core.double] reference.
  Reference get double => const Reference('double', _url);

  /// Creates a [core.Duration] reference.
  Reference get duration => const Reference('Duration', _url);

  /// Creates a [core.Exception] reference.
  Reference get exception => const Reference('Exception', _url);

  /// Creates a [core.Function] reference.
  Reference get function => const Reference('Function', _url);

  /// Creates an [core.int] reference.
  Reference get int => const Reference('int', _url);

  /// Creates a [core.Iterable] reference.
  Reference iterable([Reference? ref]) => TypeReference(
        (t) => t
          ..symbol = 'Iterable'
          ..url = _url
          ..types.addAll([
            if (ref != null) ref,
          ]),
      );

  /// The "JSON" type: `Map<String, Object?>`
  Reference get json => DartTypes.core.map(
        DartTypes.core.string,
        DartTypes.core.object.nullable,
      );

  /// Creates a [core.List] reference.
  Reference list([Reference? ref]) => TypeReference(
        (t) => t
          ..symbol = 'List'
          ..url = _url
          ..types.addAll([
            if (ref != null) ref,
          ]),
      );

  /// Creates a [core.Map] reference.
  Reference map(Reference key, Reference value) => TypeReference(
        (t) => t
          ..symbol = 'Map'
          ..url = _url
          ..types.add(key)
          ..types.add(value),
      );

  /// Creates an [core.MapEntry] reference.
  Reference get mapEntry => const Reference('MapEntry', _url);

  /// Creates a [core.Null] reference.
  Reference get null$ => const Reference('Null', _url);

  /// Creates an [core.Object] reference.
  Reference get object => const Reference('Object', _url);

  /// Creates a [core.override] reference.
  Reference get override => const Reference('override', _url);

  /// Creates a [core.RegExp] reference.
  Reference get regExp => const Reference('RegExp', _url);

  /// Creates a [core.Set] reference.
  Reference set(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'Set'
          ..url = _url
          ..types.add(ref),
      );

  /// Create a [core.StateError] reference.
  Reference get stateError => const Reference('StateError', _url);

  /// Creates a [core.String] reference.
  Reference get string => const Reference('String', _url);

  /// Creates a [core.Type] reference.
  Reference get type => const Reference('Type', _url);

  /// Creates a [core.Uri] reference.
  Reference get uri => const Reference('Uri', _url);

  /// Creates a `void` reference.
  Reference get void$ => const Reference('void');
}

/// `package:meta` types.
class _Meta {
  const _Meta();

  static const _url = 'package:meta/meta.dart';

  /// Creates a [meta.immutable] reference.
  Reference get immutable => const Reference('immutable', _url);
}
