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

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'schema_type.g.dart';

/// {@template amplify_core.models.appsync_scalar}
/// A primitive GraphQL type used in an AppSync schema.
/// {@endtemplate}
class AppSyncScalar extends EnumClass {
  const AppSyncScalar._(super.name);

  /// {@template amplify_core.models.appsync_scalar_id}
  /// A unique identifier for an object. This scalar is serialized like a
  /// `String` but isn't meant to be human-readable.
  /// {@endtemplate}
  @BuiltValueEnumConst(wireName: 'ID')
  static const AppSyncScalar id = _$id;

  /// {@template amplify_core.models.appsync_scalar_string}
  /// A UTF-8 character sequence.
  /// {@endtemplate}
  @BuiltValueEnumConst(wireName: 'String')
  static const AppSyncScalar string = _$string;

  /// {@template amplify_core.models.appsync_scalar_int}
  /// An integer value between -(2^31) and 2^31-1.
  /// {@endtemplate}
  @BuiltValueEnumConst(wireName: 'Int')
  static const AppSyncScalar int_ = _$int_;

  /// {@template amplify_core.models.appsync_scalar_float}
  /// An IEEE 754 floating point value.
  /// {@endtemplate}
  @BuiltValueEnumConst(wireName: 'Float')
  static const AppSyncScalar float = _$float;

  /// {@template amplify_core.models.appsync_scalar_boolean}
  /// A Boolean value, either `true` or `false`.
  /// {@endtemplate}
  @BuiltValueEnumConst(wireName: 'Boolean')
  static const AppSyncScalar boolean = _$boolean;

  /// {@template amplify_core.models.appsync_scalar_aws_date}
  /// An extended [ISO 8601 date](https://en.wikipedia.org/wiki/ISO_8601#Calendar_dates)
  /// string in the format `YYYY-MM-DD`.
  ///
  /// > **Note**: The `AWSDate`, `AWSTime`, and `AWSDateTime` scalars can
  /// optionally include a [time zone offset](https://en.wikipedia.org/wiki/ISO_8601#Time_zone_designators).
  /// For example, the values `1970-01-01Z`, `1970-01-01-07:00`, and
  /// `1970-01-01+05:30` are all valid for `AWSDate`. The time zone offset must
  /// be either `Z` (UTC) or an offset in hours and minutes (and, optionally,
  /// seconds). For example, `±hh:mm:ss`. The seconds field in the time zone
  /// offset is considered valid even though it's not part of the ISO 8601
  /// standard.
  /// {@endtemplate}
  @BuiltValueEnumConst(wireName: 'AWSDate')
  static const AppSyncScalar awsDate = _$awsDate;

  /// {@template amplify_core.models.appsync_scalar_aws_time}
  /// An extended [ISO 8601 time](https://en.wikipedia.org/wiki/ISO_8601#Times)
  /// string in the format `hh:mm:ss.sss`.
  ///
  /// > **Note**: The `AWSDate`, `AWSTime`, and `AWSDateTime` scalars can
  /// optionally include a [time zone offset](https://en.wikipedia.org/wiki/ISO_8601#Time_zone_designators).
  /// For example, the values `1970-01-01Z`, `1970-01-01-07:00`, and
  /// `1970-01-01+05:30` are all valid for `AWSDate`. The time zone offset must
  /// be either `Z` (UTC) or an offset in hours and minutes (and, optionally,
  /// seconds). For example, `±hh:mm:ss`. The seconds field in the time zone
  /// offset is considered valid even though it's not part of the ISO 8601
  /// standard.
  /// {@endtemplate}
  @BuiltValueEnumConst(wireName: 'AWSTime')
  static const AppSyncScalar awsTime = _$awsTime;

  /// {@template amplify_core.models.appsync_scalar_aws_date_time}
  /// An extended [ISO 8601 date and time](https://en.wikipedia.org/wiki/ISO_8601#Combined_date_and_time_representations)
  /// string in the format `YYYY-MM-DDThh:mm:ss.sssZ`.
  ///
  /// > **Note**: The `AWSDate`, `AWSTime`, and `AWSDateTime` scalars can
  /// optionally include a [time zone offset](https://en.wikipedia.org/wiki/ISO_8601#Time_zone_designators).
  /// For example, the values `1970-01-01Z`, `1970-01-01-07:00`, and
  /// `1970-01-01+05:30` are all valid for `AWSDate`. The time zone offset must
  /// be either `Z` (UTC) or an offset in hours and minutes (and, optionally,
  /// seconds). For example, `±hh:mm:ss`. The seconds field in the time zone
  /// offset is considered valid even though it's not part of the ISO 8601
  /// standard.
  /// {@endtemplate}
  @BuiltValueEnumConst(wireName: 'AWSDateTime')
  static const AppSyncScalar awsDateTime = _$awsDateTime;

