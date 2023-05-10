// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.rollback_stack_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RollbackStackInput extends RollbackStackInput {
  @override
  final String stackName;
  @override
  final String? roleArn;
  @override
  final String? clientRequestToken;

  factory _$RollbackStackInput(
          [void Function(RollbackStackInputBuilder)? updates]) =>
      (new RollbackStackInputBuilder()..update(updates))._build();

  _$RollbackStackInput._(
      {required this.stackName, this.roleArn, this.clientRequestToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackName, r'RollbackStackInput', 'stackName');
  }

  @override
  RollbackStackInput rebuild(
          void Function(RollbackStackInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RollbackStackInputBuilder toBuilder() =>
      new RollbackStackInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RollbackStackInput &&
        stackName == other.stackName &&
        roleArn == other.roleArn &&
        clientRequestToken == other.clientRequestToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, roleArn.hashCode);
    _$hash = $jc(_$hash, clientRequestToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RollbackStackInputBuilder
    implements Builder<RollbackStackInput, RollbackStackInputBuilder> {
  _$RollbackStackInput? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _roleArn;
  String? get roleArn => _$this._roleArn;
  set roleArn(String? roleArn) => _$this._roleArn = roleArn;

  String? _clientRequestToken;
  String? get clientRequestToken => _$this._clientRequestToken;
  set clientRequestToken(String? clientRequestToken) =>
      _$this._clientRequestToken = clientRequestToken;

  RollbackStackInputBuilder() {
    RollbackStackInput._init(this);
  }

  RollbackStackInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _roleArn = $v.roleArn;
      _clientRequestToken = $v.clientRequestToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RollbackStackInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RollbackStackInput;
  }

  @override
  void update(void Function(RollbackStackInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RollbackStackInput build() => _build();

  _$RollbackStackInput _build() {
    final _$result = _$v ??
        new _$RollbackStackInput._(
            stackName: BuiltValueNullFieldError.checkNotNull(
                stackName, r'RollbackStackInput', 'stackName'),
            roleArn: roleArn,
            clientRequestToken: clientRequestToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
