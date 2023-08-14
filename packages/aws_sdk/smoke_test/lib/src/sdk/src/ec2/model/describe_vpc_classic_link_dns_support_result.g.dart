// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_vpc_classic_link_dns_support_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcClassicLinkDnsSupportResult
    extends DescribeVpcClassicLinkDnsSupportResult {
  @override
  final String? nextToken;
  @override
  final _i2.BuiltList<ClassicLinkDnsSupport>? vpcs;

  factory _$DescribeVpcClassicLinkDnsSupportResult(
          [void Function(DescribeVpcClassicLinkDnsSupportResultBuilder)?
              updates]) =>
      (new DescribeVpcClassicLinkDnsSupportResultBuilder()..update(updates))
          ._build();

  _$DescribeVpcClassicLinkDnsSupportResult._({this.nextToken, this.vpcs})
      : super._();

  @override
  DescribeVpcClassicLinkDnsSupportResult rebuild(
          void Function(DescribeVpcClassicLinkDnsSupportResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcClassicLinkDnsSupportResultBuilder toBuilder() =>
      new DescribeVpcClassicLinkDnsSupportResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcClassicLinkDnsSupportResult &&
        nextToken == other.nextToken &&
        vpcs == other.vpcs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, vpcs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcClassicLinkDnsSupportResultBuilder
    implements
        Builder<DescribeVpcClassicLinkDnsSupportResult,
            DescribeVpcClassicLinkDnsSupportResultBuilder> {
  _$DescribeVpcClassicLinkDnsSupportResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i2.ListBuilder<ClassicLinkDnsSupport>? _vpcs;
  _i2.ListBuilder<ClassicLinkDnsSupport> get vpcs =>
      _$this._vpcs ??= new _i2.ListBuilder<ClassicLinkDnsSupport>();
  set vpcs(_i2.ListBuilder<ClassicLinkDnsSupport>? vpcs) => _$this._vpcs = vpcs;

  DescribeVpcClassicLinkDnsSupportResultBuilder();

  DescribeVpcClassicLinkDnsSupportResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _vpcs = $v.vpcs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcClassicLinkDnsSupportResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcClassicLinkDnsSupportResult;
  }

  @override
  void update(
      void Function(DescribeVpcClassicLinkDnsSupportResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcClassicLinkDnsSupportResult build() => _build();

  _$DescribeVpcClassicLinkDnsSupportResult _build() {
    _$DescribeVpcClassicLinkDnsSupportResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpcClassicLinkDnsSupportResult._(
              nextToken: nextToken, vpcs: _vpcs?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpcs';
        _vpcs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcClassicLinkDnsSupportResult',
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
