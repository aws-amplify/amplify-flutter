// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.get_stack_policy_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetStackPolicyOutput extends GetStackPolicyOutput {
  @override
  final String? stackPolicyBody;

  factory _$GetStackPolicyOutput(
          [void Function(GetStackPolicyOutputBuilder)? updates]) =>
      (new GetStackPolicyOutputBuilder()..update(updates))._build();

  _$GetStackPolicyOutput._({this.stackPolicyBody}) : super._();

  @override
  GetStackPolicyOutput rebuild(
          void Function(GetStackPolicyOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetStackPolicyOutputBuilder toBuilder() =>
      new GetStackPolicyOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetStackPolicyOutput &&
        stackPolicyBody == other.stackPolicyBody;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackPolicyBody.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetStackPolicyOutputBuilder
    implements Builder<GetStackPolicyOutput, GetStackPolicyOutputBuilder> {
  _$GetStackPolicyOutput? _$v;

  String? _stackPolicyBody;
  String? get stackPolicyBody => _$this._stackPolicyBody;
  set stackPolicyBody(String? stackPolicyBody) =>
      _$this._stackPolicyBody = stackPolicyBody;

  GetStackPolicyOutputBuilder() {
    GetStackPolicyOutput._init(this);
  }

  GetStackPolicyOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackPolicyBody = $v.stackPolicyBody;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetStackPolicyOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetStackPolicyOutput;
  }

  @override
  void update(void Function(GetStackPolicyOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetStackPolicyOutput build() => _build();

  _$GetStackPolicyOutput _build() {
    final _$result =
        _$v ?? new _$GetStackPolicyOutput._(stackPolicyBody: stackPolicyBody);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