  /// {@template amplify_core.models.appsync_scalar_aws_timestamp}
  /// An integer value representing the number of seconds before or after
  /// `1970-01-01-T00:00Z`.
  /// {@endtemplate}
  @BuiltValueEnumConst(wireName: 'AWSTimestamp')
  static const AppSyncScalar awsTimestamp = _$awsTimestamp;

  /// {@template amplify_core.models.appsync_scalar_aws_email}
  /// An email address in the format local-part@domain-part as defined by
  /// [RFC 822](https://tools.ietf.org/html/rfc822).
  /// {@endtemplate}
  @BuiltValueEnumConst(wireName: 'AWSEmail')
  static const AppSyncScalar awsEmail = _$awsEmail;

  /// {@template amplify_core.models.appsync_scalar_aws_json}
  /// A JSON string.
  ///
  /// Any valid JSON construct is automatically parsed and loaded in the
  /// resolver mapping templates as maps, lists, or scalar values rather than
  /// as the literal input strings. Unquoted strings or otherwise invalid JSON
  /// result in a GraphQL validation error.
  /// {@endtemplate}
  @BuiltValueEnumConst(wireName: 'AWSJSON')
  static const AppSyncScalar awsJson = _$awsJson;

  /// {@template amplify_core.models.appsync_scalar_aws_phone}
  /// A phone number.
  ///
  /// This value is stored as a string. Phone numbers can contain either spaces
  /// or hyphens to separate digit groups. Phone numbers without a country code
  /// are assumed to be US/North American numbers adhering to the
  /// [North American Numbering Plan (NANP)](https://en.wikipedia.org/wiki/North_American_Numbering_Plan).
  /// {@endtemplate}
  @BuiltValueEnumConst(wireName: 'AWSPhone')
  static const AppSyncScalar awsPhone = _$awsPhone;

  /// {@template amplify_core.models.appsync_scalar_aws_url}
  ///
  /// {@endtemplate}
  @BuiltValueEnumConst(wireName: 'AWSURL')
  static const AppSyncScalar awsUrl = _$awsUrl;

  /// {@template amplify_core.models.appsync_scalar_string}
  /// A URL as defined by [RFC 1738](https://tools.ietf.org/html/rfc1738).
  ///
  /// For example, `https://www.amazon.com/dp/B000NZW3KC/` or `mailto:example@example.com`.
  /// URLs must contain a schema (`http`, `mailto`) and can't contain two
  /// forward slashes (`//`) in the path part.
  /// {@endtemplate}
  @BuiltValueEnumConst(wireName: 'AWSIPAddress')
  static const AppSyncScalar awsIpAddress = _$awsIpAddress;

  /// The values of [AppSyncScalar].
  static BuiltSet<AppSyncScalar> get values => _$AppSyncScalarValues;

  /// The [AppSyncScalar] value corresponding to [name].
  static AppSyncScalar valueOf(String name) => _$AppSyncScalarValueOf(name);

  /// Bridge for legacy codegen.
  // TODO(dnys1): Remove with platform channel code
  static AppSyncScalar? fromLegacyType(ModelFieldTypeEnum type) {
    switch (type) {
      case ModelFieldTypeEnum.string:
        return string;
      case ModelFieldTypeEnum.int:
        return int_;
      case ModelFieldTypeEnum.double:
        return float;
      case ModelFieldTypeEnum.date:
        return awsDate;
      case ModelFieldTypeEnum.dateTime:
        return awsDateTime;
      case ModelFieldTypeEnum.time:
        return awsTime;
      case ModelFieldTypeEnum.timestamp:
        return awsTimestamp;
      case ModelFieldTypeEnum.bool:
        return boolean;
      case ModelFieldTypeEnum.enumeration:
      case ModelFieldTypeEnum.model:
      case ModelFieldTypeEnum.collection:
      case ModelFieldTypeEnum.embedded:
      case ModelFieldTypeEnum.embeddedCollection:
        return null;
    }
  }

  /// The serializer for [AppSyncScalar].
  static Serializer<AppSyncScalar> get serializer => _$appSyncScalarSerializer;
}

