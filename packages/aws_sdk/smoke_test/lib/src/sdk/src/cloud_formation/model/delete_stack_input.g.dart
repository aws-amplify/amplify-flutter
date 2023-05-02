// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.delete_stack_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteStackInput extends DeleteStackInput {
  @override
  final String stackName;
  @override
  final _i3.BuiltList<String>? retainResources;
  @override
  final String? roleArn;
  @override
  final String? clientRequestToken;

  factory _$DeleteStackInput(
          [void Function(DeleteStackInputBuilder)? updates]) =>
      (new DeleteStackInputBuilder()..update(updates))._build();

  _$DeleteStackInput._(
      {required this.stackName,
      this.retainResources,
      this.roleArn,
      this.clientRequestToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackName, r'DeleteStackInput', 'stackName');
  }

  @override
  DeleteStackInput rebuild(void Function(DeleteStackInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteStackInputBuilder toBuilder() =>
      new DeleteStackInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteStackInput &&
        stackName == other.stackName &&
        retainResources == other.retainResources &&
        roleArn == other.roleArn &&
        clientRequestToken == other.clientRequestToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, retainResources.hashCode);
    _$hash = $jc(_$hash, roleArn.hashCode);
    _$hash = $jc(_$hash, clientRequestToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteStackInputBuilder
    implements Builder<DeleteStackInput, DeleteStackInputBuilder> {
  _$DeleteStackInput? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  _i3.ListBuilder<String>? _retainResources;
  _i3.ListBuilder<String> get retainResources =>
      _$this._retainResources ??= new _i3.ListBuilder<String>();
  set retainResources(_i3.ListBuilder<String>? retainResources) =>
      _$this._retainResources = retainResources;

  String? _roleArn;
  String? get roleArn => _$this._roleArn;
  set roleArn(String? roleArn) => _$this._roleArn = roleArn;

  String? _clientRequestToken;
  String? get clientRequestToken => _$this._clientRequestToken;
  set clientRequestToken(String? clientRequestToken) =>
      _$this._clientRequestToken = clientRequestToken;

  DeleteStackInputBuilder() {
    DeleteStackInput._init(this);
  }

  DeleteStackInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _retainResources = $v.retainResources?.toBuilder();
      _roleArn = $v.roleArn;
      _clientRequestToken = $v.clientRequestToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteStackInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteStackInput;
  }

  @override
  void update(void Function(DeleteStackInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteStackInput build() => _build();

  _$DeleteStackInput _build() {
    _$DeleteStackInput _$result;
    try {
      _$result = _$v ??
          new _$DeleteStackInput._(
              stackName: BuiltValueNullFieldError.checkNotNull(
                  stackName, r'DeleteStackInput', 'stackName'),
              retainResources: _retainResources?.build(),
              roleArn: roleArn,
              clientRequestToken: clientRequestToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'retainResources';
        _retainResources?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteStackInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
