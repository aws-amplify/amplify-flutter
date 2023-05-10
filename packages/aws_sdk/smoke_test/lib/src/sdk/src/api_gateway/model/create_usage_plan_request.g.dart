// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.create_usage_plan_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateUsagePlanRequest extends CreateUsagePlanRequest {
  @override
  final String name;
  @override
  final String? description;
  @override
  final _i6.BuiltList<_i3.ApiStage>? apiStages;
  @override
  final _i4.ThrottleSettings? throttle;
  @override
  final _i5.QuotaSettings? quota;
  @override
  final _i6.BuiltMap<String, String>? tags;

  factory _$CreateUsagePlanRequest(
          [void Function(CreateUsagePlanRequestBuilder)? updates]) =>
      (new CreateUsagePlanRequestBuilder()..update(updates))._build();

  _$CreateUsagePlanRequest._(
      {required this.name,
      this.description,
      this.apiStages,
      this.throttle,
      this.quota,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'CreateUsagePlanRequest', 'name');
  }

  @override
  CreateUsagePlanRequest rebuild(
          void Function(CreateUsagePlanRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateUsagePlanRequestBuilder toBuilder() =>
      new CreateUsagePlanRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateUsagePlanRequest &&
        name == other.name &&
        description == other.description &&
        apiStages == other.apiStages &&
        throttle == other.throttle &&
        quota == other.quota &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, apiStages.hashCode);
    _$hash = $jc(_$hash, throttle.hashCode);
    _$hash = $jc(_$hash, quota.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateUsagePlanRequestBuilder
    implements Builder<CreateUsagePlanRequest, CreateUsagePlanRequestBuilder> {
  _$CreateUsagePlanRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i6.ListBuilder<_i3.ApiStage>? _apiStages;
  _i6.ListBuilder<_i3.ApiStage> get apiStages =>
      _$this._apiStages ??= new _i6.ListBuilder<_i3.ApiStage>();
  set apiStages(_i6.ListBuilder<_i3.ApiStage>? apiStages) =>
      _$this._apiStages = apiStages;

  _i4.ThrottleSettingsBuilder? _throttle;
  _i4.ThrottleSettingsBuilder get throttle =>
      _$this._throttle ??= new _i4.ThrottleSettingsBuilder();
  set throttle(_i4.ThrottleSettingsBuilder? throttle) =>
      _$this._throttle = throttle;

  _i5.QuotaSettingsBuilder? _quota;
  _i5.QuotaSettingsBuilder get quota =>
      _$this._quota ??= new _i5.QuotaSettingsBuilder();
  set quota(_i5.QuotaSettingsBuilder? quota) => _$this._quota = quota;

  _i6.MapBuilder<String, String>? _tags;
  _i6.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i6.MapBuilder<String, String>();
  set tags(_i6.MapBuilder<String, String>? tags) => _$this._tags = tags;

  CreateUsagePlanRequestBuilder() {
    CreateUsagePlanRequest._init(this);
  }

  CreateUsagePlanRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _apiStages = $v.apiStages?.toBuilder();
      _throttle = $v.throttle?.toBuilder();
      _quota = $v.quota?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateUsagePlanRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateUsagePlanRequest;
  }

  @override
  void update(void Function(CreateUsagePlanRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateUsagePlanRequest build() => _build();

  _$CreateUsagePlanRequest _build() {
    _$CreateUsagePlanRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateUsagePlanRequest._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'CreateUsagePlanRequest', 'name'),
              description: description,
              apiStages: _apiStages?.build(),
              throttle: _throttle?.build(),
              quota: _quota?.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'apiStages';
        _apiStages?.build();
        _$failedField = 'throttle';
        _throttle?.build();
        _$failedField = 'quota';
        _quota?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateUsagePlanRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
