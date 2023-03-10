// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.usage_plan;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsagePlan extends UsagePlan {
  @override
  final _i5.BuiltList<_i2.ApiStage>? apiStages;
  @override
  final String? description;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? productCode;
  @override
  final _i3.QuotaSettings? quota;
  @override
  final _i5.BuiltMap<String, String>? tags;
  @override
  final _i4.ThrottleSettings? throttle;

  factory _$UsagePlan([void Function(UsagePlanBuilder)? updates]) =>
      (new UsagePlanBuilder()..update(updates))._build();

  _$UsagePlan._(
      {this.apiStages,
      this.description,
      this.id,
      this.name,
      this.productCode,
      this.quota,
      this.tags,
      this.throttle})
      : super._();

  @override
  UsagePlan rebuild(void Function(UsagePlanBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsagePlanBuilder toBuilder() => new UsagePlanBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsagePlan &&
        apiStages == other.apiStages &&
        description == other.description &&
        id == other.id &&
        name == other.name &&
        productCode == other.productCode &&
        quota == other.quota &&
        tags == other.tags &&
        throttle == other.throttle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, apiStages.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, productCode.hashCode);
    _$hash = $jc(_$hash, quota.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, throttle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UsagePlanBuilder implements Builder<UsagePlan, UsagePlanBuilder> {
  _$UsagePlan? _$v;

  _i5.ListBuilder<_i2.ApiStage>? _apiStages;
  _i5.ListBuilder<_i2.ApiStage> get apiStages =>
      _$this._apiStages ??= new _i5.ListBuilder<_i2.ApiStage>();
  set apiStages(_i5.ListBuilder<_i2.ApiStage>? apiStages) =>
      _$this._apiStages = apiStages;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _productCode;
  String? get productCode => _$this._productCode;
  set productCode(String? productCode) => _$this._productCode = productCode;

  _i3.QuotaSettingsBuilder? _quota;
  _i3.QuotaSettingsBuilder get quota =>
      _$this._quota ??= new _i3.QuotaSettingsBuilder();
  set quota(_i3.QuotaSettingsBuilder? quota) => _$this._quota = quota;

  _i5.MapBuilder<String, String>? _tags;
  _i5.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i5.MapBuilder<String, String>();
  set tags(_i5.MapBuilder<String, String>? tags) => _$this._tags = tags;

  _i4.ThrottleSettingsBuilder? _throttle;
  _i4.ThrottleSettingsBuilder get throttle =>
      _$this._throttle ??= new _i4.ThrottleSettingsBuilder();
  set throttle(_i4.ThrottleSettingsBuilder? throttle) =>
      _$this._throttle = throttle;

  UsagePlanBuilder() {
    UsagePlan._init(this);
  }

  UsagePlanBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiStages = $v.apiStages?.toBuilder();
      _description = $v.description;
      _id = $v.id;
      _name = $v.name;
      _productCode = $v.productCode;
      _quota = $v.quota?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _throttle = $v.throttle?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsagePlan other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsagePlan;
  }

  @override
  void update(void Function(UsagePlanBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsagePlan build() => _build();

  _$UsagePlan _build() {
    _$UsagePlan _$result;
    try {
      _$result = _$v ??
          new _$UsagePlan._(
              apiStages: _apiStages?.build(),
              description: description,
              id: id,
              name: name,
              productCode: productCode,
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
            r'UsagePlan', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
