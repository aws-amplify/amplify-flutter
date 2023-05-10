// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.update_stack_instances_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateStackInstancesOutput extends UpdateStackInstancesOutput {
  @override
  final String? operationId;

  factory _$UpdateStackInstancesOutput(
          [void Function(UpdateStackInstancesOutputBuilder)? updates]) =>
      (new UpdateStackInstancesOutputBuilder()..update(updates))._build();

  _$UpdateStackInstancesOutput._({this.operationId}) : super._();

  @override
  UpdateStackInstancesOutput rebuild(
          void Function(UpdateStackInstancesOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateStackInstancesOutputBuilder toBuilder() =>
      new UpdateStackInstancesOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateStackInstancesOutput &&
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

class UpdateStackInstancesOutputBuilder
    implements
        Builder<UpdateStackInstancesOutput, UpdateStackInstancesOutputBuilder> {
  _$UpdateStackInstancesOutput? _$v;

  String? _operationId;
  String? get operationId => _$this._operationId;
  set operationId(String? operationId) => _$this._operationId = operationId;

  UpdateStackInstancesOutputBuilder() {
    UpdateStackInstancesOutput._init(this);
  }

  UpdateStackInstancesOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operationId = $v.operationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateStackInstancesOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateStackInstancesOutput;
  }

  @override
  void update(void Function(UpdateStackInstancesOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateStackInstancesOutput build() => _build();

  _$UpdateStackInstancesOutput _build() {
    final _$result =
        _$v ?? new _$UpdateStackInstancesOutput._(operationId: operationId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
