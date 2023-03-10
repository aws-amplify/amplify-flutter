// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secure_storage_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SecureStorageRequest> _$secureStorageRequestSerializer =
    new _$SecureStorageRequestSerializer();

class _$SecureStorageRequestSerializer
    implements StructuredSerializer<SecureStorageRequest> {
  @override
  final Iterable<Type> types = const [
    SecureStorageRequest,
    _$SecureStorageRequest
  ];
  @override
  final String wireName = 'SecureStorageRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SecureStorageRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'action',
      serializers.serialize(object.action,
          specifiedType: const FullType(SecureStorageAction)),
    ];
    Object? value;
    value = object.config;
    if (value != null) {
      result
        ..add('config')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AmplifySecureStorageConfig)));
    }
    value = object.key;
    if (value != null) {
      result
        ..add('key')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SecureStorageRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SecureStorageRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'action':
          result.action = serializers.deserialize(value,
                  specifiedType: const FullType(SecureStorageAction))!
              as SecureStorageAction;
          break;
        case 'config':
          result.config.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AmplifySecureStorageConfig))!
              as AmplifySecureStorageConfig);
          break;
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$SecureStorageRequest extends SecureStorageRequest {
  @override
  final String id;
  @override
  final SecureStorageAction action;
  @override
  final AmplifySecureStorageConfig? config;
  @override
  final String? key;
  @override
  final String? value;

  factory _$SecureStorageRequest(
          [void Function(SecureStorageRequestBuilder)? updates]) =>
      (new SecureStorageRequestBuilder()..update(updates))._build();

  _$SecureStorageRequest._(
      {required this.id,
      required this.action,
      this.config,
      this.key,
      this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'SecureStorageRequest', 'id');
    BuiltValueNullFieldError.checkNotNull(
        action, r'SecureStorageRequest', 'action');
  }

  @override
  SecureStorageRequest rebuild(
          void Function(SecureStorageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SecureStorageRequestBuilder toBuilder() =>
      new SecureStorageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SecureStorageRequest &&
        id == other.id &&
        action == other.action &&
        config == other.config &&
        key == other.key &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SecureStorageRequestBuilder
    implements Builder<SecureStorageRequest, SecureStorageRequestBuilder> {
  _$SecureStorageRequest? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  SecureStorageAction? _action;
  SecureStorageAction? get action => _$this._action;
  set action(SecureStorageAction? action) => _$this._action = action;

  AmplifySecureStorageConfigBuilder? _config;
  AmplifySecureStorageConfigBuilder get config =>
      _$this._config ??= new AmplifySecureStorageConfigBuilder();
  set config(AmplifySecureStorageConfigBuilder? config) =>
      _$this._config = config;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  SecureStorageRequestBuilder();

  SecureStorageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _action = $v.action;
      _config = $v.config?.toBuilder();
      _key = $v.key;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SecureStorageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SecureStorageRequest;
  }

  @override
  void update(void Function(SecureStorageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SecureStorageRequest build() => _build();

  _$SecureStorageRequest _build() {
    SecureStorageRequest._init(this);
    _$SecureStorageRequest _$result;
    try {
      _$result = _$v ??
          new _$SecureStorageRequest._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'SecureStorageRequest', 'id'),
              action: BuiltValueNullFieldError.checkNotNull(
                  action, r'SecureStorageRequest', 'action'),
              config: _config?.build(),
              key: key,
              value: value);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SecureStorageRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
