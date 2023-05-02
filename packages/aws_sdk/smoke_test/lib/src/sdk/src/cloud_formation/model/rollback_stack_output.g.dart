// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.rollback_stack_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RollbackStackOutput extends RollbackStackOutput {
  @override
  final String? stackId;

  factory _$RollbackStackOutput(
          [void Function(RollbackStackOutputBuilder)? updates]) =>
      (new RollbackStackOutputBuilder()..update(updates))._build();

  _$RollbackStackOutput._({this.stackId}) : super._();

  @override
  RollbackStackOutput rebuild(
          void Function(RollbackStackOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RollbackStackOutputBuilder toBuilder() =>
      new RollbackStackOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RollbackStackOutput && stackId == other.stackId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RollbackStackOutputBuilder
    implements Builder<RollbackStackOutput, RollbackStackOutputBuilder> {
  _$RollbackStackOutput? _$v;

  String? _stackId;
  String? get stackId => _$this._stackId;
  set stackId(String? stackId) => _$this._stackId = stackId;

  RollbackStackOutputBuilder() {
    RollbackStackOutput._init(this);
  }

  RollbackStackOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackId = $v.stackId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RollbackStackOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RollbackStackOutput;
  }

  @override
  void update(void Function(RollbackStackOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RollbackStackOutput build() => _build();

  _$RollbackStackOutput _build() {
    final _$result = _$v ?? new _$RollbackStackOutput._(stackId: stackId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
