// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.ssm_controls;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SsmControls extends SsmControls {
  @override
  final int? concurrentExecutionRatePercentage;
  @override
  final int? errorPercentage;

  factory _$SsmControls([void Function(SsmControlsBuilder)? updates]) =>
      (new SsmControlsBuilder()..update(updates))._build();

  _$SsmControls._(
      {this.concurrentExecutionRatePercentage, this.errorPercentage})
      : super._();

  @override
  SsmControls rebuild(void Function(SsmControlsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SsmControlsBuilder toBuilder() => new SsmControlsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SsmControls &&
        concurrentExecutionRatePercentage ==
            other.concurrentExecutionRatePercentage &&
        errorPercentage == other.errorPercentage;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, concurrentExecutionRatePercentage.hashCode),
        errorPercentage.hashCode));
  }
}

class SsmControlsBuilder implements Builder<SsmControls, SsmControlsBuilder> {
  _$SsmControls? _$v;

  int? _concurrentExecutionRatePercentage;
  int? get concurrentExecutionRatePercentage =>
      _$this._concurrentExecutionRatePercentage;
  set concurrentExecutionRatePercentage(
          int? concurrentExecutionRatePercentage) =>
      _$this._concurrentExecutionRatePercentage =
          concurrentExecutionRatePercentage;

  int? _errorPercentage;
  int? get errorPercentage => _$this._errorPercentage;
  set errorPercentage(int? errorPercentage) =>
      _$this._errorPercentage = errorPercentage;

  SsmControlsBuilder() {
    SsmControls._init(this);
  }

  SsmControlsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _concurrentExecutionRatePercentage = $v.concurrentExecutionRatePercentage;
      _errorPercentage = $v.errorPercentage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SsmControls other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SsmControls;
  }

  @override
  void update(void Function(SsmControlsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SsmControls build() => _build();

  _$SsmControls _build() {
    final _$result = _$v ??
        new _$SsmControls._(
            concurrentExecutionRatePercentage:
                concurrentExecutionRatePercentage,
            errorPercentage: errorPercentage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
