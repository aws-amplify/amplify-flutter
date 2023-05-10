// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stop_stack_set_operation_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StopStackSetOperationOutput extends StopStackSetOperationOutput {
  factory _$StopStackSetOperationOutput(
          [void Function(StopStackSetOperationOutputBuilder)? updates]) =>
      (new StopStackSetOperationOutputBuilder()..update(updates))._build();

  _$StopStackSetOperationOutput._() : super._();

  @override
  StopStackSetOperationOutput rebuild(
          void Function(StopStackSetOperationOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StopStackSetOperationOutputBuilder toBuilder() =>
      new StopStackSetOperationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StopStackSetOperationOutput;
  }

  @override
  int get hashCode {
    return 1052064748;
  }
}

class StopStackSetOperationOutputBuilder
    implements
        Builder<StopStackSetOperationOutput,
            StopStackSetOperationOutputBuilder> {
  _$StopStackSetOperationOutput? _$v;

  StopStackSetOperationOutputBuilder() {
    StopStackSetOperationOutput._init(this);
  }

  @override
  void replace(StopStackSetOperationOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StopStackSetOperationOutput;
  }

  @override
  void update(void Function(StopStackSetOperationOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StopStackSetOperationOutput build() => _build();

  _$StopStackSetOperationOutput _build() {
    final _$result = _$v ?? new _$StopStackSetOperationOutput._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
