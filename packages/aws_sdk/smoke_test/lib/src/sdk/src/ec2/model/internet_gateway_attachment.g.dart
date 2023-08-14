// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internet_gateway_attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InternetGatewayAttachment extends InternetGatewayAttachment {
  @override
  final AttachmentStatus? state;
  @override
  final String? vpcId;

  factory _$InternetGatewayAttachment(
          [void Function(InternetGatewayAttachmentBuilder)? updates]) =>
      (new InternetGatewayAttachmentBuilder()..update(updates))._build();

  _$InternetGatewayAttachment._({this.state, this.vpcId}) : super._();

  @override
  InternetGatewayAttachment rebuild(
          void Function(InternetGatewayAttachmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InternetGatewayAttachmentBuilder toBuilder() =>
      new InternetGatewayAttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InternetGatewayAttachment &&
        state == other.state &&
        vpcId == other.vpcId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InternetGatewayAttachmentBuilder
    implements
        Builder<InternetGatewayAttachment, InternetGatewayAttachmentBuilder> {
  _$InternetGatewayAttachment? _$v;

  AttachmentStatus? _state;
  AttachmentStatus? get state => _$this._state;
  set state(AttachmentStatus? state) => _$this._state = state;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  InternetGatewayAttachmentBuilder();

  InternetGatewayAttachmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _vpcId = $v.vpcId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InternetGatewayAttachment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InternetGatewayAttachment;
  }

  @override
  void update(void Function(InternetGatewayAttachmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InternetGatewayAttachment build() => _build();

  _$InternetGatewayAttachment _build() {
    final _$result =
        _$v ?? new _$InternetGatewayAttachment._(state: state, vpcId: vpcId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
