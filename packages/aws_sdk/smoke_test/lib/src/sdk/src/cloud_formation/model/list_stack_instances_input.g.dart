// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_stack_instances_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStackInstancesInput extends ListStackInstancesInput {
  @override
  final String stackSetName;
  @override
  final String? nextToken;
  @override
  final int? maxResults;
  @override
  final _i5.BuiltList<_i3.StackInstanceFilter>? filters;
  @override
  final String? stackInstanceAccount;
  @override
  final String? stackInstanceRegion;
  @override
  final _i4.CallAs? callAs;

  factory _$ListStackInstancesInput(
          [void Function(ListStackInstancesInputBuilder)? updates]) =>
      (new ListStackInstancesInputBuilder()..update(updates))._build();

  _$ListStackInstancesInput._(
      {required this.stackSetName,
      this.nextToken,
      this.maxResults,
      this.filters,
      this.stackInstanceAccount,
      this.stackInstanceRegion,
      this.callAs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackSetName, r'ListStackInstancesInput', 'stackSetName');
  }

  @override
  ListStackInstancesInput rebuild(
          void Function(ListStackInstancesInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListStackInstancesInputBuilder toBuilder() =>
      new ListStackInstancesInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListStackInstancesInput &&
        stackSetName == other.stackSetName &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults &&
        filters == other.filters &&
        stackInstanceAccount == other.stackInstanceAccount &&
        stackInstanceRegion == other.stackInstanceRegion &&
        callAs == other.callAs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSetName.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, stackInstanceAccount.hashCode);
    _$hash = $jc(_$hash, stackInstanceRegion.hashCode);
    _$hash = $jc(_$hash, callAs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListStackInstancesInputBuilder
    implements
        Builder<ListStackInstancesInput, ListStackInstancesInputBuilder> {
  _$ListStackInstancesInput? _$v;

  String? _stackSetName;
  String? get stackSetName => _$this._stackSetName;
  set stackSetName(String? stackSetName) => _$this._stackSetName = stackSetName;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  _i5.ListBuilder<_i3.StackInstanceFilter>? _filters;
  _i5.ListBuilder<_i3.StackInstanceFilter> get filters =>
      _$this._filters ??= new _i5.ListBuilder<_i3.StackInstanceFilter>();
  set filters(_i5.ListBuilder<_i3.StackInstanceFilter>? filters) =>
      _$this._filters = filters;

  String? _stackInstanceAccount;
  String? get stackInstanceAccount => _$this._stackInstanceAccount;
  set stackInstanceAccount(String? stackInstanceAccount) =>
      _$this._stackInstanceAccount = stackInstanceAccount;

  String? _stackInstanceRegion;
  String? get stackInstanceRegion => _$this._stackInstanceRegion;
  set stackInstanceRegion(String? stackInstanceRegion) =>
      _$this._stackInstanceRegion = stackInstanceRegion;

  _i4.CallAs? _callAs;
  _i4.CallAs? get callAs => _$this._callAs;
  set callAs(_i4.CallAs? callAs) => _$this._callAs = callAs;

  ListStackInstancesInputBuilder() {
    ListStackInstancesInput._init(this);
  }

  ListStackInstancesInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetName = $v.stackSetName;
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _filters = $v.filters?.toBuilder();
      _stackInstanceAccount = $v.stackInstanceAccount;
      _stackInstanceRegion = $v.stackInstanceRegion;
      _callAs = $v.callAs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListStackInstancesInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListStackInstancesInput;
  }

  @override
  void update(void Function(ListStackInstancesInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListStackInstancesInput build() => _build();

  _$ListStackInstancesInput _build() {
    _$ListStackInstancesInput _$result;
    try {
      _$result = _$v ??
          new _$ListStackInstancesInput._(
              stackSetName: BuiltValueNullFieldError.checkNotNull(
                  stackSetName, r'ListStackInstancesInput', 'stackSetName'),
              nextToken: nextToken,
              maxResults: maxResults,
              filters: _filters?.build(),
              stackInstanceAccount: stackInstanceAccount,
              stackInstanceRegion: stackInstanceRegion,
              callAs: callAs);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListStackInstancesInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
