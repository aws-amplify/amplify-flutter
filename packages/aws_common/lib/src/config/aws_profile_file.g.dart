// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_profile_file.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AWSProfileFileType _$config = const AWSProfileFileType._('config');
const AWSProfileFileType _$credentials =
    const AWSProfileFileType._('credentials');

AWSProfileFileType _$AWSProfileFileTypeValueOf(String name) {
  switch (name) {
    case 'config':
      return _$config;
    case 'credentials':
      return _$credentials;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AWSProfileFileType> _$AWSProfileFileTypeValues =
    new BuiltSet<AWSProfileFileType>(const <AWSProfileFileType>[
  _$config,
  _$credentials,
]);

Serializers _$_serializers = (new Serializers().toBuilder()
      ..add(AWSProfile.serializer)
      ..add(AWSProfileFile.serializer)
      ..add(AWSProfileFileType.serializer)
      ..add(AWSProperty.serializer)
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(AWSProfile)]),
          () => new MapBuilder<String, AWSProfile>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(AWSProperty)]),
          () => new MapBuilder<String, AWSProperty>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(AWSProperty)]),
          () => new MapBuilder<String, AWSProperty>()))
    .build();
Serializer<AWSProfileFileType> _$aWSProfileFileTypeSerializer =
    new _$AWSProfileFileTypeSerializer();
Serializer<AWSProfileFile> _$aWSProfileFileSerializer =
    new _$AWSProfileFileSerializer();
Serializer<AWSProfile> _$aWSProfileSerializer = new _$AWSProfileSerializer();
Serializer<AWSProperty> _$aWSPropertySerializer = new _$AWSPropertySerializer();

class _$AWSProfileFileTypeSerializer
    implements PrimitiveSerializer<AWSProfileFileType> {
  @override
  final Iterable<Type> types = const <Type>[AWSProfileFileType];
  @override
  final String wireName = 'AWSProfileFileType';

  @override
  Object serialize(Serializers serializers, AWSProfileFileType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  AWSProfileFileType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AWSProfileFileType.valueOf(serialized as String);
}

class _$AWSProfileFileSerializer
    implements StructuredSerializer<AWSProfileFile> {
  @override
  final Iterable<Type> types = const [AWSProfileFile, _$AWSProfileFile];
  @override
  final String wireName = 'AWSProfileFile';

  @override
  Iterable<Object?> serialize(Serializers serializers, AWSProfileFile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'profiles',
      serializers.serialize(object.profiles,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(AWSProfile)])),
    ];

    return result;
  }

  @override
  AWSProfileFile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AWSProfileFileBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'profiles':
          result.profiles.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(AWSProfile)
              ]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$AWSProfileSerializer implements StructuredSerializer<AWSProfile> {
  @override
  final Iterable<Type> types = const [AWSProfile, _$AWSProfile];
  @override
  final String wireName = 'AWSProfile';

  @override
  Iterable<Object?> serialize(Serializers serializers, AWSProfile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'properties',
      serializers.serialize(object.properties,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(AWSProperty)])),
    ];

    return result;
  }

  @override
  AWSProfile deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AWSProfileBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'properties':
          result.properties.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(AWSProperty)
              ]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$AWSPropertySerializer implements StructuredSerializer<AWSProperty> {
  @override
  final Iterable<Type> types = const [AWSProperty, _$AWSProperty];
  @override
  final String wireName = 'AWSProperty';

  @override
  Iterable<Object?> serialize(Serializers serializers, AWSProperty object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
      'subProperties',
      serializers.serialize(object.subProperties,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(AWSProperty)])),
    ];

    return result;
  }

  @override
  AWSProperty deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AWSPropertyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'subProperties':
          result.subProperties.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(AWSProperty)
              ]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$AWSProfileFile extends AWSProfileFile {
  @override
  final BuiltMap<String, AWSProfile> profiles;

  factory _$AWSProfileFile([void Function(AWSProfileFileBuilder)? updates]) =>
      (new AWSProfileFileBuilder()..update(updates))._build();

  _$AWSProfileFile._({required this.profiles}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        profiles, r'AWSProfileFile', 'profiles');
  }

  @override
  AWSProfileFile rebuild(void Function(AWSProfileFileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSProfileFileBuilder toBuilder() =>
      new AWSProfileFileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSProfileFile && profiles == other.profiles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, profiles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AWSProfileFile')
          ..add('profiles', profiles))
        .toString();
  }
}

