// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_transit_gateway_peering_attachments_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTransitGatewayPeeringAttachmentsResult
    extends DescribeTransitGatewayPeeringAttachmentsResult {
  @override
  final _i2.BuiltList<TransitGatewayPeeringAttachment>?
      transitGatewayPeeringAttachments;
  @override
  final String? nextToken;

  factory _$DescribeTransitGatewayPeeringAttachmentsResult(
          [void Function(DescribeTransitGatewayPeeringAttachmentsResultBuilder)?
              updates]) =>
      (new DescribeTransitGatewayPeeringAttachmentsResultBuilder()
            ..update(updates))
          ._build();

  _$DescribeTransitGatewayPeeringAttachmentsResult._(
      {this.transitGatewayPeeringAttachments, this.nextToken})
      : super._();

  @override
  DescribeTransitGatewayPeeringAttachmentsResult rebuild(
          void Function(DescribeTransitGatewayPeeringAttachmentsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTransitGatewayPeeringAttachmentsResultBuilder toBuilder() =>
      new DescribeTransitGatewayPeeringAttachmentsResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTransitGatewayPeeringAttachmentsResult &&
        transitGatewayPeeringAttachments ==
            other.transitGatewayPeeringAttachments &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayPeeringAttachments.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTransitGatewayPeeringAttachmentsResultBuilder
    implements
        Builder<DescribeTransitGatewayPeeringAttachmentsResult,
            DescribeTransitGatewayPeeringAttachmentsResultBuilder> {
  _$DescribeTransitGatewayPeeringAttachmentsResult? _$v;

  _i2.ListBuilder<TransitGatewayPeeringAttachment>?
      _transitGatewayPeeringAttachments;
  _i2.ListBuilder<TransitGatewayPeeringAttachment>
      get transitGatewayPeeringAttachments =>
          _$this._transitGatewayPeeringAttachments ??=
              new _i2.ListBuilder<TransitGatewayPeeringAttachment>();
  set transitGatewayPeeringAttachments(
          _i2.ListBuilder<TransitGatewayPeeringAttachment>?
              transitGatewayPeeringAttachments) =>
      _$this._transitGatewayPeeringAttachments =
          transitGatewayPeeringAttachments;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeTransitGatewayPeeringAttachmentsResultBuilder();

  DescribeTransitGatewayPeeringAttachmentsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPeeringAttachments =
          $v.transitGatewayPeeringAttachments?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTransitGatewayPeeringAttachmentsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTransitGatewayPeeringAttachmentsResult;
  }

  @override
  void update(
      void Function(DescribeTransitGatewayPeeringAttachmentsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTransitGatewayPeeringAttachmentsResult build() => _build();

  _$DescribeTransitGatewayPeeringAttachmentsResult _build() {
    _$DescribeTransitGatewayPeeringAttachmentsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeTransitGatewayPeeringAttachmentsResult._(
              transitGatewayPeeringAttachments:
                  _transitGatewayPeeringAttachments?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayPeeringAttachments';
        _transitGatewayPeeringAttachments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTransitGatewayPeeringAttachmentsResult',
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
