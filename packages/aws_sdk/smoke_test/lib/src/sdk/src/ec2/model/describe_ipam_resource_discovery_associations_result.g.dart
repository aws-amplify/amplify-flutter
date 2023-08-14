// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_ipam_resource_discovery_associations_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeIpamResourceDiscoveryAssociationsResult
    extends DescribeIpamResourceDiscoveryAssociationsResult {
  @override
  final _i2.BuiltList<IpamResourceDiscoveryAssociation>?
      ipamResourceDiscoveryAssociations;
  @override
  final String? nextToken;

  factory _$DescribeIpamResourceDiscoveryAssociationsResult(
          [void Function(
                  DescribeIpamResourceDiscoveryAssociationsResultBuilder)?
              updates]) =>
      (new DescribeIpamResourceDiscoveryAssociationsResultBuilder()
            ..update(updates))
          ._build();

  _$DescribeIpamResourceDiscoveryAssociationsResult._(
      {this.ipamResourceDiscoveryAssociations, this.nextToken})
      : super._();

  @override
  DescribeIpamResourceDiscoveryAssociationsResult rebuild(
          void Function(DescribeIpamResourceDiscoveryAssociationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeIpamResourceDiscoveryAssociationsResultBuilder toBuilder() =>
      new DescribeIpamResourceDiscoveryAssociationsResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeIpamResourceDiscoveryAssociationsResult &&
        ipamResourceDiscoveryAssociations ==
            other.ipamResourceDiscoveryAssociations &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamResourceDiscoveryAssociations.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeIpamResourceDiscoveryAssociationsResultBuilder
    implements
        Builder<DescribeIpamResourceDiscoveryAssociationsResult,
            DescribeIpamResourceDiscoveryAssociationsResultBuilder> {
  _$DescribeIpamResourceDiscoveryAssociationsResult? _$v;

  _i2.ListBuilder<IpamResourceDiscoveryAssociation>?
      _ipamResourceDiscoveryAssociations;
  _i2.ListBuilder<IpamResourceDiscoveryAssociation>
      get ipamResourceDiscoveryAssociations =>
          _$this._ipamResourceDiscoveryAssociations ??=
              new _i2.ListBuilder<IpamResourceDiscoveryAssociation>();
  set ipamResourceDiscoveryAssociations(
          _i2.ListBuilder<IpamResourceDiscoveryAssociation>?
              ipamResourceDiscoveryAssociations) =>
      _$this._ipamResourceDiscoveryAssociations =
          ipamResourceDiscoveryAssociations;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeIpamResourceDiscoveryAssociationsResultBuilder();

  DescribeIpamResourceDiscoveryAssociationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamResourceDiscoveryAssociations =
          $v.ipamResourceDiscoveryAssociations?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeIpamResourceDiscoveryAssociationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeIpamResourceDiscoveryAssociationsResult;
  }

  @override
  void update(
      void Function(DescribeIpamResourceDiscoveryAssociationsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeIpamResourceDiscoveryAssociationsResult build() => _build();

  _$DescribeIpamResourceDiscoveryAssociationsResult _build() {
    _$DescribeIpamResourceDiscoveryAssociationsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeIpamResourceDiscoveryAssociationsResult._(
              ipamResourceDiscoveryAssociations:
                  _ipamResourceDiscoveryAssociations?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamResourceDiscoveryAssociations';
        _ipamResourceDiscoveryAssociations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeIpamResourceDiscoveryAssociationsResult',
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
