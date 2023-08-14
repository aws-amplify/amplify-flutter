// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transit_gateway_policy_table_entries_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTransitGatewayPolicyTableEntriesRequest
    extends GetTransitGatewayPolicyTableEntriesRequest {
  @override
  final String? transitGatewayPolicyTableId;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$GetTransitGatewayPolicyTableEntriesRequest(
          [void Function(GetTransitGatewayPolicyTableEntriesRequestBuilder)?
              updates]) =>
      (new GetTransitGatewayPolicyTableEntriesRequestBuilder()..update(updates))
          ._build();

  _$GetTransitGatewayPolicyTableEntriesRequest._(
      {this.transitGatewayPolicyTableId,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'GetTransitGatewayPolicyTableEntriesRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetTransitGatewayPolicyTableEntriesRequest', 'dryRun');
  }

  @override
  GetTransitGatewayPolicyTableEntriesRequest rebuild(
          void Function(GetTransitGatewayPolicyTableEntriesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTransitGatewayPolicyTableEntriesRequestBuilder toBuilder() =>
      new GetTransitGatewayPolicyTableEntriesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTransitGatewayPolicyTableEntriesRequest &&
        transitGatewayPolicyTableId == other.transitGatewayPolicyTableId &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayPolicyTableId.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetTransitGatewayPolicyTableEntriesRequestBuilder
    implements
        Builder<GetTransitGatewayPolicyTableEntriesRequest,
            GetTransitGatewayPolicyTableEntriesRequestBuilder> {
  _$GetTransitGatewayPolicyTableEntriesRequest? _$v;

  String? _transitGatewayPolicyTableId;
  String? get transitGatewayPolicyTableId =>
      _$this._transitGatewayPolicyTableId;
  set transitGatewayPolicyTableId(String? transitGatewayPolicyTableId) =>
      _$this._transitGatewayPolicyTableId = transitGatewayPolicyTableId;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetTransitGatewayPolicyTableEntriesRequestBuilder() {
    GetTransitGatewayPolicyTableEntriesRequest._init(this);
  }

  GetTransitGatewayPolicyTableEntriesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPolicyTableId = $v.transitGatewayPolicyTableId;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTransitGatewayPolicyTableEntriesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTransitGatewayPolicyTableEntriesRequest;
  }

  @override
  void update(
      void Function(GetTransitGatewayPolicyTableEntriesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTransitGatewayPolicyTableEntriesRequest build() => _build();

  _$GetTransitGatewayPolicyTableEntriesRequest _build() {
    _$GetTransitGatewayPolicyTableEntriesRequest _$result;
    try {
      _$result = _$v ??
          new _$GetTransitGatewayPolicyTableEntriesRequest._(
              transitGatewayPolicyTableId: transitGatewayPolicyTableId,
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'GetTransitGatewayPolicyTableEntriesRequest', 'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'GetTransitGatewayPolicyTableEntriesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTransitGatewayPolicyTableEntriesRequest',
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
