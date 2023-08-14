// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpc_attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpcAttachment extends VpcAttachment {
  @override
  final AttachmentStatus? state;
  @override
  final String? vpcId;

  factory _$VpcAttachment([void Function(VpcAttachmentBuilder)? updates]) =>
      (new VpcAttachmentBuilder()..update(updates))._build();

  _$VpcAttachment._({this.state, this.vpcId}) : super._();

  @override
  VpcAttachment rebuild(void Function(VpcAttachmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpcAttachmentBuilder toBuilder() => new VpcAttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpcAttachment &&
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

class VpcAttachmentBuilder
    implements Builder<VpcAttachment, VpcAttachmentBuilder> {
  _$VpcAttachment? _$v;

  AttachmentStatus? _state;
  AttachmentStatus? get state => _$this._state;
  set state(AttachmentStatus? state) => _$this._state = state;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  VpcAttachmentBuilder();

  VpcAttachmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _vpcId = $v.vpcId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpcAttachment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpcAttachment;
  }

  @override
  void update(void Function(VpcAttachmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpcAttachment build() => _build();

  _$VpcAttachment _build() {
    final _$result = _$v ?? new _$VpcAttachment._(state: state, vpcId: vpcId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
