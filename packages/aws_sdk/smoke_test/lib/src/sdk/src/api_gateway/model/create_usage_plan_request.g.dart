// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.create_usage_plan_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateUsagePlanRequest extends CreateUsagePlanRequest {
  @override
  final _i6.BuiltList<_i3.ApiStage>? apiStages;
  @override
  final String? description;
  @override
  final String name;
  @override
  final _i4.QuotaSettings? quota;
  @override
  final _i6.BuiltMap<String, String>? tags;
  @override
  final _i5.ThrottleSettings? throttle;

  factory _$CreateUsagePlanRequest(
          [void Function(CreateUsagePlanRequestBuilder)? updates]) =>
      (new CreateUsagePlanRequestBuilder()..update(updates))._build();

  _$CreateUsagePlanRequest._(
      {this.apiStages,
      this.description,
      required this.name,
      this.quota,
      this.tags,
      this.throttle})
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
        apiStages == other.apiStages &&
        description == other.description &&
        name == other.name &&
        quota == other.quota &&
        tags == other.tags &&
        throttle == other.throttle;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, apiStages.hashCode), description.hashCode),
                    name.hashCode),
                quota.hashCode),
            tags.hashCode),
        throttle.hashCode));
  }
}

class CreateUsagePlanRequestBuilder
    implements Builder<CreateUsagePlanRequest, CreateUsagePlanRequestBuilder> {
  _$CreateUsagePlanRequest? _$v;

  _i6.ListBuilder<_i3.ApiStage>? _apiStages;
  _i6.ListBuilder<_i3.ApiStage> get apiStages =>
      _$this._apiStages ??= new _i6.ListBuilder<_i3.ApiStage>();
  set apiStages(_i6.ListBuilder<_i3.ApiStage>? apiStages) =>
      _$this._apiStages = apiStages;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i4.QuotaSettingsBuilder? _quota;
  _i4.QuotaSettingsBuilder get quota =>
      _$this._quota ??= new _i4.QuotaSettingsBuilder();
  set quota(_i4.QuotaSettingsBuilder? quota) => _$this._quota = quota;

  _i6.MapBuilder<String, String>? _tags;
  _i6.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i6.MapBuilder<String, String>();
  set tags(_i6.MapBuilder<String, String>? tags) => _$this._tags = tags;

  _i5.ThrottleSettingsBuilder? _throttle;
  _i5.ThrottleSettingsBuilder get throttle =>
      _$this._throttle ??= new _i5.ThrottleSettingsBuilder();
  set throttle(_i5.ThrottleSettingsBuilder? throttle) =>
      _$this._throttle = throttle;

  CreateUsagePlanRequestBuilder() {
    CreateUsagePlanRequest._init(this);
  }

  CreateUsagePlanRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiStages = $v.apiStages?.toBuilder();
      _description = $v.description;
      _name = $v.name;
      _quota = $v.quota?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _throttle = $v.throttle?.toBuilder();
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
              apiStages: _apiStages?.build(),
              description: description,
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'CreateUsagePlanRequest', 'name'),
              quota: _quota?.build(),
              tags: _tags?.build(),
              throttle: _throttle?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'apiStages';
        _apiStages?.build();

        _$failedField = 'quota';
        _quota?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'throttle';
        _throttle?.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
