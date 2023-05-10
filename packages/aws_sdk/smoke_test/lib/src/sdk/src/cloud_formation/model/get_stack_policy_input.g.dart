// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.get_stack_policy_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetStackPolicyInput extends GetStackPolicyInput {
  @override
  final String stackName;

  factory _$GetStackPolicyInput(
          [void Function(GetStackPolicyInputBuilder)? updates]) =>
      (new GetStackPolicyInputBuilder()..update(updates))._build();

  _$GetStackPolicyInput._({required this.stackName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackName, r'GetStackPolicyInput', 'stackName');
  }

  @override
  GetStackPolicyInput rebuild(
          void Function(GetStackPolicyInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetStackPolicyInputBuilder toBuilder() =>
      new GetStackPolicyInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetStackPolicyInput && stackName == other.stackName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetStackPolicyInputBuilder
    implements Builder<GetStackPolicyInput, GetStackPolicyInputBuilder> {
  _$GetStackPolicyInput? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  GetStackPolicyInputBuilder() {
    GetStackPolicyInput._init(this);
  }

  GetStackPolicyInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetStackPolicyInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetStackPolicyInput;
  }

  @override
  void update(void Function(GetStackPolicyInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetStackPolicyInput build() => _build();

  _$GetStackPolicyInput _build() {
    final _$result = _$v ??
        new _$GetStackPolicyInput._(
            stackName: BuiltValueNullFieldError.checkNotNull(
                stackName, r'GetStackPolicyInput', 'stackName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