class AWSProfileFileBuilder
    implements Builder<AWSProfileFile, AWSProfileFileBuilder> {
  _$AWSProfileFile? _$v;

  MapBuilder<String, AWSProfile>? _profiles;
  MapBuilder<String, AWSProfile> get profiles =>
      _$this._profiles ??= new MapBuilder<String, AWSProfile>();
  set profiles(MapBuilder<String, AWSProfile>? profiles) =>
      _$this._profiles = profiles;

  AWSProfileFileBuilder();

  AWSProfileFileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _profiles = $v.profiles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSProfileFile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSProfileFile;
  }

  @override
  void update(void Function(AWSProfileFileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSProfileFile build() => _build();

  _$AWSProfileFile _build() {
    _$AWSProfileFile _$result;
    try {
      _$result = _$v ?? new _$AWSProfileFile._(profiles: profiles.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profiles';
        profiles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AWSProfileFile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AWSProfile extends AWSProfile {
  @override
  final String name;
  @override
  final BuiltMap<String, AWSProperty> properties;

  factory _$AWSProfile([void Function(AWSProfileBuilder)? updates]) =>
      (new AWSProfileBuilder()..update(updates))._build();

  _$AWSProfile._({required this.name, required this.properties}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'AWSProfile', 'name');
    BuiltValueNullFieldError.checkNotNull(
        properties, r'AWSProfile', 'properties');
  }

  @override
  AWSProfile rebuild(void Function(AWSProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSProfileBuilder toBuilder() => new AWSProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSProfile &&
        name == other.name &&
        properties == other.properties;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AWSProfile')
          ..add('name', name)
          ..add('properties', properties))
        .toString();
  }
}

class AWSProfileBuilder implements Builder<AWSProfile, AWSProfileBuilder> {
  _$AWSProfile? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  MapBuilder<String, AWSProperty>? _properties;
  MapBuilder<String, AWSProperty> get properties =>
      _$this._properties ??= new MapBuilder<String, AWSProperty>();
  set properties(MapBuilder<String, AWSProperty>? properties) =>
      _$this._properties = properties;

  AWSProfileBuilder();

  AWSProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _properties = $v.properties.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSProfile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSProfile;
  }

  @override
  void update(void Function(AWSProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSProfile build() => _build();

  _$AWSProfile _build() {
    _$AWSProfile _$result;
    try {
      _$result = _$v ??
          new _$AWSProfile._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'AWSProfile', 'name'),
              properties: properties.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'properties';
        properties.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AWSProfile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AWSProperty extends AWSProperty {
  @override
  final String name;
  @override
  final String value;
  @override
  final BuiltMap<String, AWSProperty> subProperties;

  factory _$AWSProperty([void Function(AWSPropertyBuilder)? updates]) =>
      (new AWSPropertyBuilder()..update(updates))._build();

  _$AWSProperty._(
      {required this.name, required this.value, required this.subProperties})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'AWSProperty', 'name');
    BuiltValueNullFieldError.checkNotNull(value, r'AWSProperty', 'value');
    BuiltValueNullFieldError.checkNotNull(
        subProperties, r'AWSProperty', 'subProperties');
  }

  @override
  AWSProperty rebuild(void Function(AWSPropertyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSPropertyBuilder toBuilder() => new AWSPropertyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSProperty &&
        name == other.name &&
        value == other.value &&
        subProperties == other.subProperties;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, subProperties.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AWSProperty')
          ..add('name', name)
          ..add('value', value)
          ..add('subProperties', subProperties))
        .toString();
  }
}

class AWSPropertyBuilder implements Builder<AWSProperty, AWSPropertyBuilder> {
  _$AWSProperty? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  MapBuilder<String, AWSProperty>? _subProperties;
  MapBuilder<String, AWSProperty> get subProperties =>
      _$this._subProperties ??= new MapBuilder<String, AWSProperty>();
  set subProperties(MapBuilder<String, AWSProperty>? subProperties) =>
      _$this._subProperties = subProperties;

  AWSPropertyBuilder();

  AWSPropertyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _value = $v.value;
      _subProperties = $v.subProperties.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSProperty other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSProperty;
  }

  @override
  void update(void Function(AWSPropertyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSProperty build() => _build();

  _$AWSProperty _build() {
    _$AWSProperty _$result;
    try {
      _$result = _$v ??
          new _$AWSProperty._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'AWSProperty', 'name'),
              value: BuiltValueNullFieldError.checkNotNull(
                  value, r'AWSProperty', 'value'),
              subProperties: subProperties.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subProperties';
        subProperties.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AWSProperty', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
