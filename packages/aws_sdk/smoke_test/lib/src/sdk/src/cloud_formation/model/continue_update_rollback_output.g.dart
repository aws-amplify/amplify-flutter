// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.continue_update_rollback_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContinueUpdateRollbackOutput extends ContinueUpdateRollbackOutput {
  factory _$ContinueUpdateRollbackOutput(
          [void Function(ContinueUpdateRollbackOutputBuilder)? updates]) =>
      (new ContinueUpdateRollbackOutputBuilder()..update(updates))._build();

  _$ContinueUpdateRollbackOutput._() : super._();

  @override
  ContinueUpdateRollbackOutput rebuild(
          void Function(ContinueUpdateRollbackOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContinueUpdateRollbackOutputBuilder toBuilder() =>
      new ContinueUpdateRollbackOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContinueUpdateRollbackOutput;
  }

  @override
  int get hashCode {
    return 281525218;
  }
}

class ContinueUpdateRollbackOutputBuilder
    implements
        Builder<ContinueUpdateRollbackOutput,
            ContinueUpdateRollbackOutputBuilder> {
  _$ContinueUpdateRollbackOutput? _$v;

  ContinueUpdateRollbackOutputBuilder() {
    ContinueUpdateRollbackOutput._init(this);
  }

  @override
  void replace(ContinueUpdateRollbackOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContinueUpdateRollbackOutput;
  }

  @override
  void update(void Function(ContinueUpdateRollbackOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContinueUpdateRollbackOutput build() => _build();

  _$ContinueUpdateRollbackOutput _build() {
    final _$result = _$v ?? new _$ContinueUpdateRollbackOutput._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
