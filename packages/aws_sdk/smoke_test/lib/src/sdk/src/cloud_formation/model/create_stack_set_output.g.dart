// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.create_stack_set_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateStackSetOutput extends CreateStackSetOutput {
  @override
  final String? stackSetId;

  factory _$CreateStackSetOutput(
          [void Function(CreateStackSetOutputBuilder)? updates]) =>
      (new CreateStackSetOutputBuilder()..update(updates))._build();

  _$CreateStackSetOutput._({this.stackSetId}) : super._();

  @override
  CreateStackSetOutput rebuild(
          void Function(CreateStackSetOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateStackSetOutputBuilder toBuilder() =>
      new CreateStackSetOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateStackSetOutput && stackSetId == other.stackSetId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSetId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateStackSetOutputBuilder
    implements Builder<CreateStackSetOutput, CreateStackSetOutputBuilder> {
  _$CreateStackSetOutput? _$v;

  String? _stackSetId;
  String? get stackSetId => _$this._stackSetId;
  set stackSetId(String? stackSetId) => _$this._stackSetId = stackSetId;

  CreateStackSetOutputBuilder() {
    CreateStackSetOutput._init(this);
  }

  CreateStackSetOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetId = $v.stackSetId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateStackSetOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateStackSetOutput;
  }

  @override
  void update(void Function(CreateStackSetOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateStackSetOutput build() => _build();

  _$CreateStackSetOutput _build() {
    final _$result =
        _$v ?? new _$CreateStackSetOutput._(stackSetId: stackSetId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
