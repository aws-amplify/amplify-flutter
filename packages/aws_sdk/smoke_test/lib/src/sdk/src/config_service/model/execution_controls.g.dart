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
    var _$hash = 0;
    _$hash = $jc(_$hash, ssmControls.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
