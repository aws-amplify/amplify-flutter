// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_vpc_classic_link_dns_support_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcClassicLinkDnsSupportRequest
    extends DescribeVpcClassicLinkDnsSupportRequest {
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<String>? vpcIds;

  factory _$DescribeVpcClassicLinkDnsSupportRequest(
          [void Function(DescribeVpcClassicLinkDnsSupportRequestBuilder)?
              updates]) =>
      (new DescribeVpcClassicLinkDnsSupportRequestBuilder()..update(updates))
          ._build();

  _$DescribeVpcClassicLinkDnsSupportRequest._(
      {required this.maxResults, this.nextToken, this.vpcIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeVpcClassicLinkDnsSupportRequest', 'maxResults');
  }

  @override
  DescribeVpcClassicLinkDnsSupportRequest rebuild(
          void Function(DescribeVpcClassicLinkDnsSupportRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcClassicLinkDnsSupportRequestBuilder toBuilder() =>
      new DescribeVpcClassicLinkDnsSupportRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcClassicLinkDnsSupportRequest &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        vpcIds == other.vpcIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, vpcIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcClassicLinkDnsSupportRequestBuilder
    implements
        Builder<DescribeVpcClassicLinkDnsSupportRequest,
            DescribeVpcClassicLinkDnsSupportRequestBuilder> {
  _$DescribeVpcClassicLinkDnsSupportRequest? _$v;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<String>? _vpcIds;
  _i3.ListBuilder<String> get vpcIds =>
      _$this._vpcIds ??= new _i3.ListBuilder<String>();
  set vpcIds(_i3.ListBuilder<String>? vpcIds) => _$this._vpcIds = vpcIds;

  DescribeVpcClassicLinkDnsSupportRequestBuilder() {
    DescribeVpcClassicLinkDnsSupportRequest._init(this);
  }

  DescribeVpcClassicLinkDnsSupportRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _vpcIds = $v.vpcIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcClassicLinkDnsSupportRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcClassicLinkDnsSupportRequest;
  }

  @override
  void update(
      void Function(DescribeVpcClassicLinkDnsSupportRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcClassicLinkDnsSupportRequest build() => _build();

  _$DescribeVpcClassicLinkDnsSupportRequest _build() {
    _$DescribeVpcClassicLinkDnsSupportRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpcClassicLinkDnsSupportRequest._(
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeVpcClassicLinkDnsSupportRequest', 'maxResults'),
              nextToken: nextToken,
              vpcIds: _vpcIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpcIds';
        _vpcIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcClassicLinkDnsSupportRequest',
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
