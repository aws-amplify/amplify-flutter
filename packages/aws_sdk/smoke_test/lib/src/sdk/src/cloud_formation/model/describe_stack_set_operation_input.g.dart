// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_stack_set_operation_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStackSetOperationInput extends DescribeStackSetOperationInput {
  @override
  final String stackSetName;
  @override
  final String operationId;
  @override
  final _i3.CallAs? callAs;

  factory _$DescribeStackSetOperationInput(
          [void Function(DescribeStackSetOperationInputBuilder)? updates]) =>
      (new DescribeStackSetOperationInputBuilder()..update(updates))._build();

  _$DescribeStackSetOperationInput._(
      {required this.stackSetName, required this.operationId, this.callAs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackSetName, r'DescribeStackSetOperationInput', 'stackSetName');
    BuiltValueNullFieldError.checkNotNull(
        operationId, r'DescribeStackSetOperationInput', 'operationId');
  }

  @override
  DescribeStackSetOperationInput rebuild(
          void Function(DescribeStackSetOperationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStackSetOperationInputBuilder toBuilder() =>
      new DescribeStackSetOperationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStackSetOperationInput &&
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

class DescribeStackSetOperationInputBuilder
    implements
        Builder<DescribeStackSetOperationInput,
            DescribeStackSetOperationInputBuilder> {
  _$DescribeStackSetOperationInput? _$v;

  String? _stackSetName;
  String? get stackSetName => _$this._stackSetName;
  set stackSetName(String? stackSetName) => _$this._stackSetName = stackSetName;

  String? _operationId;
  String? get operationId => _$this._operationId;
  set operationId(String? operationId) => _$this._operationId = operationId;

  _i3.CallAs? _callAs;
  _i3.CallAs? get callAs => _$this._callAs;
  set callAs(_i3.CallAs? callAs) => _$this._callAs = callAs;

  DescribeStackSetOperationInputBuilder() {
    DescribeStackSetOperationInput._init(this);
  }

  DescribeStackSetOperationInputBuilder get _$this {
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
  void replace(DescribeStackSetOperationInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStackSetOperationInput;
  }

  @override
  void update(void Function(DescribeStackSetOperationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStackSetOperationInput build() => _build();

  _$DescribeStackSetOperationInput _build() {
    final _$result = _$v ??
        new _$DescribeStackSetOperationInput._(
            stackSetName: BuiltValueNullFieldError.checkNotNull(stackSetName,
                r'DescribeStackSetOperationInput', 'stackSetName'),
            operationId: BuiltValueNullFieldError.checkNotNull(
                operationId, r'DescribeStackSetOperationInput', 'operationId'),
            callAs: callAs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
