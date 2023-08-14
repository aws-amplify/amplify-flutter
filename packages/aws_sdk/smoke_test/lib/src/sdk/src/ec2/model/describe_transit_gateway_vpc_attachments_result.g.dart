// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_transit_gateway_vpc_attachments_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTransitGatewayVpcAttachmentsResult
    extends DescribeTransitGatewayVpcAttachmentsResult {
  @override
  final _i2.BuiltList<TransitGatewayVpcAttachment>?
      transitGatewayVpcAttachments;
  @override
  final String? nextToken;

  factory _$DescribeTransitGatewayVpcAttachmentsResult(
          [void Function(DescribeTransitGatewayVpcAttachmentsResultBuilder)?
              updates]) =>
      (new DescribeTransitGatewayVpcAttachmentsResultBuilder()..update(updates))
          ._build();

  _$DescribeTransitGatewayVpcAttachmentsResult._(
      {this.transitGatewayVpcAttachments, this.nextToken})
      : super._();

  @override
  DescribeTransitGatewayVpcAttachmentsResult rebuild(
          void Function(DescribeTransitGatewayVpcAttachmentsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTransitGatewayVpcAttachmentsResultBuilder toBuilder() =>
      new DescribeTransitGatewayVpcAttachmentsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTransitGatewayVpcAttachmentsResult &&
        transitGatewayVpcAttachments == other.transitGatewayVpcAttachments &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayVpcAttachments.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTransitGatewayVpcAttachmentsResultBuilder
    implements
        Builder<DescribeTransitGatewayVpcAttachmentsResult,
            DescribeTransitGatewayVpcAttachmentsResultBuilder> {
  _$DescribeTransitGatewayVpcAttachmentsResult? _$v;

  _i2.ListBuilder<TransitGatewayVpcAttachment>? _transitGatewayVpcAttachments;
  _i2.ListBuilder<TransitGatewayVpcAttachment>
      get transitGatewayVpcAttachments =>
          _$this._transitGatewayVpcAttachments ??=
              new _i2.ListBuilder<TransitGatewayVpcAttachment>();
  set transitGatewayVpcAttachments(
          _i2.ListBuilder<TransitGatewayVpcAttachment>?
              transitGatewayVpcAttachments) =>
      _$this._transitGatewayVpcAttachments = transitGatewayVpcAttachments;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeTransitGatewayVpcAttachmentsResultBuilder();

  DescribeTransitGatewayVpcAttachmentsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayVpcAttachments =
          $v.transitGatewayVpcAttachments?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTransitGatewayVpcAttachmentsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTransitGatewayVpcAttachmentsResult;
  }

  @override
  void update(
      void Function(DescribeTransitGatewayVpcAttachmentsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTransitGatewayVpcAttachmentsResult build() => _build();

  _$DescribeTransitGatewayVpcAttachmentsResult _build() {
    _$DescribeTransitGatewayVpcAttachmentsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeTransitGatewayVpcAttachmentsResult._(
              transitGatewayVpcAttachments:
                  _transitGatewayVpcAttachments?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayVpcAttachments';
        _transitGatewayVpcAttachments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTransitGatewayVpcAttachmentsResult',
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
