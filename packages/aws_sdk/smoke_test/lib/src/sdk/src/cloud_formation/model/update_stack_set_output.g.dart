// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.update_stack_set_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateStackSetOutput extends UpdateStackSetOutput {
  @override
  final String? operationId;

  factory _$UpdateStackSetOutput(
          [void Function(UpdateStackSetOutputBuilder)? updates]) =>
      (new UpdateStackSetOutputBuilder()..update(updates))._build();

  _$UpdateStackSetOutput._({this.operationId}) : super._();

  @override
  UpdateStackSetOutput rebuild(
          void Function(UpdateStackSetOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateStackSetOutputBuilder toBuilder() =>
      new UpdateStackSetOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateStackSetOutput && operationId == other.operationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateStackSetOutputBuilder
    implements Builder<UpdateStackSetOutput, UpdateStackSetOutputBuilder> {
  _$UpdateStackSetOutput? _$v;

  String? _operationId;
  String? get operationId => _$this._operationId;
  set operationId(String? operationId) => _$this._operationId = operationId;

  UpdateStackSetOutputBuilder() {
    UpdateStackSetOutput._init(this);
  }

  UpdateStackSetOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operationId = $v.operationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateStackSetOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateStackSetOutput;
  }

  @override
  void update(void Function(UpdateStackSetOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateStackSetOutput build() => _build();

  _$UpdateStackSetOutput _build() {
    final _$result =
        _$v ?? new _$UpdateStackSetOutput._(operationId: operationId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
