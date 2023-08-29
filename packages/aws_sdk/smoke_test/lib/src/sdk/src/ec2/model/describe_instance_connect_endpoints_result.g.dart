// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_instance_connect_endpoints_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeInstanceConnectEndpointsResult
    extends DescribeInstanceConnectEndpointsResult {
  @override
  final _i2.BuiltList<Ec2InstanceConnectEndpoint>? instanceConnectEndpoints;
  @override
  final String? nextToken;

  factory _$DescribeInstanceConnectEndpointsResult(
          [void Function(DescribeInstanceConnectEndpointsResultBuilder)?
              updates]) =>
      (new DescribeInstanceConnectEndpointsResultBuilder()..update(updates))
          ._build();

  _$DescribeInstanceConnectEndpointsResult._(
      {this.instanceConnectEndpoints, this.nextToken})
      : super._();

  @override
  DescribeInstanceConnectEndpointsResult rebuild(
          void Function(DescribeInstanceConnectEndpointsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeInstanceConnectEndpointsResultBuilder toBuilder() =>
      new DescribeInstanceConnectEndpointsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeInstanceConnectEndpointsResult &&
        instanceConnectEndpoints == other.instanceConnectEndpoints &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceConnectEndpoints.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeInstanceConnectEndpointsResultBuilder
    implements
        Builder<DescribeInstanceConnectEndpointsResult,
            DescribeInstanceConnectEndpointsResultBuilder> {
  _$DescribeInstanceConnectEndpointsResult? _$v;

  _i2.ListBuilder<Ec2InstanceConnectEndpoint>? _instanceConnectEndpoints;
  _i2.ListBuilder<Ec2InstanceConnectEndpoint> get instanceConnectEndpoints =>
      _$this._instanceConnectEndpoints ??=
          new _i2.ListBuilder<Ec2InstanceConnectEndpoint>();
  set instanceConnectEndpoints(
          _i2.ListBuilder<Ec2InstanceConnectEndpoint>?
              instanceConnectEndpoints) =>
      _$this._instanceConnectEndpoints = instanceConnectEndpoints;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeInstanceConnectEndpointsResultBuilder();

  DescribeInstanceConnectEndpointsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceConnectEndpoints = $v.instanceConnectEndpoints?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeInstanceConnectEndpointsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeInstanceConnectEndpointsResult;
  }

  @override
  void update(
      void Function(DescribeInstanceConnectEndpointsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeInstanceConnectEndpointsResult build() => _build();

  _$DescribeInstanceConnectEndpointsResult _build() {
    _$DescribeInstanceConnectEndpointsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeInstanceConnectEndpointsResult._(
              instanceConnectEndpoints: _instanceConnectEndpoints?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceConnectEndpoints';
        _instanceConnectEndpoints?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeInstanceConnectEndpointsResult',
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
