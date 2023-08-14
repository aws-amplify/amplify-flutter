// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_vpc_peering_connections_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcPeeringConnectionsResult
    extends DescribeVpcPeeringConnectionsResult {
  @override
  final _i2.BuiltList<VpcPeeringConnection>? vpcPeeringConnections;
  @override
  final String? nextToken;

  factory _$DescribeVpcPeeringConnectionsResult(
          [void Function(DescribeVpcPeeringConnectionsResultBuilder)?
              updates]) =>
      (new DescribeVpcPeeringConnectionsResultBuilder()..update(updates))
          ._build();

  _$DescribeVpcPeeringConnectionsResult._(
      {this.vpcPeeringConnections, this.nextToken})
      : super._();

  @override
  DescribeVpcPeeringConnectionsResult rebuild(
          void Function(DescribeVpcPeeringConnectionsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcPeeringConnectionsResultBuilder toBuilder() =>
      new DescribeVpcPeeringConnectionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcPeeringConnectionsResult &&
        vpcPeeringConnections == other.vpcPeeringConnections &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpcPeeringConnections.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcPeeringConnectionsResultBuilder
    implements
        Builder<DescribeVpcPeeringConnectionsResult,
            DescribeVpcPeeringConnectionsResultBuilder> {
  _$DescribeVpcPeeringConnectionsResult? _$v;

  _i2.ListBuilder<VpcPeeringConnection>? _vpcPeeringConnections;
  _i2.ListBuilder<VpcPeeringConnection> get vpcPeeringConnections =>
      _$this._vpcPeeringConnections ??=
          new _i2.ListBuilder<VpcPeeringConnection>();
  set vpcPeeringConnections(
          _i2.ListBuilder<VpcPeeringConnection>? vpcPeeringConnections) =>
      _$this._vpcPeeringConnections = vpcPeeringConnections;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeVpcPeeringConnectionsResultBuilder();

  DescribeVpcPeeringConnectionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpcPeeringConnections = $v.vpcPeeringConnections?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcPeeringConnectionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcPeeringConnectionsResult;
  }

  @override
  void update(
      void Function(DescribeVpcPeeringConnectionsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcPeeringConnectionsResult build() => _build();

  _$DescribeVpcPeeringConnectionsResult _build() {
    _$DescribeVpcPeeringConnectionsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpcPeeringConnectionsResult._(
              vpcPeeringConnections: _vpcPeeringConnections?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpcPeeringConnections';
        _vpcPeeringConnections?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcPeeringConnectionsResult',
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
