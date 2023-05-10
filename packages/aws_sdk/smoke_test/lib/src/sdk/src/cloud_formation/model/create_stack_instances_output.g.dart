// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.create_stack_instances_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateStackInstancesOutput extends CreateStackInstancesOutput {
  @override
  final String? operationId;

  factory _$CreateStackInstancesOutput(
          [void Function(CreateStackInstancesOutputBuilder)? updates]) =>
      (new CreateStackInstancesOutputBuilder()..update(updates))._build();

  _$CreateStackInstancesOutput._({this.operationId}) : super._();

  @override
  CreateStackInstancesOutput rebuild(
          void Function(CreateStackInstancesOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateStackInstancesOutputBuilder toBuilder() =>
      new CreateStackInstancesOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateStackInstancesOutput &&
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

class CreateStackInstancesOutputBuilder
    implements
        Builder<CreateStackInstancesOutput, CreateStackInstancesOutputBuilder> {
  _$CreateStackInstancesOutput? _$v;

  String? _operationId;
  String? get operationId => _$this._operationId;
  set operationId(String? operationId) => _$this._operationId = operationId;

  CreateStackInstancesOutputBuilder() {
    CreateStackInstancesOutput._init(this);
  }

  CreateStackInstancesOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operationId = $v.operationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateStackInstancesOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateStackInstancesOutput;
  }

  @override
  void update(void Function(CreateStackInstancesOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateStackInstancesOutput build() => _build();

  _$CreateStackInstancesOutput _build() {
    final _$result =
        _$v ?? new _$CreateStackInstancesOutput._(operationId: operationId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
