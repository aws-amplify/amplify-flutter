// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attach_vpn_gateway_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttachVpnGatewayResult extends AttachVpnGatewayResult {
  @override
  final VpcAttachment? vpcAttachment;

  factory _$AttachVpnGatewayResult(
          [void Function(AttachVpnGatewayResultBuilder)? updates]) =>
      (new AttachVpnGatewayResultBuilder()..update(updates))._build();

  _$AttachVpnGatewayResult._({this.vpcAttachment}) : super._();

  @override
  AttachVpnGatewayResult rebuild(
          void Function(AttachVpnGatewayResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachVpnGatewayResultBuilder toBuilder() =>
      new AttachVpnGatewayResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachVpnGatewayResult &&
        vpcAttachment == other.vpcAttachment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpcAttachment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AttachVpnGatewayResultBuilder
    implements Builder<AttachVpnGatewayResult, AttachVpnGatewayResultBuilder> {
  _$AttachVpnGatewayResult? _$v;

  VpcAttachmentBuilder? _vpcAttachment;
  VpcAttachmentBuilder get vpcAttachment =>
      _$this._vpcAttachment ??= new VpcAttachmentBuilder();
  set vpcAttachment(VpcAttachmentBuilder? vpcAttachment) =>
      _$this._vpcAttachment = vpcAttachment;

  AttachVpnGatewayResultBuilder();

  AttachVpnGatewayResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpcAttachment = $v.vpcAttachment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttachVpnGatewayResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachVpnGatewayResult;
  }

  @override
  void update(void Function(AttachVpnGatewayResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttachVpnGatewayResult build() => _build();

  _$AttachVpnGatewayResult _build() {
    _$AttachVpnGatewayResult _$result;
    try {
      _$result = _$v ??
          new _$AttachVpnGatewayResult._(
              vpcAttachment: _vpcAttachment?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpcAttachment';
        _vpcAttachment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AttachVpnGatewayResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
