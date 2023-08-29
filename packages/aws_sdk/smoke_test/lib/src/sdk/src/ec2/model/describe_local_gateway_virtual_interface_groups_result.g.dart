// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_local_gateway_virtual_interface_groups_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLocalGatewayVirtualInterfaceGroupsResult
    extends DescribeLocalGatewayVirtualInterfaceGroupsResult {
  @override
  final _i2.BuiltList<LocalGatewayVirtualInterfaceGroup>?
      localGatewayVirtualInterfaceGroups;
  @override
  final String? nextToken;

  factory _$DescribeLocalGatewayVirtualInterfaceGroupsResult(
          [void Function(
                  DescribeLocalGatewayVirtualInterfaceGroupsResultBuilder)?
              updates]) =>
      (new DescribeLocalGatewayVirtualInterfaceGroupsResultBuilder()
            ..update(updates))
          ._build();

  _$DescribeLocalGatewayVirtualInterfaceGroupsResult._(
      {this.localGatewayVirtualInterfaceGroups, this.nextToken})
      : super._();

  @override
  DescribeLocalGatewayVirtualInterfaceGroupsResult rebuild(
          void Function(DescribeLocalGatewayVirtualInterfaceGroupsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLocalGatewayVirtualInterfaceGroupsResultBuilder toBuilder() =>
      new DescribeLocalGatewayVirtualInterfaceGroupsResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeLocalGatewayVirtualInterfaceGroupsResult &&
        localGatewayVirtualInterfaceGroups ==
            other.localGatewayVirtualInterfaceGroups &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayVirtualInterfaceGroups.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLocalGatewayVirtualInterfaceGroupsResultBuilder
    implements
        Builder<DescribeLocalGatewayVirtualInterfaceGroupsResult,
            DescribeLocalGatewayVirtualInterfaceGroupsResultBuilder> {
  _$DescribeLocalGatewayVirtualInterfaceGroupsResult? _$v;

  _i2.ListBuilder<LocalGatewayVirtualInterfaceGroup>?
      _localGatewayVirtualInterfaceGroups;
  _i2.ListBuilder<LocalGatewayVirtualInterfaceGroup>
      get localGatewayVirtualInterfaceGroups =>
          _$this._localGatewayVirtualInterfaceGroups ??=
              new _i2.ListBuilder<LocalGatewayVirtualInterfaceGroup>();
  set localGatewayVirtualInterfaceGroups(
          _i2.ListBuilder<LocalGatewayVirtualInterfaceGroup>?
              localGatewayVirtualInterfaceGroups) =>
      _$this._localGatewayVirtualInterfaceGroups =
          localGatewayVirtualInterfaceGroups;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeLocalGatewayVirtualInterfaceGroupsResultBuilder();

  DescribeLocalGatewayVirtualInterfaceGroupsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayVirtualInterfaceGroups =
          $v.localGatewayVirtualInterfaceGroups?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeLocalGatewayVirtualInterfaceGroupsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeLocalGatewayVirtualInterfaceGroupsResult;
  }

  @override
  void update(
      void Function(DescribeLocalGatewayVirtualInterfaceGroupsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLocalGatewayVirtualInterfaceGroupsResult build() => _build();

  _$DescribeLocalGatewayVirtualInterfaceGroupsResult _build() {
    _$DescribeLocalGatewayVirtualInterfaceGroupsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeLocalGatewayVirtualInterfaceGroupsResult._(
              localGatewayVirtualInterfaceGroups:
                  _localGatewayVirtualInterfaceGroups?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'localGatewayVirtualInterfaceGroups';
        _localGatewayVirtualInterfaceGroups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeLocalGatewayVirtualInterfaceGroupsResult',
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
