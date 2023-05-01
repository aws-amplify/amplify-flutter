// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.update_stack_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateStackOutput extends UpdateStackOutput {
  @override
  final String? stackId;

  factory _$UpdateStackOutput(
          [void Function(UpdateStackOutputBuilder)? updates]) =>
      (new UpdateStackOutputBuilder()..update(updates))._build();

  _$UpdateStackOutput._({this.stackId}) : super._();

  @override
  UpdateStackOutput rebuild(void Function(UpdateStackOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateStackOutputBuilder toBuilder() =>
      new UpdateStackOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateStackOutput && stackId == other.stackId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateStackOutputBuilder
    implements Builder<UpdateStackOutput, UpdateStackOutputBuilder> {
  _$UpdateStackOutput? _$v;

  String? _stackId;
  String? get stackId => _$this._stackId;
  set stackId(String? stackId) => _$this._stackId = stackId;

  UpdateStackOutputBuilder() {
    UpdateStackOutput._init(this);
  }

  UpdateStackOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackId = $v.stackId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateStackOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateStackOutput;
  }

  @override
  void update(void Function(UpdateStackOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateStackOutput build() => _build();

  _$UpdateStackOutput _build() {
    final _$result = _$v ?? new _$UpdateStackOutput._(stackId: stackId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
