// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.record_handler_progress_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecordHandlerProgressOutput extends RecordHandlerProgressOutput {
  factory _$RecordHandlerProgressOutput(
          [void Function(RecordHandlerProgressOutputBuilder)? updates]) =>
      (new RecordHandlerProgressOutputBuilder()..update(updates))._build();

  _$RecordHandlerProgressOutput._() : super._();

  @override
  RecordHandlerProgressOutput rebuild(
          void Function(RecordHandlerProgressOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecordHandlerProgressOutputBuilder toBuilder() =>
      new RecordHandlerProgressOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecordHandlerProgressOutput;
  }

  @override
  int get hashCode {
    return 230836434;
  }
}

class RecordHandlerProgressOutputBuilder
    implements
        Builder<RecordHandlerProgressOutput,
            RecordHandlerProgressOutputBuilder> {
  _$RecordHandlerProgressOutput? _$v;

  RecordHandlerProgressOutputBuilder() {
    RecordHandlerProgressOutput._init(this);
  }

  @override
  void replace(RecordHandlerProgressOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecordHandlerProgressOutput;
  }

  @override
  void update(void Function(RecordHandlerProgressOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecordHandlerProgressOutput build() => _build();

  _$RecordHandlerProgressOutput _build() {
    final _$result = _$v ?? new _$RecordHandlerProgressOutput._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
