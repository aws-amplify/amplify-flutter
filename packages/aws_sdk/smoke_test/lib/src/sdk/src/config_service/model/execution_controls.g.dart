// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.execution_controls;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExecutionControls extends ExecutionControls {
  @override
  final _i2.SsmControls? ssmControls;

  factory _$ExecutionControls(
          [void Function(ExecutionControlsBuilder)? updates]) =>
      (new ExecutionControlsBuilder()..update(updates))._build();

  _$ExecutionControls._({this.ssmControls}) : super._();

  @override
  ExecutionControls rebuild(void Function(ExecutionControlsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExecutionControlsBuilder toBuilder() =>
      new ExecutionControlsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExecutionControls && ssmControls == other.ssmControls;
  }

  @override
  int get hashCode {
    return $jf($jc(0, ssmControls.hashCode));
  }
}

class ExecutionControlsBuilder
    implements Builder<ExecutionControls, ExecutionControlsBuilder> {
  _$ExecutionControls? _$v;

  _i2.SsmControlsBuilder? _ssmControls;
  _i2.SsmControlsBuilder get ssmControls =>
      _$this._ssmControls ??= new _i2.SsmControlsBuilder();
  set ssmControls(_i2.SsmControlsBuilder? ssmControls) =>
      _$this._ssmControls = ssmControls;

  ExecutionControlsBuilder() {
    ExecutionControls._init(this);
  }

  ExecutionControlsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ssmControls = $v.ssmControls?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExecutionControls other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExecutionControls;
  }

  @override
  void update(void Function(ExecutionControlsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExecutionControls build() => _build();

  _$ExecutionControls _build() {
    _$ExecutionControls _$result;
    try {
      _$result =
          _$v ?? new _$ExecutionControls._(ssmControls: _ssmControls?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ssmControls';
        _ssmControls?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExecutionControls', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
