// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stop_stack_set_operation_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StopStackSetOperationInput extends StopStackSetOperationInput {
  @override
  final String stackSetName;
  @override
  final String operationId;
  @override
  final _i3.CallAs? callAs;

  factory _$StopStackSetOperationInput(
          [void Function(StopStackSetOperationInputBuilder)? updates]) =>
      (new StopStackSetOperationInputBuilder()..update(updates))._build();

  _$StopStackSetOperationInput._(
      {required this.stackSetName, required this.operationId, this.callAs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackSetName, r'StopStackSetOperationInput', 'stackSetName');
    BuiltValueNullFieldError.checkNotNull(
        operationId, r'StopStackSetOperationInput', 'operationId');
  }

  @override
  StopStackSetOperationInput rebuild(
          void Function(StopStackSetOperationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StopStackSetOperationInputBuilder toBuilder() =>
      new StopStackSetOperationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StopStackSetOperationInput &&
        stackSetName == other.stackSetName &&
        operationId == other.operationId &&
        callAs == other.callAs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSetName.hashCode);
    _$hash = $jc(_$hash, operationId.hashCode);
    _$hash = $jc(_$hash, callAs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StopStackSetOperationInputBuilder
    implements
        Builder<StopStackSetOperationInput, StopStackSetOperationInputBuilder> {
  _$StopStackSetOperationInput? _$v;

  String? _stackSetName;
  String? get stackSetName => _$this._stackSetName;
  set stackSetName(String? stackSetName) => _$this._stackSetName = stackSetName;

  String? _operationId;
  String? get operationId => _$this._operationId;
  set operationId(String? operationId) => _$this._operationId = operationId;

  _i3.CallAs? _callAs;
  _i3.CallAs? get callAs => _$this._callAs;
  set callAs(_i3.CallAs? callAs) => _$this._callAs = callAs;

  StopStackSetOperationInputBuilder() {
    StopStackSetOperationInput._init(this);
  }

  StopStackSetOperationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetName = $v.stackSetName;
      _operationId = $v.operationId;
      _callAs = $v.callAs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StopStackSetOperationInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StopStackSetOperationInput;
  }

  @override
  void update(void Function(StopStackSetOperationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StopStackSetOperationInput build() => _build();

  _$StopStackSetOperationInput _build() {
    final _$result = _$v ??
        new _$StopStackSetOperationInput._(
            stackSetName: BuiltValueNullFieldError.checkNotNull(
                stackSetName, r'StopStackSetOperationInput', 'stackSetName'),
            operationId: BuiltValueNullFieldError.checkNotNull(
                operationId, r'StopStackSetOperationInput', 'operationId'),
            callAs: callAs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
