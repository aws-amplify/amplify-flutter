// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume_status_attachment_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VolumeStatusAttachmentStatus extends VolumeStatusAttachmentStatus {
  @override
  final String? ioPerformance;
  @override
  final String? instanceId;

  factory _$VolumeStatusAttachmentStatus(
          [void Function(VolumeStatusAttachmentStatusBuilder)? updates]) =>
      (new VolumeStatusAttachmentStatusBuilder()..update(updates))._build();

  _$VolumeStatusAttachmentStatus._({this.ioPerformance, this.instanceId})
      : super._();

  @override
  VolumeStatusAttachmentStatus rebuild(
          void Function(VolumeStatusAttachmentStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VolumeStatusAttachmentStatusBuilder toBuilder() =>
      new VolumeStatusAttachmentStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VolumeStatusAttachmentStatus &&
        ioPerformance == other.ioPerformance &&
        instanceId == other.instanceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ioPerformance.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VolumeStatusAttachmentStatusBuilder
    implements
        Builder<VolumeStatusAttachmentStatus,
            VolumeStatusAttachmentStatusBuilder> {
  _$VolumeStatusAttachmentStatus? _$v;

  String? _ioPerformance;
  String? get ioPerformance => _$this._ioPerformance;
  set ioPerformance(String? ioPerformance) =>
      _$this._ioPerformance = ioPerformance;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  VolumeStatusAttachmentStatusBuilder();

  VolumeStatusAttachmentStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ioPerformance = $v.ioPerformance;
      _instanceId = $v.instanceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VolumeStatusAttachmentStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VolumeStatusAttachmentStatus;
  }

  @override
  void update(void Function(VolumeStatusAttachmentStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VolumeStatusAttachmentStatus build() => _build();

  _$VolumeStatusAttachmentStatus _build() {
    final _$result = _$v ??
        new _$VolumeStatusAttachmentStatus._(
            ioPerformance: ioPerformance, instanceId: instanceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
