// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.delete_change_set_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteChangeSetInput extends DeleteChangeSetInput {
  @override
  final String changeSetName;
  @override
  final String? stackName;

  factory _$DeleteChangeSetInput(
          [void Function(DeleteChangeSetInputBuilder)? updates]) =>
      (new DeleteChangeSetInputBuilder()..update(updates))._build();

  _$DeleteChangeSetInput._({required this.changeSetName, this.stackName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        changeSetName, r'DeleteChangeSetInput', 'changeSetName');
  }

  @override
  DeleteChangeSetInput rebuild(
          void Function(DeleteChangeSetInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteChangeSetInputBuilder toBuilder() =>
      new DeleteChangeSetInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteChangeSetInput &&
        changeSetName == other.changeSetName &&
        stackName == other.stackName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, changeSetName.hashCode);
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteChangeSetInputBuilder
    implements Builder<DeleteChangeSetInput, DeleteChangeSetInputBuilder> {
  _$DeleteChangeSetInput? _$v;

  String? _changeSetName;
  String? get changeSetName => _$this._changeSetName;
  set changeSetName(String? changeSetName) =>
      _$this._changeSetName = changeSetName;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  DeleteChangeSetInputBuilder() {
    DeleteChangeSetInput._init(this);
  }

  DeleteChangeSetInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _changeSetName = $v.changeSetName;
      _stackName = $v.stackName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteChangeSetInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteChangeSetInput;
  }

  @override
  void update(void Function(DeleteChangeSetInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteChangeSetInput build() => _build();

  _$DeleteChangeSetInput _build() {
    final _$result = _$v ??
        new _$DeleteChangeSetInput._(
            changeSetName: BuiltValueNullFieldError.checkNotNull(
                changeSetName, r'DeleteChangeSetInput', 'changeSetName'),
            stackName: stackName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
