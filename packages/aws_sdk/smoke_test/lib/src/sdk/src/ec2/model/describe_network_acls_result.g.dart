// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_network_acls_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeNetworkAclsResult extends DescribeNetworkAclsResult {
  @override
  final _i2.BuiltList<NetworkAcl>? networkAcls;
  @override
  final String? nextToken;

  factory _$DescribeNetworkAclsResult(
          [void Function(DescribeNetworkAclsResultBuilder)? updates]) =>
      (new DescribeNetworkAclsResultBuilder()..update(updates))._build();

  _$DescribeNetworkAclsResult._({this.networkAcls, this.nextToken}) : super._();

  @override
  DescribeNetworkAclsResult rebuild(
          void Function(DescribeNetworkAclsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeNetworkAclsResultBuilder toBuilder() =>
      new DescribeNetworkAclsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeNetworkAclsResult &&
        networkAcls == other.networkAcls &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkAcls.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeNetworkAclsResultBuilder
    implements
        Builder<DescribeNetworkAclsResult, DescribeNetworkAclsResultBuilder> {
  _$DescribeNetworkAclsResult? _$v;

  _i2.ListBuilder<NetworkAcl>? _networkAcls;
  _i2.ListBuilder<NetworkAcl> get networkAcls =>
      _$this._networkAcls ??= new _i2.ListBuilder<NetworkAcl>();
  set networkAcls(_i2.ListBuilder<NetworkAcl>? networkAcls) =>
      _$this._networkAcls = networkAcls;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeNetworkAclsResultBuilder();

  DescribeNetworkAclsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkAcls = $v.networkAcls?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeNetworkAclsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeNetworkAclsResult;
  }

  @override
  void update(void Function(DescribeNetworkAclsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeNetworkAclsResult build() => _build();

  _$DescribeNetworkAclsResult _build() {
    _$DescribeNetworkAclsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeNetworkAclsResult._(
              networkAcls: _networkAcls?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkAcls';
        _networkAcls?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeNetworkAclsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