/// {@template amplify_core.models.schema_type}
/// An Amplify schema type, either a scalar, model, non-model, or enum.
///
/// - [ScalarType]
/// - [ModelType]
/// - [NonModelType]
/// - [EnumType]
/// - [ListType]
/// {@endtemplate}
abstract class SchemaType with AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.models.schema_type}
  const SchemaType();

  /// {@template amplify_core.models.scalar_type}
  /// A scalar (primitive) type, e.g. `ID`, `String`, `AWSDateTime`.
  ///
  /// AppSync defines 9 [scalar types](https://docs.aws.amazon.com/appsync/latest/devguide/scalars.html)
  /// on top of the default 5 GraphQL scalar types (`ID`, `String`, `Int`,
  /// `Float`, `Boolean`):
  /// - [AppSyncScalar.awsDate]
  /// - [AppSyncScalar.awsTime]
  /// - [AppSyncScalar.awsDateTime]
  /// - [AppSyncScalar.awsTimestamp]
  /// - [AppSyncScalar.awsEmail]
  /// - [AppSyncScalar.awsJson]
  /// - [AppSyncScalar.awsPhone]
  /// - [AppSyncScalar.awsUrl]
  /// - [AppSyncScalar.awsIpAddress]
  /// {@endtemplate}
  const factory SchemaType.scalar(
    AppSyncScalar value, {
    bool isRequired,
  }) = ScalarType._;

  /// {@template amplify_core.models.model_type}
  /// A custom structure with an `@model` directive.
  ///
  /// ```graphql
  /// # `MyModel` is a model type.
  /// type MyModel @model {
  ///   id: ID!
  /// }
  /// ```
  /// {@endtemplate}
  const factory SchemaType.model(
    String name, {
    bool isRequired,
  }) = ModelType._;

  /// {@template amplify_core.models.non_model_type}
  /// A custom structure with no `@model` directive.
  ///
  /// ```graphql
  /// # `MyNonModel` is a non-model type.
  /// type MyNonModel {
  ///   name: String!
  /// }
  /// ```
  /// {@endtemplate}
  const factory SchemaType.nonModel(
    String name, {
    bool isRequired,
  }) = NonModelType._;

  /// {@template amplify_core.models.enum_type}
  /// A custom enumeration.
  ///
  /// ```graphql
  /// # `MyEnum` is an enum type with two discrete values.
  /// enum MyEnum {
  ///   apples
  ///   oranges
  /// }
  /// ```
  /// {@endtemplate}
  const factory SchemaType.enum_(
    String name, {
    bool isRequired,
  }) = EnumType._;

  /// {@template amplify_core.models.list_type}
  /// A list of another [SchemaType].
  ///
  /// ```graphql
  /// type MyNonModel {
  ///   name: String!
  /// }
  ///
  /// # `myList` is a list type of `MyNonModel` types.
  /// type MyModel @model {
  ///   id: ID!
  ///   nonModels: [MyNonModel]
  /// }
  /// ```
  /// {@endtemplate}
  const factory SchemaType.list(
    SchemaType elementType, {
    bool isRequired,
  }) = ListType._;

  /// Bridge method for legacy codegen.
  // TODO(dnys1): Remove with platform channel code
  factory SchemaType.fromLegacyType(
    ModelFieldType type, {
    required bool isRequired,
    required bool isArray,
  }) {
    final SchemaType baseType;
    switch (type.fieldType) {
      case ModelFieldTypeEnum.string:
      case ModelFieldTypeEnum.int:
      case ModelFieldTypeEnum.double:
      case ModelFieldTypeEnum.date:
      case ModelFieldTypeEnum.dateTime:
      case ModelFieldTypeEnum.time:
      case ModelFieldTypeEnum.timestamp:
      case ModelFieldTypeEnum.bool:
        baseType = SchemaType.scalar(
          AppSyncScalar.fromLegacyType(type.fieldType)!,
          isRequired: isRequired,
        );
        break;
      case ModelFieldTypeEnum.enumeration:
        baseType = EnumType._(null, isRequired: isRequired);
        break;
      case ModelFieldTypeEnum.model:
        baseType = SchemaType.model(
          type.ofModelName!,
          isRequired: isRequired,
        );
        break;
      case ModelFieldTypeEnum.collection:
        final modelType = type.ofModelName!;
        if (modelType == 'enumeration') {
          baseType = const EnumType._(null);
        } else if (ModelFieldTypeEnum.values
            .map((el) => el.name)
            .contains(modelType)) {
          baseType = SchemaType.scalar(
            AppSyncScalar.fromLegacyType(
              ModelFieldTypeEnum.values.byName(modelType),
            )!,
          );
        } else {
          baseType = SchemaType.model(modelType);
        }
        break;
      case ModelFieldTypeEnum.embedded:
        baseType = SchemaType.nonModel(
          type.ofCustomTypeName!,
          isRequired: isRequired,
        );
        break;
      case ModelFieldTypeEnum.embeddedCollection:
        final customTypeName = type.ofCustomTypeName!;
        if (customTypeName == 'enumeration') {
          baseType = const EnumType._(null);
        } else {
          baseType = SchemaType.nonModel(customTypeName);
        }
        break;
    }

    if (isArray) {
      return SchemaType.list(baseType, isRequired: isRequired);
    }
    return baseType;
  }

  /// The name of the type, as defined in the schema.
  String get name;

  /// Whether the type is required (non-nullable) in this context.
  bool get isRequired;

  /// Bridge for legacy codegen.
  // TODO(dnys1): Remove with platform channel code
  ModelFieldType get asLegacyType {
    late ModelFieldTypeEnum fieldType;
    String? ofModelName;
    String? ofCustomTypeName;
    if (this is ScalarType) {
      switch ((this as ScalarType).value) {
        case AppSyncScalar.id:
        case AppSyncScalar.string:
        case AppSyncScalar.awsEmail:
        case AppSyncScalar.awsIpAddress:
        case AppSyncScalar.awsJson:
        case AppSyncScalar.awsPhone:
        case AppSyncScalar.awsUrl:
          fieldType = ModelFieldTypeEnum.string;
          break;
        case AppSyncScalar.awsDate:
          fieldType = ModelFieldTypeEnum.date;
          break;
        case AppSyncScalar.awsDateTime:
          fieldType = ModelFieldTypeEnum.dateTime;
          break;
        case AppSyncScalar.awsTime:
          fieldType = ModelFieldTypeEnum.time;
          break;
        case AppSyncScalar.awsTimestamp:
          fieldType = ModelFieldTypeEnum.timestamp;
          break;
        case AppSyncScalar.boolean:
          fieldType = ModelFieldTypeEnum.bool;
          break;
        case AppSyncScalar.float:
          fieldType = ModelFieldTypeEnum.double;
          break;
        case AppSyncScalar.int_:
          fieldType = ModelFieldTypeEnum.int;
          break;
      }
    } else if (this is ModelType) {
      fieldType = ModelFieldTypeEnum.model;
      ofModelName = (this as ModelType).name;
    } else if (this is NonModelType) {
      fieldType = ModelFieldTypeEnum.embedded;
      ofCustomTypeName = (this as NonModelType).name;
    } else if (this is EnumType) {
      fieldType = ModelFieldTypeEnum.enumeration;
    } else if (this is ListType) {
      final nestedType = (this as ListType).elementType.asLegacyType;
      switch (nestedType.fieldType) {
        case ModelFieldTypeEnum.string:
        case ModelFieldTypeEnum.int:
        case ModelFieldTypeEnum.double:
        case ModelFieldTypeEnum.date:
        case ModelFieldTypeEnum.dateTime:
        case ModelFieldTypeEnum.time:
        case ModelFieldTypeEnum.timestamp:
        case ModelFieldTypeEnum.bool:
        case ModelFieldTypeEnum.enumeration:
          fieldType = ModelFieldTypeEnum.collection;
          ofModelName = nestedType.fieldType.name;
          break;
        case ModelFieldTypeEnum.model:
          fieldType = ModelFieldTypeEnum.collection;
          ofModelName = nestedType.ofModelName;
          break;
        case ModelFieldTypeEnum.embedded:
          fieldType = ModelFieldTypeEnum.embeddedCollection;
          ofCustomTypeName = nestedType.ofCustomTypeName!;
          break;
        case ModelFieldTypeEnum.collection:
        case ModelFieldTypeEnum.embeddedCollection:
          throw StateError('Unreachable');
      }
    }
    return ModelFieldType(
      fieldType,
      ofModelName: ofModelName,
      ofCustomTypeName: ofCustomTypeName,
    );
  }

  SchemaType rebuild({
    bool? isRequired,
  });

  @override
  Map<String, Object?> toJson() {
    return serializers.serializeWith(serializer, this) as Map<String, Object?>;
  }

  @override
  String toString() => 'SchemaType("$name{${isRequired ? '!' : ''}}")';

  /// The serializer for [SchemaType].
  static Serializer<SchemaType> get serializer => const _SchemaTypeSerializer();
}

