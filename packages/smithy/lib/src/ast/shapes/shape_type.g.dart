// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shape_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ShapeType _$apply = const ShapeType._('apply');
const ShapeType _$blob = const ShapeType._('blob');
const ShapeType _$boolean = const ShapeType._('boolean');
const ShapeType _$string = const ShapeType._('string');
const ShapeType _$timestamp = const ShapeType._('timestamp');
const ShapeType _$byte = const ShapeType._('byte');
const ShapeType _$short = const ShapeType._('short');
const ShapeType _$integer = const ShapeType._('integer');
const ShapeType _$long = const ShapeType._('long');
const ShapeType _$float = const ShapeType._('float');
const ShapeType _$document = const ShapeType._('document');
const ShapeType _$double = const ShapeType._('double');
const ShapeType _$bigDecimal = const ShapeType._('bigDecimal');
const ShapeType _$bigInteger = const ShapeType._('bigInteger');
const ShapeType _$list = const ShapeType._('list');
const ShapeType _$set = const ShapeType._('set');
const ShapeType _$map = const ShapeType._('map');
const ShapeType _$structure = const ShapeType._('structure');
const ShapeType _$union = const ShapeType._('union');
const ShapeType _$member = const ShapeType._('member');
const ShapeType _$service = const ShapeType._('service');
const ShapeType _$resource = const ShapeType._('resource');
const ShapeType _$operation = const ShapeType._('operation');

ShapeType _$shapeTypeValueOf(String name) {
  switch (name) {
    case 'apply':
      return _$apply;
    case 'blob':
      return _$blob;
    case 'boolean':
      return _$boolean;
    case 'string':
      return _$string;
    case 'timestamp':
      return _$timestamp;
    case 'byte':
      return _$byte;
    case 'short':
      return _$short;
    case 'integer':
      return _$integer;
    case 'long':
      return _$long;
    case 'float':
      return _$float;
    case 'document':
      return _$document;
    case 'double':
      return _$double;
    case 'bigDecimal':
      return _$bigDecimal;
    case 'bigInteger':
      return _$bigInteger;
    case 'list':
      return _$list;
    case 'set':
      return _$set;
    case 'map':
      return _$map;
    case 'structure':
      return _$structure;
    case 'union':
      return _$union;
    case 'member':
      return _$member;
    case 'service':
      return _$service;
    case 'resource':
      return _$resource;
    case 'operation':
      return _$operation;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ShapeType> _$shapeTypeValues =
    new BuiltSet<ShapeType>(const <ShapeType>[
  _$apply,
  _$blob,
  _$boolean,
  _$string,
  _$timestamp,
  _$byte,
  _$short,
  _$integer,
  _$long,
  _$float,
  _$document,
  _$double,
  _$bigDecimal,
  _$bigInteger,
  _$list,
  _$set,
  _$map,
  _$structure,
  _$union,
  _$member,
  _$service,
  _$resource,
  _$operation,
]);

Serializer<ShapeType> _$shapeTypeSerializer = new _$ShapeTypeSerializer();

class _$ShapeTypeSerializer implements PrimitiveSerializer<ShapeType> {
  @override
  final Iterable<Type> types = const <Type>[ShapeType];
  @override
  final String wireName = 'ShapeType';

  @override
  Object serialize(Serializers serializers, ShapeType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  ShapeType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ShapeType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
