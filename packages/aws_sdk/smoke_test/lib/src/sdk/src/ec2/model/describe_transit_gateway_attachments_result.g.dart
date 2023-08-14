// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_transit_gateway_attachments_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTransitGatewayAttachmentsResult
    extends DescribeTransitGatewayAttachmentsResult {
  @override
  final _i2.BuiltList<TransitGatewayAttachment>? transitGatewayAttachments;
  @override
  final String? nextToken;

  factory _$DescribeTransitGatewayAttachmentsResult(
          [void Function(DescribeTransitGatewayAttachmentsResultBuilder)?
              updates]) =>
      (new DescribeTransitGatewayAttachmentsResultBuilder()..update(updates))
          ._build();

  _$DescribeTransitGatewayAttachmentsResult._(
      {this.transitGatewayAttachments, this.nextToken})
      : super._();

  @override
  DescribeTransitGatewayAttachmentsResult rebuild(
          void Function(DescribeTransitGatewayAttachmentsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTransitGatewayAttachmentsResultBuilder toBuilder() =>
      new DescribeTransitGatewayAttachmentsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTransitGatewayAttachmentsResult &&
        transitGatewayAttachments == other.transitGatewayAttachments &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayAttachments.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTransitGatewayAttachmentsResultBuilder
    implements
        Builder<DescribeTransitGatewayAttachmentsResult,
            DescribeTransitGatewayAttachmentsResultBuilder> {
  _$DescribeTransitGatewayAttachmentsResult? _$v;

  _i2.ListBuilder<TransitGatewayAttachment>? _transitGatewayAttachments;
  _i2.ListBuilder<TransitGatewayAttachment> get transitGatewayAttachments =>
      _$this._transitGatewayAttachments ??=
          new _i2.ListBuilder<TransitGatewayAttachment>();
  set transitGatewayAttachments(
          _i2.ListBuilder<TransitGatewayAttachment>?
              transitGatewayAttachments) =>
      _$this._transitGatewayAttachments = transitGatewayAttachments;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeTransitGatewayAttachmentsResultBuilder();

  DescribeTransitGatewayAttachmentsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachments = $v.transitGatewayAttachments?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTransitGatewayAttachmentsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTransitGatewayAttachmentsResult;
  }

  @override
  void update(
      void Function(DescribeTransitGatewayAttachmentsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTransitGatewayAttachmentsResult build() => _build();

  _$DescribeTransitGatewayAttachmentsResult _build() {
    _$DescribeTransitGatewayAttachmentsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeTransitGatewayAttachmentsResult._(
              transitGatewayAttachments: _transitGatewayAttachments?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayAttachments';
        _transitGatewayAttachments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTransitGatewayAttachmentsResult',
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
