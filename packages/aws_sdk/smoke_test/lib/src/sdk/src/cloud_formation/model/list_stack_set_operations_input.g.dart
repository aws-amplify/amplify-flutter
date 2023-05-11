// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_stack_set_operations_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStackSetOperationsInput extends ListStackSetOperationsInput {
  @override
  final String stackSetName;
  @override
  final String? nextToken;
  @override
  final int? maxResults;
  @override
  final _i3.CallAs? callAs;

  factory _$ListStackSetOperationsInput(
          [void Function(ListStackSetOperationsInputBuilder)? updates]) =>
      (new ListStackSetOperationsInputBuilder()..update(updates))._build();

  _$ListStackSetOperationsInput._(
      {required this.stackSetName,
      this.nextToken,
      this.maxResults,
      this.callAs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackSetName, r'ListStackSetOperationsInput', 'stackSetName');
  }

  @override
  ListStackSetOperationsInput rebuild(
          void Function(ListStackSetOperationsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListStackSetOperationsInputBuilder toBuilder() =>
      new ListStackSetOperationsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListStackSetOperationsInput &&
        stackSetName == other.stackSetName &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults &&
        callAs == other.callAs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSetName.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, callAs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListStackSetOperationsInputBuilder
    implements
        Builder<ListStackSetOperationsInput,
            ListStackSetOperationsInputBuilder> {
  _$ListStackSetOperationsInput? _$v;

  String? _stackSetName;
  String? get stackSetName => _$this._stackSetName;
  set stackSetName(String? stackSetName) => _$this._stackSetName = stackSetName;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  _i3.CallAs? _callAs;
  _i3.CallAs? get callAs => _$this._callAs;
  set callAs(_i3.CallAs? callAs) => _$this._callAs = callAs;

  ListStackSetOperationsInputBuilder() {
    ListStackSetOperationsInput._init(this);
  }

  ListStackSetOperationsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetName = $v.stackSetName;
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _callAs = $v.callAs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListStackSetOperationsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListStackSetOperationsInput;
  }

  @override
  void update(void Function(ListStackSetOperationsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListStackSetOperationsInput build() => _build();

  _$ListStackSetOperationsInput _build() {
    final _$result = _$v ??
        new _$ListStackSetOperationsInput._(
            stackSetName: BuiltValueNullFieldError.checkNotNull(
                stackSetName, r'ListStackSetOperationsInput', 'stackSetName'),
            nextToken: nextToken,
            maxResults: maxResults,
            callAs: callAs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
