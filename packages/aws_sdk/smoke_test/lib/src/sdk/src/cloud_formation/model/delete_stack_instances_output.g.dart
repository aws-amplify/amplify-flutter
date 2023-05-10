// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.delete_stack_instances_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteStackInstancesOutput extends DeleteStackInstancesOutput {
  @override
  final String? operationId;

  factory _$DeleteStackInstancesOutput(
          [void Function(DeleteStackInstancesOutputBuilder)? updates]) =>
      (new DeleteStackInstancesOutputBuilder()..update(updates))._build();

  _$DeleteStackInstancesOutput._({this.operationId}) : super._();

  @override
  DeleteStackInstancesOutput rebuild(
          void Function(DeleteStackInstancesOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteStackInstancesOutputBuilder toBuilder() =>
      new DeleteStackInstancesOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteStackInstancesOutput &&
        operationId == other.operationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteStackInstancesOutputBuilder
    implements
        Builder<DeleteStackInstancesOutput, DeleteStackInstancesOutputBuilder> {
  _$DeleteStackInstancesOutput? _$v;

  String? _operationId;
  String? get operationId => _$this._operationId;
  set operationId(String? operationId) => _$this._operationId = operationId;

  DeleteStackInstancesOutputBuilder() {
    DeleteStackInstancesOutput._init(this);
  }

  DeleteStackInstancesOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operationId = $v.operationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteStackInstancesOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteStackInstancesOutput;
  }

  @override
  void update(void Function(DeleteStackInstancesOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteStackInstancesOutput build() => _build();

  _$DeleteStackInstancesOutput _build() {
    final _$result =
        _$v ?? new _$DeleteStackInstancesOutput._(operationId: operationId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
