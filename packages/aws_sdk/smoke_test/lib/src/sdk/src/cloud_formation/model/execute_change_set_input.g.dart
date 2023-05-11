// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.execute_change_set_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExecuteChangeSetInput extends ExecuteChangeSetInput {
  @override
  final String changeSetName;
  @override
  final String? stackName;
  @override
  final String? clientRequestToken;
  @override
  final bool? disableRollback;

  factory _$ExecuteChangeSetInput(
          [void Function(ExecuteChangeSetInputBuilder)? updates]) =>
      (new ExecuteChangeSetInputBuilder()..update(updates))._build();

  _$ExecuteChangeSetInput._(
      {required this.changeSetName,
      this.stackName,
      this.clientRequestToken,
      this.disableRollback})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        changeSetName, r'ExecuteChangeSetInput', 'changeSetName');
  }

  @override
  ExecuteChangeSetInput rebuild(
          void Function(ExecuteChangeSetInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExecuteChangeSetInputBuilder toBuilder() =>
      new ExecuteChangeSetInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExecuteChangeSetInput &&
        changeSetName == other.changeSetName &&
        stackName == other.stackName &&
        clientRequestToken == other.clientRequestToken &&
        disableRollback == other.disableRollback;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, changeSetName.hashCode);
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, clientRequestToken.hashCode);
    _$hash = $jc(_$hash, disableRollback.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExecuteChangeSetInputBuilder
    implements Builder<ExecuteChangeSetInput, ExecuteChangeSetInputBuilder> {
  _$ExecuteChangeSetInput? _$v;

  String? _changeSetName;
  String? get changeSetName => _$this._changeSetName;
  set changeSetName(String? changeSetName) =>
      _$this._changeSetName = changeSetName;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _clientRequestToken;
  String? get clientRequestToken => _$this._clientRequestToken;
  set clientRequestToken(String? clientRequestToken) =>
      _$this._clientRequestToken = clientRequestToken;

  bool? _disableRollback;
  bool? get disableRollback => _$this._disableRollback;
  set disableRollback(bool? disableRollback) =>
      _$this._disableRollback = disableRollback;

  ExecuteChangeSetInputBuilder() {
    ExecuteChangeSetInput._init(this);
  }

  ExecuteChangeSetInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _changeSetName = $v.changeSetName;
      _stackName = $v.stackName;
      _clientRequestToken = $v.clientRequestToken;
      _disableRollback = $v.disableRollback;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExecuteChangeSetInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExecuteChangeSetInput;
  }

  @override
  void update(void Function(ExecuteChangeSetInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExecuteChangeSetInput build() => _build();

  _$ExecuteChangeSetInput _build() {
    final _$result = _$v ??
        new _$ExecuteChangeSetInput._(
            changeSetName: BuiltValueNullFieldError.checkNotNull(
                changeSetName, r'ExecuteChangeSetInput', 'changeSetName'),
            stackName: stackName,
            clientRequestToken: clientRequestToken,
            disableRollback: disableRollback);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
