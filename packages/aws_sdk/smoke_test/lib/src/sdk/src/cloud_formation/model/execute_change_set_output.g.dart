// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.execute_change_set_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExecuteChangeSetOutput extends ExecuteChangeSetOutput {
  factory _$ExecuteChangeSetOutput(
          [void Function(ExecuteChangeSetOutputBuilder)? updates]) =>
      (new ExecuteChangeSetOutputBuilder()..update(updates))._build();

  _$ExecuteChangeSetOutput._() : super._();

  @override
  ExecuteChangeSetOutput rebuild(
          void Function(ExecuteChangeSetOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExecuteChangeSetOutputBuilder toBuilder() =>
      new ExecuteChangeSetOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExecuteChangeSetOutput;
  }

  @override
  int get hashCode {
    return 902481495;
  }
}

class ExecuteChangeSetOutputBuilder
    implements Builder<ExecuteChangeSetOutput, ExecuteChangeSetOutputBuilder> {
  _$ExecuteChangeSetOutput? _$v;

  ExecuteChangeSetOutputBuilder() {
    ExecuteChangeSetOutput._init(this);
  }

  @override
  void replace(ExecuteChangeSetOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExecuteChangeSetOutput;
  }

  @override
  void update(void Function(ExecuteChangeSetOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExecuteChangeSetOutput build() => _build();

  _$ExecuteChangeSetOutput _build() {
    final _$result = _$v ?? new _$ExecuteChangeSetOutput._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