/// {@macro amplify_core.models.scalar_type}
class ScalarType extends SchemaType with AWSEquatable<ScalarType> {
  /// {@macro amplify_core.models.scalar_type}
  const ScalarType._(this.value, {this.isRequired = false});

  /// The scalar type.
  final AppSyncScalar value;

  @override
  String get name => value.name;

  @override
  final bool isRequired;

  @override
  List<Object?> get props => [value, isRequired];

  @override
  SchemaType rebuild({bool? isRequired}) {
    return ScalarType._(value, isRequired: isRequired ?? this.isRequired);
  }
}

/// {@macro amplify_core.models.model_type}
class ModelType extends SchemaType with AWSEquatable<ModelType> {
  /// {@macro amplify_core.models.model_type}
  const ModelType._(this.name, {this.isRequired = false});

  @override
  final String name;

  @override
  final bool isRequired;

  @override
  List<Object?> get props => [name, isRequired];

  @override
  SchemaType rebuild({bool? isRequired}) {
    return ModelType._(name, isRequired: isRequired ?? this.isRequired);
  }
}

/// {@macro amplify_core.models.non_model_type}
class NonModelType extends SchemaType with AWSEquatable<NonModelType> {
  /// {@macro amplify_core.models.non_model_type}
  const NonModelType._(this.name, {this.isRequired = false});

