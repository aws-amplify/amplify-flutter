// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_plan.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsagePlan extends UsagePlan {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final _i2.BuiltList<ApiStage>? apiStages;
  @override
  final ThrottleSettings? throttle;
  @override
  final QuotaSettings? quota;
  @override
  final String? productCode;
  @override
  final _i2.BuiltMap<String, String>? tags;

  factory _$UsagePlan([void Function(UsagePlanBuilder)? updates]) =>
      (new UsagePlanBuilder()..update(updates))._build();

  _$UsagePlan._(
      {this.id,
      this.name,
      this.description,
      this.apiStages,
      this.throttle,
      this.quota,
      this.productCode,
      this.tags})
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
        id == other.id &&
        name == other.name &&
        description == other.description &&
        apiStages == other.apiStages &&
        throttle == other.throttle &&
        quota == other.quota &&
        productCode == other.productCode &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, apiStages.hashCode);
    _$hash = $jc(_$hash, throttle.hashCode);
    _$hash = $jc(_$hash, quota.hashCode);
    _$hash = $jc(_$hash, productCode.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UsagePlanBuilder implements Builder<UsagePlan, UsagePlanBuilder> {
  _$UsagePlan? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.ListBuilder<ApiStage>? _apiStages;
  _i2.ListBuilder<ApiStage> get apiStages =>
      _$this._apiStages ??= new _i2.ListBuilder<ApiStage>();
  set apiStages(_i2.ListBuilder<ApiStage>? apiStages) =>
      _$this._apiStages = apiStages;

  ThrottleSettingsBuilder? _throttle;
  ThrottleSettingsBuilder get throttle =>
      _$this._throttle ??= new ThrottleSettingsBuilder();
  set throttle(ThrottleSettingsBuilder? throttle) =>
      _$this._throttle = throttle;

  QuotaSettingsBuilder? _quota;
  QuotaSettingsBuilder get quota =>
      _$this._quota ??= new QuotaSettingsBuilder();
  set quota(QuotaSettingsBuilder? quota) => _$this._quota = quota;

  String? _productCode;
  String? get productCode => _$this._productCode;
  set productCode(String? productCode) => _$this._productCode = productCode;

  _i2.MapBuilder<String, String>? _tags;
  _i2.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i2.MapBuilder<String, String>();
  set tags(_i2.MapBuilder<String, String>? tags) => _$this._tags = tags;

  UsagePlanBuilder();

  UsagePlanBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _apiStages = $v.apiStages?.toBuilder();
      _throttle = $v.throttle?.toBuilder();
      _quota = $v.quota?.toBuilder();
      _productCode = $v.productCode;
      _tags = $v.tags?.toBuilder();
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
              id: id,
              name: name,
              description: description,
              apiStages: _apiStages?.build(),
              throttle: _throttle?.build(),
              quota: _quota?.build(),
              productCode: productCode,
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
            r'UsagePlan', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
