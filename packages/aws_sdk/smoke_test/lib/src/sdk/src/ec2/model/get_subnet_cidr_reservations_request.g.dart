// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_subnet_cidr_reservations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSubnetCidrReservationsRequest
    extends GetSubnetCidrReservationsRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final String? subnetId;
  @override
  final bool dryRun;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$GetSubnetCidrReservationsRequest(
          [void Function(GetSubnetCidrReservationsRequestBuilder)? updates]) =>
      (new GetSubnetCidrReservationsRequestBuilder()..update(updates))._build();

  _$GetSubnetCidrReservationsRequest._(
      {this.filters,
      this.subnetId,
      required this.dryRun,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetSubnetCidrReservationsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'GetSubnetCidrReservationsRequest', 'maxResults');
  }

  @override
  GetSubnetCidrReservationsRequest rebuild(
          void Function(GetSubnetCidrReservationsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSubnetCidrReservationsRequestBuilder toBuilder() =>
      new GetSubnetCidrReservationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSubnetCidrReservationsRequest &&
        filters == other.filters &&
        subnetId == other.subnetId &&
        dryRun == other.dryRun &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetSubnetCidrReservationsRequestBuilder
    implements
        Builder<GetSubnetCidrReservationsRequest,
            GetSubnetCidrReservationsRequestBuilder> {
  _$GetSubnetCidrReservationsRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  GetSubnetCidrReservationsRequestBuilder() {
    GetSubnetCidrReservationsRequest._init(this);
  }

  GetSubnetCidrReservationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _subnetId = $v.subnetId;
      _dryRun = $v.dryRun;
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSubnetCidrReservationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSubnetCidrReservationsRequest;
  }

  @override
  void update(void Function(GetSubnetCidrReservationsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSubnetCidrReservationsRequest build() => _build();

  _$GetSubnetCidrReservationsRequest _build() {
    _$GetSubnetCidrReservationsRequest _$result;
    try {
      _$result = _$v ??
          new _$GetSubnetCidrReservationsRequest._(
              filters: _filters?.build(),
              subnetId: subnetId,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'GetSubnetCidrReservationsRequest', 'dryRun'),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'GetSubnetCidrReservationsRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetSubnetCidrReservationsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
