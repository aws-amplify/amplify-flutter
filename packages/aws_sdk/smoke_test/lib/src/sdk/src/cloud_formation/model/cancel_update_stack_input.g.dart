// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.cancel_update_stack_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelUpdateStackInput extends CancelUpdateStackInput {
  @override
  final String stackName;
  @override
  final String? clientRequestToken;

  factory _$CancelUpdateStackInput(
          [void Function(CancelUpdateStackInputBuilder)? updates]) =>
      (new CancelUpdateStackInputBuilder()..update(updates))._build();

  _$CancelUpdateStackInput._({required this.stackName, this.clientRequestToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackName, r'CancelUpdateStackInput', 'stackName');
  }

  @override
  CancelUpdateStackInput rebuild(
          void Function(CancelUpdateStackInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelUpdateStackInputBuilder toBuilder() =>
      new CancelUpdateStackInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelUpdateStackInput &&
        stackName == other.stackName &&
        clientRequestToken == other.clientRequestToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, clientRequestToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelUpdateStackInputBuilder
    implements Builder<CancelUpdateStackInput, CancelUpdateStackInputBuilder> {
  _$CancelUpdateStackInput? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _clientRequestToken;
  String? get clientRequestToken => _$this._clientRequestToken;
  set clientRequestToken(String? clientRequestToken) =>
      _$this._clientRequestToken = clientRequestToken;

  CancelUpdateStackInputBuilder() {
    CancelUpdateStackInput._init(this);
  }

  CancelUpdateStackInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _clientRequestToken = $v.clientRequestToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelUpdateStackInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelUpdateStackInput;
  }

  @override
  void update(void Function(CancelUpdateStackInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelUpdateStackInput build() => _build();

  _$CancelUpdateStackInput _build() {
    final _$result = _$v ??
        new _$CancelUpdateStackInput._(
            stackName: BuiltValueNullFieldError.checkNotNull(
                stackName, r'CancelUpdateStackInput', 'stackName'),
            clientRequestToken: clientRequestToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
