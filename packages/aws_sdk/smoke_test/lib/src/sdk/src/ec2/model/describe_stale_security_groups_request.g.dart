// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_stale_security_groups_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStaleSecurityGroupsRequest
    extends DescribeStaleSecurityGroupsRequest {
  @override
  final bool dryRun;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final String? vpcId;

  factory _$DescribeStaleSecurityGroupsRequest(
          [void Function(DescribeStaleSecurityGroupsRequestBuilder)?
              updates]) =>
      (new DescribeStaleSecurityGroupsRequestBuilder()..update(updates))
          ._build();

  _$DescribeStaleSecurityGroupsRequest._(
      {required this.dryRun,
      required this.maxResults,
      this.nextToken,
      this.vpcId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeStaleSecurityGroupsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeStaleSecurityGroupsRequest', 'maxResults');
  }

  @override
  DescribeStaleSecurityGroupsRequest rebuild(
          void Function(DescribeStaleSecurityGroupsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStaleSecurityGroupsRequestBuilder toBuilder() =>
      new DescribeStaleSecurityGroupsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStaleSecurityGroupsRequest &&
        dryRun == other.dryRun &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        vpcId == other.vpcId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStaleSecurityGroupsRequestBuilder
    implements
        Builder<DescribeStaleSecurityGroupsRequest,
            DescribeStaleSecurityGroupsRequestBuilder> {
  _$DescribeStaleSecurityGroupsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  DescribeStaleSecurityGroupsRequestBuilder() {
    DescribeStaleSecurityGroupsRequest._init(this);
  }

  DescribeStaleSecurityGroupsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _vpcId = $v.vpcId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStaleSecurityGroupsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStaleSecurityGroupsRequest;
  }

  @override
  void update(
      void Function(DescribeStaleSecurityGroupsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStaleSecurityGroupsRequest build() => _build();

  _$DescribeStaleSecurityGroupsRequest _build() {
    final _$result = _$v ??
        new _$DescribeStaleSecurityGroupsRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DescribeStaleSecurityGroupsRequest', 'dryRun'),
            maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                r'DescribeStaleSecurityGroupsRequest', 'maxResults'),
            nextToken: nextToken,
            vpcId: vpcId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