  @override
  final String name;

  @override
  final bool isRequired;

  @override
  List<Object?> get props => [name, isRequired];

  @override
  SchemaType rebuild({bool? isRequired}) {
    return NonModelType._(name, isRequired: isRequired ?? this.isRequired);
  }
}

/// {@macro amplify_core.models.enum_type}
class EnumType extends SchemaType with AWSEquatable<EnumType> {
  /// {@macro amplify_core.models.enum_type}
  const EnumType._(this._name, {this.isRequired = false});

  /// Bridge for legacy codegen.
  // TODO(dnys1): Remove with platform channel code
  final String? _name;

  @override
  String get name => _name!;

  @override
  final bool isRequired;

  @override
  List<Object?> get props => [_name, isRequired];

  @override
  SchemaType rebuild({bool? isRequired}) {
    return EnumType._(name, isRequired: isRequired ?? this.isRequired);
  }
}

/// {@macro amplify_core.models.list_type}
class ListType extends SchemaType with AWSEquatable<ListType> {
  /// {@macro amplify_core.models.list_type}
  const ListType._(this.elementType, {this.isRequired = false});

  /// The type of the list's element.
  final SchemaType elementType;

  @override
  String get name => '[${elementType.name}]';

  @override
  final bool isRequired;

  @override
  List<Object?> get props => [elementType, isRequired];

  @override
  String toString() => 'SchemaType("$elementType{${isRequired ? '!' : ''}}")';

  @override
  SchemaType rebuild({bool? isRequired}) {
    return ListType._(elementType, isRequired: isRequired ?? this.isRequired);
  }
}

class _SchemaTypeSerializer implements StructuredSerializer<SchemaType> {
  const _SchemaTypeSerializer();

  @override
  SchemaType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final item = serialized.toList();
    final type = item[0] as String;
    final value = item[1];
    final isRequired = item[2] as bool;
    switch (type) {
      case 'scalar':
        return SchemaType.scalar(
          serializers.deserializeWith(AppSyncScalar.serializer, value as String)
              as AppSyncScalar,
          isRequired: isRequired,
        );
      case 'model':
        return SchemaType.model(
          value as String,
          isRequired: isRequired,
        );
      case 'nonModel':
        return SchemaType.nonModel(
          value as String,
          isRequired: isRequired,
        );
      case 'enum':
        return SchemaType.enum_(
          value as String,
          isRequired: isRequired,
        );
      case 'list':
        return SchemaType.list(
          serializers.deserializeWith(this, value as String) as SchemaType,
          isRequired: isRequired,
        );
    }
    throw ArgumentError('Invalid SchemaType: [$type, $value, $isRequired]');
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SchemaType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is ScalarType) {
      return [
        'scalar',
        serializers.serializeWith(AppSyncScalar.serializer, object.value),
        object.isRequired,
      ];
    }
    if (object is ModelType) {
      return ['model', object.name, object.isRequired];
    }
    if (object is NonModelType) {
      return ['nonModel', object.name, object.isRequired];
    }
    if (object is EnumType) {
      return ['enum', object.name, object.isRequired];
    }
    if (object is ListType) {
      return [
        'list',
        serializers.serializeWith(this, object.elementType),
        object.isRequired,
      ];
    }
    throw ArgumentError('Invalid SchemaType: $object (${object.runtimeType})');
  }

  @override
  Iterable<Type> get types => const [
        SchemaType,
        ScalarType,
        ModelType,
        NonModelType,
        EnumType,
        ListType,
      ];

  @override
  String get wireName => 'SchemaType';
}
