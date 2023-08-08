// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiKey extends ApiKey {
  @override
  final String? id;
  @override
  final String? value;
  @override
  final String? name;
  @override
  final String? customerId;
  @override
  final String? description;
  @override
  final bool enabled;
  @override
  final DateTime? createdDate;
  @override
  final DateTime? lastUpdatedDate;
  @override
  final _i2.BuiltList<String>? stageKeys;
  @override
  final _i2.BuiltMap<String, String>? tags;

  factory _$ApiKey([void Function(ApiKeyBuilder)? updates]) =>
      (new ApiKeyBuilder()..update(updates))._build();

  _$ApiKey._(
      {this.id,
      this.value,
      this.name,
      this.customerId,
      this.description,
      required this.enabled,
      this.createdDate,
      this.lastUpdatedDate,
      this.stageKeys,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(enabled, r'ApiKey', 'enabled');
  }

  @override
  ApiKey rebuild(void Function(ApiKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiKeyBuilder toBuilder() => new ApiKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiKey &&
        id == other.id &&
        value == other.value &&
        name == other.name &&
        customerId == other.customerId &&
        description == other.description &&
        enabled == other.enabled &&
        createdDate == other.createdDate &&
        lastUpdatedDate == other.lastUpdatedDate &&
        stageKeys == other.stageKeys &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, createdDate.hashCode);
    _$hash = $jc(_$hash, lastUpdatedDate.hashCode);
    _$hash = $jc(_$hash, stageKeys.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ApiKeyBuilder implements Builder<ApiKey, ApiKeyBuilder> {
  _$ApiKey? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

  DateTime? _lastUpdatedDate;
  DateTime? get lastUpdatedDate => _$this._lastUpdatedDate;
  set lastUpdatedDate(DateTime? lastUpdatedDate) =>
      _$this._lastUpdatedDate = lastUpdatedDate;

  _i2.ListBuilder<String>? _stageKeys;
  _i2.ListBuilder<String> get stageKeys =>
      _$this._stageKeys ??= new _i2.ListBuilder<String>();
  set stageKeys(_i2.ListBuilder<String>? stageKeys) =>
      _$this._stageKeys = stageKeys;

  _i2.MapBuilder<String, String>? _tags;
  _i2.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i2.MapBuilder<String, String>();
  set tags(_i2.MapBuilder<String, String>? tags) => _$this._tags = tags;

  ApiKeyBuilder() {
    ApiKey._init(this);
  }

  ApiKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _value = $v.value;
      _name = $v.name;
      _customerId = $v.customerId;
      _description = $v.description;
      _enabled = $v.enabled;
      _createdDate = $v.createdDate;
      _lastUpdatedDate = $v.lastUpdatedDate;
      _stageKeys = $v.stageKeys?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiKey other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiKey;
  }

  @override
  void update(void Function(ApiKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiKey build() => _build();

  _$ApiKey _build() {
    _$ApiKey _$result;
    try {
      _$result = _$v ??
          new _$ApiKey._(
              id: id,
              value: value,
              name: name,
              customerId: customerId,
              description: description,
              enabled: BuiltValueNullFieldError.checkNotNull(
                  enabled, r'ApiKey', 'enabled'),
              createdDate: createdDate,
              lastUpdatedDate: lastUpdatedDate,
              stageKeys: _stageKeys?.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stageKeys';
        _stageKeys?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApiKey', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
