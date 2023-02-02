// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.create_api_key_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateApiKeyRequest extends CreateApiKeyRequest {
  @override
  final String? customerId;
  @override
  final String? description;
  @override
  final bool? enabled;
  @override
  final bool? generateDistinctId;
  @override
  final String? name;
  @override
  final _i4.BuiltList<_i3.StageKey>? stageKeys;
  @override
  final _i4.BuiltMap<String, String>? tags;
  @override
  final String? value;

  factory _$CreateApiKeyRequest(
          [void Function(CreateApiKeyRequestBuilder)? updates]) =>
      (new CreateApiKeyRequestBuilder()..update(updates))._build();

  _$CreateApiKeyRequest._(
      {this.customerId,
      this.description,
      this.enabled,
      this.generateDistinctId,
      this.name,
      this.stageKeys,
      this.tags,
      this.value})
      : super._();

  @override
  CreateApiKeyRequest rebuild(
          void Function(CreateApiKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateApiKeyRequestBuilder toBuilder() =>
      new CreateApiKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateApiKeyRequest &&
        customerId == other.customerId &&
        description == other.description &&
        enabled == other.enabled &&
        generateDistinctId == other.generateDistinctId &&
        name == other.name &&
        stageKeys == other.stageKeys &&
        tags == other.tags &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, generateDistinctId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, stageKeys.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateApiKeyRequestBuilder
    implements Builder<CreateApiKeyRequest, CreateApiKeyRequestBuilder> {
  _$CreateApiKeyRequest? _$v;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _generateDistinctId;
  bool? get generateDistinctId => _$this._generateDistinctId;
  set generateDistinctId(bool? generateDistinctId) =>
      _$this._generateDistinctId = generateDistinctId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i4.ListBuilder<_i3.StageKey>? _stageKeys;
  _i4.ListBuilder<_i3.StageKey> get stageKeys =>
      _$this._stageKeys ??= new _i4.ListBuilder<_i3.StageKey>();
  set stageKeys(_i4.ListBuilder<_i3.StageKey>? stageKeys) =>
      _$this._stageKeys = stageKeys;

  _i4.MapBuilder<String, String>? _tags;
  _i4.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i4.MapBuilder<String, String>();
  set tags(_i4.MapBuilder<String, String>? tags) => _$this._tags = tags;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  CreateApiKeyRequestBuilder() {
    CreateApiKeyRequest._init(this);
  }

  CreateApiKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerId = $v.customerId;
      _description = $v.description;
      _enabled = $v.enabled;
      _generateDistinctId = $v.generateDistinctId;
      _name = $v.name;
      _stageKeys = $v.stageKeys?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateApiKeyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateApiKeyRequest;
  }

  @override
  void update(void Function(CreateApiKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateApiKeyRequest build() => _build();

  _$CreateApiKeyRequest _build() {
    _$CreateApiKeyRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateApiKeyRequest._(
              customerId: customerId,
              description: description,
              enabled: enabled,
              generateDistinctId: generateDistinctId,
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
            r'CreateApiKeyRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
