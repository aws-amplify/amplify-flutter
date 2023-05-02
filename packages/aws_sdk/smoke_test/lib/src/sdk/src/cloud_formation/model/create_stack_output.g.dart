// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.create_stack_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateStackOutput extends CreateStackOutput {
  @override
  final String? stackId;

  factory _$CreateStackOutput(
          [void Function(CreateStackOutputBuilder)? updates]) =>
      (new CreateStackOutputBuilder()..update(updates))._build();

  _$CreateStackOutput._({this.stackId}) : super._();

  @override
  CreateStackOutput rebuild(void Function(CreateStackOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateStackOutputBuilder toBuilder() =>
      new CreateStackOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateStackOutput && stackId == other.stackId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateStackOutputBuilder
    implements Builder<CreateStackOutput, CreateStackOutputBuilder> {
  _$CreateStackOutput? _$v;

  String? _stackId;
  String? get stackId => _$this._stackId;
  set stackId(String? stackId) => _$this._stackId = stackId;

  CreateStackOutputBuilder() {
    CreateStackOutput._init(this);
  }

  CreateStackOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackId = $v.stackId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateStackOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateStackOutput;
  }

  @override
  void update(void Function(CreateStackOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateStackOutput build() => _build();

  _$CreateStackOutput _build() {
    final _$result = _$v ?? new _$CreateStackOutput._(stackId: stackId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
