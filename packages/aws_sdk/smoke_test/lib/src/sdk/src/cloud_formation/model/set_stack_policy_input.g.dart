// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.set_stack_policy_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetStackPolicyInput extends SetStackPolicyInput {
  @override
  final String stackName;
  @override
  final String? stackPolicyBody;
  @override
  final String? stackPolicyUrl;

  factory _$SetStackPolicyInput(
          [void Function(SetStackPolicyInputBuilder)? updates]) =>
      (new SetStackPolicyInputBuilder()..update(updates))._build();

  _$SetStackPolicyInput._(
      {required this.stackName, this.stackPolicyBody, this.stackPolicyUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackName, r'SetStackPolicyInput', 'stackName');
  }

  @override
  SetStackPolicyInput rebuild(
          void Function(SetStackPolicyInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetStackPolicyInputBuilder toBuilder() =>
      new SetStackPolicyInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetStackPolicyInput &&
        stackName == other.stackName &&
        stackPolicyBody == other.stackPolicyBody &&
        stackPolicyUrl == other.stackPolicyUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, stackPolicyBody.hashCode);
    _$hash = $jc(_$hash, stackPolicyUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SetStackPolicyInputBuilder
    implements Builder<SetStackPolicyInput, SetStackPolicyInputBuilder> {
  _$SetStackPolicyInput? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _stackPolicyBody;
  String? get stackPolicyBody => _$this._stackPolicyBody;
  set stackPolicyBody(String? stackPolicyBody) =>
      _$this._stackPolicyBody = stackPolicyBody;

  String? _stackPolicyUrl;
  String? get stackPolicyUrl => _$this._stackPolicyUrl;
  set stackPolicyUrl(String? stackPolicyUrl) =>
      _$this._stackPolicyUrl = stackPolicyUrl;

  SetStackPolicyInputBuilder() {
    SetStackPolicyInput._init(this);
  }

  SetStackPolicyInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _stackPolicyBody = $v.stackPolicyBody;
      _stackPolicyUrl = $v.stackPolicyUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetStackPolicyInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetStackPolicyInput;
  }

  @override
  void update(void Function(SetStackPolicyInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetStackPolicyInput build() => _build();

  _$SetStackPolicyInput _build() {
    final _$result = _$v ??
        new _$SetStackPolicyInput._(
            stackName: BuiltValueNullFieldError.checkNotNull(
                stackName, r'SetStackPolicyInput', 'stackName'),
            stackPolicyBody: stackPolicyBody,
            stackPolicyUrl: stackPolicyUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
