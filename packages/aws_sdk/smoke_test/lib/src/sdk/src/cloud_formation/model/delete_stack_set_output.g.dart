// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.delete_stack_set_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteStackSetOutput extends DeleteStackSetOutput {
  factory _$DeleteStackSetOutput(
          [void Function(DeleteStackSetOutputBuilder)? updates]) =>
      (new DeleteStackSetOutputBuilder()..update(updates))._build();

  _$DeleteStackSetOutput._() : super._();

  @override
  DeleteStackSetOutput rebuild(
          void Function(DeleteStackSetOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteStackSetOutputBuilder toBuilder() =>
      new DeleteStackSetOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteStackSetOutput;
  }

  @override
  int get hashCode {
    return 572436631;
  }
}

class DeleteStackSetOutputBuilder
    implements Builder<DeleteStackSetOutput, DeleteStackSetOutputBuilder> {
  _$DeleteStackSetOutput? _$v;

  DeleteStackSetOutputBuilder() {
    DeleteStackSetOutput._init(this);
  }

  @override
  void replace(DeleteStackSetOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteStackSetOutput;
  }

  @override
  void update(void Function(DeleteStackSetOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteStackSetOutput build() => _build();

  _$DeleteStackSetOutput _build() {
    final _$result = _$v ?? new _$DeleteStackSetOutput._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
