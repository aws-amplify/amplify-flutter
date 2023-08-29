// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_local_gateway_virtual_interfaces_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLocalGatewayVirtualInterfacesResult
    extends DescribeLocalGatewayVirtualInterfacesResult {
  @override
  final _i2.BuiltList<LocalGatewayVirtualInterface>?
      localGatewayVirtualInterfaces;
  @override
  final String? nextToken;

  factory _$DescribeLocalGatewayVirtualInterfacesResult(
          [void Function(DescribeLocalGatewayVirtualInterfacesResultBuilder)?
              updates]) =>
      (new DescribeLocalGatewayVirtualInterfacesResultBuilder()
            ..update(updates))
          ._build();

  _$DescribeLocalGatewayVirtualInterfacesResult._(
      {this.localGatewayVirtualInterfaces, this.nextToken})
      : super._();

  @override
  DescribeLocalGatewayVirtualInterfacesResult rebuild(
          void Function(DescribeLocalGatewayVirtualInterfacesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLocalGatewayVirtualInterfacesResultBuilder toBuilder() =>
      new DescribeLocalGatewayVirtualInterfacesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeLocalGatewayVirtualInterfacesResult &&
        localGatewayVirtualInterfaces == other.localGatewayVirtualInterfaces &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayVirtualInterfaces.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLocalGatewayVirtualInterfacesResultBuilder
    implements
        Builder<DescribeLocalGatewayVirtualInterfacesResult,
            DescribeLocalGatewayVirtualInterfacesResultBuilder> {
  _$DescribeLocalGatewayVirtualInterfacesResult? _$v;

  _i2.ListBuilder<LocalGatewayVirtualInterface>? _localGatewayVirtualInterfaces;
  _i2.ListBuilder<LocalGatewayVirtualInterface>
      get localGatewayVirtualInterfaces =>
          _$this._localGatewayVirtualInterfaces ??=
              new _i2.ListBuilder<LocalGatewayVirtualInterface>();
  set localGatewayVirtualInterfaces(
          _i2.ListBuilder<LocalGatewayVirtualInterface>?
              localGatewayVirtualInterfaces) =>
      _$this._localGatewayVirtualInterfaces = localGatewayVirtualInterfaces;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeLocalGatewayVirtualInterfacesResultBuilder();

  DescribeLocalGatewayVirtualInterfacesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayVirtualInterfaces =
          $v.localGatewayVirtualInterfaces?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeLocalGatewayVirtualInterfacesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeLocalGatewayVirtualInterfacesResult;
  }

  @override
  void update(
      void Function(DescribeLocalGatewayVirtualInterfacesResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLocalGatewayVirtualInterfacesResult build() => _build();

  _$DescribeLocalGatewayVirtualInterfacesResult _build() {
    _$DescribeLocalGatewayVirtualInterfacesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeLocalGatewayVirtualInterfacesResult._(
              localGatewayVirtualInterfaces:
                  _localGatewayVirtualInterfaces?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'localGatewayVirtualInterfaces';
        _localGatewayVirtualInterfaces?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeLocalGatewayVirtualInterfacesResult',
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
