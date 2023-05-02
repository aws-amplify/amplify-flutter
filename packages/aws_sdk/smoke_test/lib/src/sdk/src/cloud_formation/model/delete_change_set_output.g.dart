// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.delete_change_set_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteChangeSetOutput extends DeleteChangeSetOutput {
  factory _$DeleteChangeSetOutput(
          [void Function(DeleteChangeSetOutputBuilder)? updates]) =>
      (new DeleteChangeSetOutputBuilder()..update(updates))._build();

  _$DeleteChangeSetOutput._() : super._();

  @override
  DeleteChangeSetOutput rebuild(
          void Function(DeleteChangeSetOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteChangeSetOutputBuilder toBuilder() =>
      new DeleteChangeSetOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteChangeSetOutput;
  }

  @override
  int get hashCode {
    return 703284989;
  }
}

class DeleteChangeSetOutputBuilder
    implements Builder<DeleteChangeSetOutput, DeleteChangeSetOutputBuilder> {
  _$DeleteChangeSetOutput? _$v;

  DeleteChangeSetOutputBuilder() {
    DeleteChangeSetOutput._init(this);
  }

  @override
  void replace(DeleteChangeSetOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteChangeSetOutput;
  }

  @override
  void update(void Function(DeleteChangeSetOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteChangeSetOutput build() => _build();

  _$DeleteChangeSetOutput _build() {
    final _$result = _$v ?? new _$DeleteChangeSetOutput._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
