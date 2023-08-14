// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_vpc_endpoint_service_permissions_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcEndpointServicePermissionsResult
    extends DescribeVpcEndpointServicePermissionsResult {
  @override
  final _i2.BuiltList<AllowedPrincipal>? allowedPrincipals;
  @override
  final String? nextToken;

  factory _$DescribeVpcEndpointServicePermissionsResult(
          [void Function(DescribeVpcEndpointServicePermissionsResultBuilder)?
              updates]) =>
      (new DescribeVpcEndpointServicePermissionsResultBuilder()
            ..update(updates))
          ._build();

  _$DescribeVpcEndpointServicePermissionsResult._(
      {this.allowedPrincipals, this.nextToken})
      : super._();

  @override
  DescribeVpcEndpointServicePermissionsResult rebuild(
          void Function(DescribeVpcEndpointServicePermissionsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcEndpointServicePermissionsResultBuilder toBuilder() =>
      new DescribeVpcEndpointServicePermissionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcEndpointServicePermissionsResult &&
        allowedPrincipals == other.allowedPrincipals &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allowedPrincipals.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcEndpointServicePermissionsResultBuilder
    implements
        Builder<DescribeVpcEndpointServicePermissionsResult,
            DescribeVpcEndpointServicePermissionsResultBuilder> {
  _$DescribeVpcEndpointServicePermissionsResult? _$v;

  _i2.ListBuilder<AllowedPrincipal>? _allowedPrincipals;
  _i2.ListBuilder<AllowedPrincipal> get allowedPrincipals =>
      _$this._allowedPrincipals ??= new _i2.ListBuilder<AllowedPrincipal>();
  set allowedPrincipals(_i2.ListBuilder<AllowedPrincipal>? allowedPrincipals) =>
      _$this._allowedPrincipals = allowedPrincipals;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeVpcEndpointServicePermissionsResultBuilder();

  DescribeVpcEndpointServicePermissionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowedPrincipals = $v.allowedPrincipals?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcEndpointServicePermissionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcEndpointServicePermissionsResult;
  }

  @override
  void update(
      void Function(DescribeVpcEndpointServicePermissionsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcEndpointServicePermissionsResult build() => _build();

  _$DescribeVpcEndpointServicePermissionsResult _build() {
    _$DescribeVpcEndpointServicePermissionsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpcEndpointServicePermissionsResult._(
              allowedPrincipals: _allowedPrincipals?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allowedPrincipals';
        _allowedPrincipals?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcEndpointServicePermissionsResult',
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
