// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_ipam_resource_discovery_associations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeIpamResourceDiscoveryAssociationsRequest
    extends DescribeIpamResourceDiscoveryAssociationsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? ipamResourceDiscoveryAssociationIds;
  @override
  final String? nextToken;
  @override
  final int maxResults;
  @override
  final _i3.BuiltList<Filter>? filters;

  factory _$DescribeIpamResourceDiscoveryAssociationsRequest(
          [void Function(
                  DescribeIpamResourceDiscoveryAssociationsRequestBuilder)?
              updates]) =>
      (new DescribeIpamResourceDiscoveryAssociationsRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeIpamResourceDiscoveryAssociationsRequest._(
      {required this.dryRun,
      this.ipamResourceDiscoveryAssociationIds,
      this.nextToken,
      required this.maxResults,
      this.filters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeIpamResourceDiscoveryAssociationsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'DescribeIpamResourceDiscoveryAssociationsRequest', 'maxResults');
  }

  @override
  DescribeIpamResourceDiscoveryAssociationsRequest rebuild(
          void Function(DescribeIpamResourceDiscoveryAssociationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeIpamResourceDiscoveryAssociationsRequestBuilder toBuilder() =>
      new DescribeIpamResourceDiscoveryAssociationsRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeIpamResourceDiscoveryAssociationsRequest &&
        dryRun == other.dryRun &&
        ipamResourceDiscoveryAssociationIds ==
            other.ipamResourceDiscoveryAssociationIds &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults &&
        filters == other.filters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamResourceDiscoveryAssociationIds.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeIpamResourceDiscoveryAssociationsRequestBuilder
    implements
        Builder<DescribeIpamResourceDiscoveryAssociationsRequest,
            DescribeIpamResourceDiscoveryAssociationsRequestBuilder> {
  _$DescribeIpamResourceDiscoveryAssociationsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _ipamResourceDiscoveryAssociationIds;
  _i3.ListBuilder<String> get ipamResourceDiscoveryAssociationIds =>
      _$this._ipamResourceDiscoveryAssociationIds ??=
          new _i3.ListBuilder<String>();
  set ipamResourceDiscoveryAssociationIds(
          _i3.ListBuilder<String>? ipamResourceDiscoveryAssociationIds) =>
      _$this._ipamResourceDiscoveryAssociationIds =
          ipamResourceDiscoveryAssociationIds;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  DescribeIpamResourceDiscoveryAssociationsRequestBuilder() {
    DescribeIpamResourceDiscoveryAssociationsRequest._init(this);
  }

  DescribeIpamResourceDiscoveryAssociationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamResourceDiscoveryAssociationIds =
          $v.ipamResourceDiscoveryAssociationIds?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _filters = $v.filters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeIpamResourceDiscoveryAssociationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeIpamResourceDiscoveryAssociationsRequest;
  }

  @override
  void update(
      void Function(DescribeIpamResourceDiscoveryAssociationsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeIpamResourceDiscoveryAssociationsRequest build() => _build();

  _$DescribeIpamResourceDiscoveryAssociationsRequest _build() {
    _$DescribeIpamResourceDiscoveryAssociationsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeIpamResourceDiscoveryAssociationsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'DescribeIpamResourceDiscoveryAssociationsRequest',
                  'dryRun'),
              ipamResourceDiscoveryAssociationIds:
                  _ipamResourceDiscoveryAssociationIds?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'DescribeIpamResourceDiscoveryAssociationsRequest',
                  'maxResults'),
              filters: _filters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamResourceDiscoveryAssociationIds';
        _ipamResourceDiscoveryAssociationIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeIpamResourceDiscoveryAssociationsRequest',
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
