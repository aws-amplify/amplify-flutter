// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_stack_sets_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStackSetsInput extends ListStackSetsInput {
  @override
  final String? nextToken;
  @override
  final int? maxResults;
  @override
  final _i3.StackSetStatus? status;
  @override
  final _i4.CallAs? callAs;

  factory _$ListStackSetsInput(
          [void Function(ListStackSetsInputBuilder)? updates]) =>
      (new ListStackSetsInputBuilder()..update(updates))._build();

  _$ListStackSetsInput._(
      {this.nextToken, this.maxResults, this.status, this.callAs})
      : super._();

  @override
  ListStackSetsInput rebuild(
          void Function(ListStackSetsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListStackSetsInputBuilder toBuilder() =>
      new ListStackSetsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListStackSetsInput &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults &&
        status == other.status &&
        callAs == other.callAs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, callAs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListStackSetsInputBuilder
    implements Builder<ListStackSetsInput, ListStackSetsInputBuilder> {
  _$ListStackSetsInput? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  _i3.StackSetStatus? _status;
  _i3.StackSetStatus? get status => _$this._status;
  set status(_i3.StackSetStatus? status) => _$this._status = status;

  _i4.CallAs? _callAs;
  _i4.CallAs? get callAs => _$this._callAs;
  set callAs(_i4.CallAs? callAs) => _$this._callAs = callAs;

  ListStackSetsInputBuilder() {
    ListStackSetsInput._init(this);
  }

  ListStackSetsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _status = $v.status;
      _callAs = $v.callAs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListStackSetsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListStackSetsInput;
  }

  @override
  void update(void Function(ListStackSetsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListStackSetsInput build() => _build();

  _$ListStackSetsInput _build() {
    final _$result = _$v ??
        new _$ListStackSetsInput._(
            nextToken: nextToken,
            maxResults: maxResults,
            status: status,
            callAs: callAs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
