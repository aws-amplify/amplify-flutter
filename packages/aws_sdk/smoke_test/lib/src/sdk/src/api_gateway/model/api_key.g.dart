// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.api_key;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiKey extends ApiKey {
  @override
  final DateTime? createdDate;
  @override
  final String? customerId;
  @override
  final String? description;
  @override
  final bool? enabled;
  @override
  final String? id;
  @override
  final DateTime? lastUpdatedDate;
  @override
  final String? name;
  @override
  final _i2.BuiltList<String>? stageKeys;
  @override
  final _i2.BuiltMap<String, String>? tags;
  @override
  final String? value;

  factory _$ApiKey([void Function(ApiKeyBuilder)? updates]) =>
      (new ApiKeyBuilder()..update(updates))._build();

  _$ApiKey._(
      {this.createdDate,
      this.customerId,
      this.description,
      this.enabled,
      this.id,
      this.lastUpdatedDate,
      this.name,
      this.stageKeys,
      this.tags,
      this.value})
      : super._();

  @override
  ApiKey rebuild(void Function(ApiKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiKeyBuilder toBuilder() => new ApiKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiKey &&
        createdDate == other.createdDate &&
        customerId == other.customerId &&
        description == other.description &&
        enabled == other.enabled &&
        id == other.id &&
        lastUpdatedDate == other.lastUpdatedDate &&
        name == other.name &&
        stageKeys == other.stageKeys &&
        tags == other.tags &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdDate.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, lastUpdatedDate.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, stageKeys.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ApiKeyBuilder implements Builder<ApiKey, ApiKeyBuilder> {
  _$ApiKey? _$v;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DateTime? _lastUpdatedDate;
  DateTime? get lastUpdatedDate => _$this._lastUpdatedDate;
  set lastUpdatedDate(DateTime? lastUpdatedDate) =>
      _$this._lastUpdatedDate = lastUpdatedDate;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i2.ListBuilder<String>? _stageKeys;
  _i2.ListBuilder<String> get stageKeys =>
      _$this._stageKeys ??= new _i2.ListBuilder<String>();
  set stageKeys(_i2.ListBuilder<String>? stageKeys) =>
      _$this._stageKeys = stageKeys;

  _i2.MapBuilder<String, String>? _tags;
  _i2.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i2.MapBuilder<String, String>();
  set tags(_i2.MapBuilder<String, String>? tags) => _$this._tags = tags;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  ApiKeyBuilder() {
    ApiKey._init(this);
  }

  ApiKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdDate = $v.createdDate;
      _customerId = $v.customerId;
      _description = $v.description;
      _enabled = $v.enabled;
      _id = $v.id;
      _lastUpdatedDate = $v.lastUpdatedDate;
      _name = $v.name;
      _stageKeys = $v.stageKeys?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _value = $v.value;
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
              createdDate: createdDate,
              customerId: customerId,
              description: description,
              enabled: enabled,
              id: id,
              lastUpdatedDate: lastUpdatedDate,
              name: name,
              stageKeys: _stageKeys?.build(),
              tags: _tags?.build(),
              value: value);
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
