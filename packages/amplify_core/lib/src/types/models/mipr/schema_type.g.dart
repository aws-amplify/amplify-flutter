// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AppSyncScalar _$id = const AppSyncScalar._('id');
const AppSyncScalar _$string = const AppSyncScalar._('string');
const AppSyncScalar _$int_ = const AppSyncScalar._('int_');
const AppSyncScalar _$float = const AppSyncScalar._('float');
const AppSyncScalar _$boolean = const AppSyncScalar._('boolean');
const AppSyncScalar _$awsDate = const AppSyncScalar._('awsDate');
const AppSyncScalar _$awsTime = const AppSyncScalar._('awsTime');
const AppSyncScalar _$awsDateTime = const AppSyncScalar._('awsDateTime');
const AppSyncScalar _$awsTimestamp = const AppSyncScalar._('awsTimestamp');
const AppSyncScalar _$awsEmail = const AppSyncScalar._('awsEmail');
const AppSyncScalar _$awsJson = const AppSyncScalar._('awsJson');
const AppSyncScalar _$awsPhone = const AppSyncScalar._('awsPhone');
const AppSyncScalar _$awsUrl = const AppSyncScalar._('awsUrl');
const AppSyncScalar _$awsIpAddress = const AppSyncScalar._('awsIpAddress');

AppSyncScalar _$AppSyncScalarValueOf(String name) {
  switch (name) {
    case 'id':
      return _$id;
    case 'string':
      return _$string;
    case 'int_':
      return _$int_;
    case 'float':
      return _$float;
    case 'boolean':
      return _$boolean;
    case 'awsDate':
      return _$awsDate;
    case 'awsTime':
      return _$awsTime;
    case 'awsDateTime':
      return _$awsDateTime;
    case 'awsTimestamp':
      return _$awsTimestamp;
    case 'awsEmail':
      return _$awsEmail;
    case 'awsJson':
      return _$awsJson;
    case 'awsPhone':
      return _$awsPhone;
    case 'awsUrl':
      return _$awsUrl;
    case 'awsIpAddress':
      return _$awsIpAddress;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AppSyncScalar> _$AppSyncScalarValues =
    new BuiltSet<AppSyncScalar>(const <AppSyncScalar>[
  _$id,
  _$string,
  _$int_,
  _$float,
  _$boolean,
  _$awsDate,
  _$awsTime,
  _$awsDateTime,
  _$awsTimestamp,
  _$awsEmail,
  _$awsJson,
  _$awsPhone,
  _$awsUrl,
  _$awsIpAddress,
]);

Serializer<AppSyncScalar> _$appSyncScalarSerializer =
    new _$AppSyncScalarSerializer();

class _$AppSyncScalarSerializer implements PrimitiveSerializer<AppSyncScalar> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'id': 'ID',
    'string': 'String',
    'int_': 'Int',
    'float': 'Float',
    'boolean': 'Boolean',
    'awsDate': 'AWSDate',
    'awsTime': 'AWSTime',
    'awsDateTime': 'AWSDateTime',
    'awsTimestamp': 'AWSTimestamp',
    'awsEmail': 'AWSEmail',
    'awsJson': 'AWSJSON',
    'awsPhone': 'AWSPhone',
    'awsUrl': 'AWSURL',
    'awsIpAddress': 'AWSIPAddress',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ID': 'id',
    'String': 'string',
    'Int': 'int_',
    'Float': 'float',
    'Boolean': 'boolean',
    'AWSDate': 'awsDate',
    'AWSTime': 'awsTime',
    'AWSDateTime': 'awsDateTime',
    'AWSTimestamp': 'awsTimestamp',
    'AWSEmail': 'awsEmail',
    'AWSJSON': 'awsJson',
    'AWSPhone': 'awsPhone',
    'AWSURL': 'awsUrl',
    'AWSIPAddress': 'awsIpAddress',
  };

  @override
  final Iterable<Type> types = const <Type>[AppSyncScalar];
  @override
  final String wireName = 'AppSyncScalar';

  @override
  Object serialize(Serializers serializers, AppSyncScalar object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AppSyncScalar deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AppSyncScalar.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
