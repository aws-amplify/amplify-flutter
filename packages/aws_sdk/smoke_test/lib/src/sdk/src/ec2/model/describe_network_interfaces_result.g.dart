// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_network_interfaces_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeNetworkInterfacesResult
    extends DescribeNetworkInterfacesResult {
  @override
  final _i2.BuiltList<NetworkInterface>? networkInterfaces;
  @override
  final String? nextToken;

  factory _$DescribeNetworkInterfacesResult(
          [void Function(DescribeNetworkInterfacesResultBuilder)? updates]) =>
      (new DescribeNetworkInterfacesResultBuilder()..update(updates))._build();

  _$DescribeNetworkInterfacesResult._({this.networkInterfaces, this.nextToken})
      : super._();

  @override
  DescribeNetworkInterfacesResult rebuild(
          void Function(DescribeNetworkInterfacesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeNetworkInterfacesResultBuilder toBuilder() =>
      new DescribeNetworkInterfacesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeNetworkInterfacesResult &&
        networkInterfaces == other.networkInterfaces &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInterfaces.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeNetworkInterfacesResultBuilder
    implements
        Builder<DescribeNetworkInterfacesResult,
            DescribeNetworkInterfacesResultBuilder> {
  _$DescribeNetworkInterfacesResult? _$v;

  _i2.ListBuilder<NetworkInterface>? _networkInterfaces;
  _i2.ListBuilder<NetworkInterface> get networkInterfaces =>
      _$this._networkInterfaces ??= new _i2.ListBuilder<NetworkInterface>();
  set networkInterfaces(_i2.ListBuilder<NetworkInterface>? networkInterfaces) =>
      _$this._networkInterfaces = networkInterfaces;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeNetworkInterfacesResultBuilder();

  DescribeNetworkInterfacesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInterfaces = $v.networkInterfaces?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeNetworkInterfacesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeNetworkInterfacesResult;
  }

  @override
  void update(void Function(DescribeNetworkInterfacesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeNetworkInterfacesResult build() => _build();

  _$DescribeNetworkInterfacesResult _build() {
    _$DescribeNetworkInterfacesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeNetworkInterfacesResult._(
              networkInterfaces: _networkInterfaces?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInterfaces';
        _networkInterfaces?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeNetworkInterfacesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
