// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_stack_instance_resource_drifts_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStackInstanceResourceDriftsInput
    extends ListStackInstanceResourceDriftsInput {
  @override
  final String stackSetName;
  @override
  final String? nextToken;
  @override
  final int? maxResults;
  @override
  final _i5.BuiltList<_i3.StackResourceDriftStatus>?
      stackInstanceResourceDriftStatuses;
  @override
  final String stackInstanceAccount;
  @override
  final String stackInstanceRegion;
  @override
  final String operationId;
  @override
  final _i4.CallAs? callAs;

  factory _$ListStackInstanceResourceDriftsInput(
          [void Function(ListStackInstanceResourceDriftsInputBuilder)?
              updates]) =>
      (new ListStackInstanceResourceDriftsInputBuilder()..update(updates))
          ._build();

  _$ListStackInstanceResourceDriftsInput._(
      {required this.stackSetName,
      this.nextToken,
      this.maxResults,
      this.stackInstanceResourceDriftStatuses,
      required this.stackInstanceAccount,
      required this.stackInstanceRegion,
      required this.operationId,
      this.callAs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackSetName, r'ListStackInstanceResourceDriftsInput', 'stackSetName');
    BuiltValueNullFieldError.checkNotNull(stackInstanceAccount,
        r'ListStackInstanceResourceDriftsInput', 'stackInstanceAccount');
    BuiltValueNullFieldError.checkNotNull(stackInstanceRegion,
        r'ListStackInstanceResourceDriftsInput', 'stackInstanceRegion');
    BuiltValueNullFieldError.checkNotNull(
        operationId, r'ListStackInstanceResourceDriftsInput', 'operationId');
  }

  @override
  ListStackInstanceResourceDriftsInput rebuild(
          void Function(ListStackInstanceResourceDriftsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListStackInstanceResourceDriftsInputBuilder toBuilder() =>
      new ListStackInstanceResourceDriftsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListStackInstanceResourceDriftsInput &&
        stackSetName == other.stackSetName &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults &&
        stackInstanceResourceDriftStatuses ==
            other.stackInstanceResourceDriftStatuses &&
        stackInstanceAccount == other.stackInstanceAccount &&
        stackInstanceRegion == other.stackInstanceRegion &&
        operationId == other.operationId &&
        callAs == other.callAs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSetName.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, stackInstanceResourceDriftStatuses.hashCode);
    _$hash = $jc(_$hash, stackInstanceAccount.hashCode);
    _$hash = $jc(_$hash, stackInstanceRegion.hashCode);
    _$hash = $jc(_$hash, operationId.hashCode);
    _$hash = $jc(_$hash, callAs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListStackInstanceResourceDriftsInputBuilder
    implements
        Builder<ListStackInstanceResourceDriftsInput,
            ListStackInstanceResourceDriftsInputBuilder> {
  _$ListStackInstanceResourceDriftsInput? _$v;

  String? _stackSetName;
  String? get stackSetName => _$this._stackSetName;
  set stackSetName(String? stackSetName) => _$this._stackSetName = stackSetName;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  _i5.ListBuilder<_i3.StackResourceDriftStatus>?
      _stackInstanceResourceDriftStatuses;
  _i5.ListBuilder<_i3.StackResourceDriftStatus>
      get stackInstanceResourceDriftStatuses =>
          _$this._stackInstanceResourceDriftStatuses ??=
              new _i5.ListBuilder<_i3.StackResourceDriftStatus>();
  set stackInstanceResourceDriftStatuses(
          _i5.ListBuilder<_i3.StackResourceDriftStatus>?
              stackInstanceResourceDriftStatuses) =>
      _$this._stackInstanceResourceDriftStatuses =
          stackInstanceResourceDriftStatuses;

  String? _stackInstanceAccount;
  String? get stackInstanceAccount => _$this._stackInstanceAccount;
  set stackInstanceAccount(String? stackInstanceAccount) =>
      _$this._stackInstanceAccount = stackInstanceAccount;

  String? _stackInstanceRegion;
  String? get stackInstanceRegion => _$this._stackInstanceRegion;
  set stackInstanceRegion(String? stackInstanceRegion) =>
      _$this._stackInstanceRegion = stackInstanceRegion;

  String? _operationId;
  String? get operationId => _$this._operationId;
  set operationId(String? operationId) => _$this._operationId = operationId;

  _i4.CallAs? _callAs;
  _i4.CallAs? get callAs => _$this._callAs;
  set callAs(_i4.CallAs? callAs) => _$this._callAs = callAs;

  ListStackInstanceResourceDriftsInputBuilder();

  ListStackInstanceResourceDriftsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetName = $v.stackSetName;
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _stackInstanceResourceDriftStatuses =
          $v.stackInstanceResourceDriftStatuses?.toBuilder();
      _stackInstanceAccount = $v.stackInstanceAccount;
      _stackInstanceRegion = $v.stackInstanceRegion;
      _operationId = $v.operationId;
      _callAs = $v.callAs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListStackInstanceResourceDriftsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListStackInstanceResourceDriftsInput;
  }

  @override
  void update(
      void Function(ListStackInstanceResourceDriftsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListStackInstanceResourceDriftsInput build() => _build();

  _$ListStackInstanceResourceDriftsInput _build() {
    _$ListStackInstanceResourceDriftsInput _$result;
    try {
      _$result = _$v ??
          new _$ListStackInstanceResourceDriftsInput._(
              stackSetName: BuiltValueNullFieldError.checkNotNull(stackSetName,
                  r'ListStackInstanceResourceDriftsInput', 'stackSetName'),
              nextToken: nextToken,
              maxResults: maxResults,
              stackInstanceResourceDriftStatuses:
                  _stackInstanceResourceDriftStatuses?.build(),
              stackInstanceAccount: BuiltValueNullFieldError.checkNotNull(
                  stackInstanceAccount,
                  r'ListStackInstanceResourceDriftsInput',
                  'stackInstanceAccount'),
              stackInstanceRegion: BuiltValueNullFieldError.checkNotNull(
                  stackInstanceRegion,
                  r'ListStackInstanceResourceDriftsInput',
                  'stackInstanceRegion'),
              operationId: BuiltValueNullFieldError.checkNotNull(operationId,
                  r'ListStackInstanceResourceDriftsInput', 'operationId'),
              callAs: callAs);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stackInstanceResourceDriftStatuses';
        _stackInstanceResourceDriftStatuses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListStackInstanceResourceDriftsInput',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
