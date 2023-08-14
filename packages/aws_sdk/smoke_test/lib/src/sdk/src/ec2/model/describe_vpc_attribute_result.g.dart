// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_vpc_attribute_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcAttributeResult extends DescribeVpcAttributeResult {
  @override
  final String? vpcId;
  @override
  final AttributeBooleanValue? enableDnsHostnames;
  @override
  final AttributeBooleanValue? enableDnsSupport;
  @override
  final AttributeBooleanValue? enableNetworkAddressUsageMetrics;

  factory _$DescribeVpcAttributeResult(
          [void Function(DescribeVpcAttributeResultBuilder)? updates]) =>
      (new DescribeVpcAttributeResultBuilder()..update(updates))._build();

  _$DescribeVpcAttributeResult._(
      {this.vpcId,
      this.enableDnsHostnames,
      this.enableDnsSupport,
      this.enableNetworkAddressUsageMetrics})
      : super._();

  @override
  DescribeVpcAttributeResult rebuild(
          void Function(DescribeVpcAttributeResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcAttributeResultBuilder toBuilder() =>
      new DescribeVpcAttributeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcAttributeResult &&
        vpcId == other.vpcId &&
        enableDnsHostnames == other.enableDnsHostnames &&
        enableDnsSupport == other.enableDnsSupport &&
        enableNetworkAddressUsageMetrics ==
            other.enableNetworkAddressUsageMetrics;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, enableDnsHostnames.hashCode);
    _$hash = $jc(_$hash, enableDnsSupport.hashCode);
    _$hash = $jc(_$hash, enableNetworkAddressUsageMetrics.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcAttributeResultBuilder
    implements
        Builder<DescribeVpcAttributeResult, DescribeVpcAttributeResultBuilder> {
  _$DescribeVpcAttributeResult? _$v;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  AttributeBooleanValueBuilder? _enableDnsHostnames;
  AttributeBooleanValueBuilder get enableDnsHostnames =>
      _$this._enableDnsHostnames ??= new AttributeBooleanValueBuilder();
  set enableDnsHostnames(AttributeBooleanValueBuilder? enableDnsHostnames) =>
      _$this._enableDnsHostnames = enableDnsHostnames;

  AttributeBooleanValueBuilder? _enableDnsSupport;
  AttributeBooleanValueBuilder get enableDnsSupport =>
      _$this._enableDnsSupport ??= new AttributeBooleanValueBuilder();
  set enableDnsSupport(AttributeBooleanValueBuilder? enableDnsSupport) =>
      _$this._enableDnsSupport = enableDnsSupport;

  AttributeBooleanValueBuilder? _enableNetworkAddressUsageMetrics;
  AttributeBooleanValueBuilder get enableNetworkAddressUsageMetrics =>
      _$this._enableNetworkAddressUsageMetrics ??=
          new AttributeBooleanValueBuilder();
  set enableNetworkAddressUsageMetrics(
          AttributeBooleanValueBuilder? enableNetworkAddressUsageMetrics) =>
      _$this._enableNetworkAddressUsageMetrics =
          enableNetworkAddressUsageMetrics;

  DescribeVpcAttributeResultBuilder();

  DescribeVpcAttributeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpcId = $v.vpcId;
      _enableDnsHostnames = $v.enableDnsHostnames?.toBuilder();
      _enableDnsSupport = $v.enableDnsSupport?.toBuilder();
      _enableNetworkAddressUsageMetrics =
          $v.enableNetworkAddressUsageMetrics?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcAttributeResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcAttributeResult;
  }

  @override
  void update(void Function(DescribeVpcAttributeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcAttributeResult build() => _build();

  _$DescribeVpcAttributeResult _build() {
    _$DescribeVpcAttributeResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpcAttributeResult._(
              vpcId: vpcId,
              enableDnsHostnames: _enableDnsHostnames?.build(),
              enableDnsSupport: _enableDnsSupport?.build(),
              enableNetworkAddressUsageMetrics:
                  _enableNetworkAddressUsageMetrics?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enableDnsHostnames';
        _enableDnsHostnames?.build();
        _$failedField = 'enableDnsSupport';
        _enableDnsSupport?.build();
        _$failedField = 'enableNetworkAddressUsageMetrics';
        _enableNetworkAddressUsageMetrics?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcAttributeResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
