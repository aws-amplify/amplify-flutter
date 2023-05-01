// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_stack_set_operation_results_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStackSetOperationResultsInput
    extends ListStackSetOperationResultsInput {
  @override
  final String stackSetName;
  @override
  final String operationId;
  @override
  final String? nextToken;
  @override
  final int? maxResults;
  @override
  final _i3.CallAs? callAs;

  factory _$ListStackSetOperationResultsInput(
          [void Function(ListStackSetOperationResultsInputBuilder)? updates]) =>
      (new ListStackSetOperationResultsInputBuilder()..update(updates))
          ._build();

  _$ListStackSetOperationResultsInput._(
      {required this.stackSetName,
      required this.operationId,
      this.nextToken,
      this.maxResults,
      this.callAs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackSetName, r'ListStackSetOperationResultsInput', 'stackSetName');
    BuiltValueNullFieldError.checkNotNull(
        operationId, r'ListStackSetOperationResultsInput', 'operationId');
  }

  @override
  ListStackSetOperationResultsInput rebuild(
          void Function(ListStackSetOperationResultsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListStackSetOperationResultsInputBuilder toBuilder() =>
      new ListStackSetOperationResultsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListStackSetOperationResultsInput &&
        stackSetName == other.stackSetName &&
        operationId == other.operationId &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults &&
        callAs == other.callAs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSetName.hashCode);
    _$hash = $jc(_$hash, operationId.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, callAs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListStackSetOperationResultsInputBuilder
    implements
        Builder<ListStackSetOperationResultsInput,
            ListStackSetOperationResultsInputBuilder> {
  _$ListStackSetOperationResultsInput? _$v;

  String? _stackSetName;
  String? get stackSetName => _$this._stackSetName;
  set stackSetName(String? stackSetName) => _$this._stackSetName = stackSetName;

  String? _operationId;
  String? get operationId => _$this._operationId;
  set operationId(String? operationId) => _$this._operationId = operationId;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  _i3.CallAs? _callAs;
  _i3.CallAs? get callAs => _$this._callAs;
  set callAs(_i3.CallAs? callAs) => _$this._callAs = callAs;

  ListStackSetOperationResultsInputBuilder() {
    ListStackSetOperationResultsInput._init(this);
  }

  ListStackSetOperationResultsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetName = $v.stackSetName;
      _operationId = $v.operationId;
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _callAs = $v.callAs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListStackSetOperationResultsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListStackSetOperationResultsInput;
  }

  @override
  void update(
      void Function(ListStackSetOperationResultsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListStackSetOperationResultsInput build() => _build();

  _$ListStackSetOperationResultsInput _build() {
    final _$result = _$v ??
        new _$ListStackSetOperationResultsInput._(
            stackSetName: BuiltValueNullFieldError.checkNotNull(stackSetName,
                r'ListStackSetOperationResultsInput', 'stackSetName'),
            operationId: BuiltValueNullFieldError.checkNotNull(operationId,
                r'ListStackSetOperationResultsInput', 'operationId'),
            nextToken: nextToken,
            maxResults: maxResults,
            callAs: callAs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
