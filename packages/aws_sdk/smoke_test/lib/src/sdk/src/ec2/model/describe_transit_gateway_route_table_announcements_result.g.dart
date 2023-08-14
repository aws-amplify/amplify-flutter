// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_transit_gateway_route_table_announcements_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTransitGatewayRouteTableAnnouncementsResult
    extends DescribeTransitGatewayRouteTableAnnouncementsResult {
  @override
  final _i2.BuiltList<TransitGatewayRouteTableAnnouncement>?
      transitGatewayRouteTableAnnouncements;
  @override
  final String? nextToken;

  factory _$DescribeTransitGatewayRouteTableAnnouncementsResult(
          [void Function(
                  DescribeTransitGatewayRouteTableAnnouncementsResultBuilder)?
              updates]) =>
      (new DescribeTransitGatewayRouteTableAnnouncementsResultBuilder()
            ..update(updates))
          ._build();

  _$DescribeTransitGatewayRouteTableAnnouncementsResult._(
      {this.transitGatewayRouteTableAnnouncements, this.nextToken})
      : super._();

  @override
  DescribeTransitGatewayRouteTableAnnouncementsResult rebuild(
          void Function(
                  DescribeTransitGatewayRouteTableAnnouncementsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTransitGatewayRouteTableAnnouncementsResultBuilder toBuilder() =>
      new DescribeTransitGatewayRouteTableAnnouncementsResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTransitGatewayRouteTableAnnouncementsResult &&
        transitGatewayRouteTableAnnouncements ==
            other.transitGatewayRouteTableAnnouncements &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableAnnouncements.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTransitGatewayRouteTableAnnouncementsResultBuilder
    implements
        Builder<DescribeTransitGatewayRouteTableAnnouncementsResult,
            DescribeTransitGatewayRouteTableAnnouncementsResultBuilder> {
  _$DescribeTransitGatewayRouteTableAnnouncementsResult? _$v;

  _i2.ListBuilder<TransitGatewayRouteTableAnnouncement>?
      _transitGatewayRouteTableAnnouncements;
  _i2.ListBuilder<TransitGatewayRouteTableAnnouncement>
      get transitGatewayRouteTableAnnouncements =>
          _$this._transitGatewayRouteTableAnnouncements ??=
              new _i2.ListBuilder<TransitGatewayRouteTableAnnouncement>();
  set transitGatewayRouteTableAnnouncements(
          _i2.ListBuilder<TransitGatewayRouteTableAnnouncement>?
              transitGatewayRouteTableAnnouncements) =>
      _$this._transitGatewayRouteTableAnnouncements =
          transitGatewayRouteTableAnnouncements;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeTransitGatewayRouteTableAnnouncementsResultBuilder();

  DescribeTransitGatewayRouteTableAnnouncementsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableAnnouncements =
          $v.transitGatewayRouteTableAnnouncements?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTransitGatewayRouteTableAnnouncementsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTransitGatewayRouteTableAnnouncementsResult;
  }

  @override
  void update(
      void Function(DescribeTransitGatewayRouteTableAnnouncementsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTransitGatewayRouteTableAnnouncementsResult build() => _build();

  _$DescribeTransitGatewayRouteTableAnnouncementsResult _build() {
    _$DescribeTransitGatewayRouteTableAnnouncementsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeTransitGatewayRouteTableAnnouncementsResult._(
              transitGatewayRouteTableAnnouncements:
                  _transitGatewayRouteTableAnnouncements?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayRouteTableAnnouncements';
        _transitGatewayRouteTableAnnouncements?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTransitGatewayRouteTableAnnouncementsResult',
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
