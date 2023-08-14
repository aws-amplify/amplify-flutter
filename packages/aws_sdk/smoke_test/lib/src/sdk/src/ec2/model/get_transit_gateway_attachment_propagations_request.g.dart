// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transit_gateway_attachment_propagations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTransitGatewayAttachmentPropagationsRequest
    extends GetTransitGatewayAttachmentPropagationsRequest {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$GetTransitGatewayAttachmentPropagationsRequest(
          [void Function(GetTransitGatewayAttachmentPropagationsRequestBuilder)?
              updates]) =>
      (new GetTransitGatewayAttachmentPropagationsRequestBuilder()
            ..update(updates))
          ._build();

  _$GetTransitGatewayAttachmentPropagationsRequest._(
      {this.transitGatewayAttachmentId,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'GetTransitGatewayAttachmentPropagationsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetTransitGatewayAttachmentPropagationsRequest', 'dryRun');
  }

  @override
  GetTransitGatewayAttachmentPropagationsRequest rebuild(
          void Function(GetTransitGatewayAttachmentPropagationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTransitGatewayAttachmentPropagationsRequestBuilder toBuilder() =>
      new GetTransitGatewayAttachmentPropagationsRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTransitGatewayAttachmentPropagationsRequest &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetTransitGatewayAttachmentPropagationsRequestBuilder
    implements
        Builder<GetTransitGatewayAttachmentPropagationsRequest,
            GetTransitGatewayAttachmentPropagationsRequestBuilder> {
  _$GetTransitGatewayAttachmentPropagationsRequest? _$v;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

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

  GetTransitGatewayAttachmentPropagationsRequestBuilder() {
    GetTransitGatewayAttachmentPropagationsRequest._init(this);
  }

  GetTransitGatewayAttachmentPropagationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTransitGatewayAttachmentPropagationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTransitGatewayAttachmentPropagationsRequest;
  }

  @override
  void update(
      void Function(GetTransitGatewayAttachmentPropagationsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTransitGatewayAttachmentPropagationsRequest build() => _build();

  _$GetTransitGatewayAttachmentPropagationsRequest _build() {
    _$GetTransitGatewayAttachmentPropagationsRequest _$result;
    try {
      _$result = _$v ??
          new _$GetTransitGatewayAttachmentPropagationsRequest._(
              transitGatewayAttachmentId: transitGatewayAttachmentId,
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'GetTransitGatewayAttachmentPropagationsRequest',
                  'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'GetTransitGatewayAttachmentPropagationsRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTransitGatewayAttachmentPropagationsRequest',
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
