// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stack_set_operation_preferences;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackSetOperationPreferences extends StackSetOperationPreferences {
  @override
  final _i2.RegionConcurrencyType? regionConcurrencyType;
  @override
  final _i3.BuiltList<String>? regionOrder;
  @override
  final int? failureToleranceCount;
  @override
  final int? failureTolerancePercentage;
  @override
  final int? maxConcurrentCount;
  @override
  final int? maxConcurrentPercentage;

  factory _$StackSetOperationPreferences(
          [void Function(StackSetOperationPreferencesBuilder)? updates]) =>
      (new StackSetOperationPreferencesBuilder()..update(updates))._build();

  _$StackSetOperationPreferences._(
      {this.regionConcurrencyType,
      this.regionOrder,
      this.failureToleranceCount,
      this.failureTolerancePercentage,
      this.maxConcurrentCount,
      this.maxConcurrentPercentage})
      : super._();

  @override
  StackSetOperationPreferences rebuild(
          void Function(StackSetOperationPreferencesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackSetOperationPreferencesBuilder toBuilder() =>
      new StackSetOperationPreferencesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackSetOperationPreferences &&
        regionConcurrencyType == other.regionConcurrencyType &&
        regionOrder == other.regionOrder &&
        failureToleranceCount == other.failureToleranceCount &&
        failureTolerancePercentage == other.failureTolerancePercentage &&
        maxConcurrentCount == other.maxConcurrentCount &&
        maxConcurrentPercentage == other.maxConcurrentPercentage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regionConcurrencyType.hashCode);
    _$hash = $jc(_$hash, regionOrder.hashCode);
    _$hash = $jc(_$hash, failureToleranceCount.hashCode);
    _$hash = $jc(_$hash, failureTolerancePercentage.hashCode);
    _$hash = $jc(_$hash, maxConcurrentCount.hashCode);
    _$hash = $jc(_$hash, maxConcurrentPercentage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackSetOperationPreferencesBuilder
    implements
        Builder<StackSetOperationPreferences,
            StackSetOperationPreferencesBuilder> {
  _$StackSetOperationPreferences? _$v;

  _i2.RegionConcurrencyType? _regionConcurrencyType;
  _i2.RegionConcurrencyType? get regionConcurrencyType =>
      _$this._regionConcurrencyType;
  set regionConcurrencyType(_i2.RegionConcurrencyType? regionConcurrencyType) =>
      _$this._regionConcurrencyType = regionConcurrencyType;

  _i3.ListBuilder<String>? _regionOrder;
  _i3.ListBuilder<String> get regionOrder =>
      _$this._regionOrder ??= new _i3.ListBuilder<String>();
  set regionOrder(_i3.ListBuilder<String>? regionOrder) =>
      _$this._regionOrder = regionOrder;

  int? _failureToleranceCount;
  int? get failureToleranceCount => _$this._failureToleranceCount;
  set failureToleranceCount(int? failureToleranceCount) =>
      _$this._failureToleranceCount = failureToleranceCount;

  int? _failureTolerancePercentage;
  int? get failureTolerancePercentage => _$this._failureTolerancePercentage;
  set failureTolerancePercentage(int? failureTolerancePercentage) =>
      _$this._failureTolerancePercentage = failureTolerancePercentage;

  int? _maxConcurrentCount;
  int? get maxConcurrentCount => _$this._maxConcurrentCount;
  set maxConcurrentCount(int? maxConcurrentCount) =>
      _$this._maxConcurrentCount = maxConcurrentCount;

  int? _maxConcurrentPercentage;
  int? get maxConcurrentPercentage => _$this._maxConcurrentPercentage;
  set maxConcurrentPercentage(int? maxConcurrentPercentage) =>
      _$this._maxConcurrentPercentage = maxConcurrentPercentage;

  StackSetOperationPreferencesBuilder() {
    StackSetOperationPreferences._init(this);
  }

  StackSetOperationPreferencesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regionConcurrencyType = $v.regionConcurrencyType;
      _regionOrder = $v.regionOrder?.toBuilder();
      _failureToleranceCount = $v.failureToleranceCount;
      _failureTolerancePercentage = $v.failureTolerancePercentage;
      _maxConcurrentCount = $v.maxConcurrentCount;
      _maxConcurrentPercentage = $v.maxConcurrentPercentage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackSetOperationPreferences other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackSetOperationPreferences;
  }

  @override
  void update(void Function(StackSetOperationPreferencesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackSetOperationPreferences build() => _build();

  _$StackSetOperationPreferences _build() {
    _$StackSetOperationPreferences _$result;
    try {
      _$result = _$v ??
          new _$StackSetOperationPreferences._(
              regionConcurrencyType: regionConcurrencyType,
              regionOrder: _regionOrder?.build(),
              failureToleranceCount: failureToleranceCount,
              failureTolerancePercentage: failureTolerancePercentage,
              maxConcurrentCount: maxConcurrentCount,
              maxConcurrentPercentage: maxConcurrentPercentage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regionOrder';
        _regionOrder?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StackSetOperationPreferences', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
