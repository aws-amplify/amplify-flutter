// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.delete_stack_set_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteStackSetInput extends DeleteStackSetInput {
  @override
  final String stackSetName;
  @override
  final _i3.CallAs? callAs;

  factory _$DeleteStackSetInput(
          [void Function(DeleteStackSetInputBuilder)? updates]) =>
      (new DeleteStackSetInputBuilder()..update(updates))._build();

  _$DeleteStackSetInput._({required this.stackSetName, this.callAs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackSetName, r'DeleteStackSetInput', 'stackSetName');
  }

  @override
  DeleteStackSetInput rebuild(
          void Function(DeleteStackSetInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteStackSetInputBuilder toBuilder() =>
      new DeleteStackSetInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteStackSetInput &&
        stackSetName == other.stackSetName &&
        callAs == other.callAs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSetName.hashCode);
    _$hash = $jc(_$hash, callAs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteStackSetInputBuilder
    implements Builder<DeleteStackSetInput, DeleteStackSetInputBuilder> {
  _$DeleteStackSetInput? _$v;

  String? _stackSetName;
  String? get stackSetName => _$this._stackSetName;
  set stackSetName(String? stackSetName) => _$this._stackSetName = stackSetName;

  _i3.CallAs? _callAs;
  _i3.CallAs? get callAs => _$this._callAs;
  set callAs(_i3.CallAs? callAs) => _$this._callAs = callAs;

  DeleteStackSetInputBuilder() {
    DeleteStackSetInput._init(this);
  }

  DeleteStackSetInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetName = $v.stackSetName;
      _callAs = $v.callAs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteStackSetInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteStackSetInput;
  }

  @override
  void update(void Function(DeleteStackSetInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteStackSetInput build() => _build();

  _$DeleteStackSetInput _build() {
    final _$result = _$v ??
        new _$DeleteStackSetInput._(
            stackSetName: BuiltValueNullFieldError.checkNotNull(
                stackSetName, r'DeleteStackSetInput', 'stackSetName'),
            callAs: callAs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
