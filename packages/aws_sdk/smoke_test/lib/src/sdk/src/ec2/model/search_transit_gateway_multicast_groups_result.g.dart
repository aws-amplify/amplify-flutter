// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_transit_gateway_multicast_groups_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchTransitGatewayMulticastGroupsResult
    extends SearchTransitGatewayMulticastGroupsResult {
  @override
  final _i2.BuiltList<TransitGatewayMulticastGroup>? multicastGroups;
  @override
  final String? nextToken;

  factory _$SearchTransitGatewayMulticastGroupsResult(
          [void Function(SearchTransitGatewayMulticastGroupsResultBuilder)?
              updates]) =>
      (new SearchTransitGatewayMulticastGroupsResultBuilder()..update(updates))
          ._build();

  _$SearchTransitGatewayMulticastGroupsResult._(
      {this.multicastGroups, this.nextToken})
      : super._();

  @override
  SearchTransitGatewayMulticastGroupsResult rebuild(
          void Function(SearchTransitGatewayMulticastGroupsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchTransitGatewayMulticastGroupsResultBuilder toBuilder() =>
      new SearchTransitGatewayMulticastGroupsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchTransitGatewayMulticastGroupsResult &&
        multicastGroups == other.multicastGroups &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, multicastGroups.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SearchTransitGatewayMulticastGroupsResultBuilder
    implements
        Builder<SearchTransitGatewayMulticastGroupsResult,
            SearchTransitGatewayMulticastGroupsResultBuilder> {
  _$SearchTransitGatewayMulticastGroupsResult? _$v;

  _i2.ListBuilder<TransitGatewayMulticastGroup>? _multicastGroups;
  _i2.ListBuilder<TransitGatewayMulticastGroup> get multicastGroups =>
      _$this._multicastGroups ??=
          new _i2.ListBuilder<TransitGatewayMulticastGroup>();
  set multicastGroups(
          _i2.ListBuilder<TransitGatewayMulticastGroup>? multicastGroups) =>
      _$this._multicastGroups = multicastGroups;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  SearchTransitGatewayMulticastGroupsResultBuilder();

  SearchTransitGatewayMulticastGroupsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _multicastGroups = $v.multicastGroups?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchTransitGatewayMulticastGroupsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchTransitGatewayMulticastGroupsResult;
  }

  @override
  void update(
      void Function(SearchTransitGatewayMulticastGroupsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchTransitGatewayMulticastGroupsResult build() => _build();

  _$SearchTransitGatewayMulticastGroupsResult _build() {
    _$SearchTransitGatewayMulticastGroupsResult _$result;
    try {
      _$result = _$v ??
          new _$SearchTransitGatewayMulticastGroupsResult._(
              multicastGroups: _multicastGroups?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'multicastGroups';
        _multicastGroups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SearchTransitGatewayMulticastGroupsResult',
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
