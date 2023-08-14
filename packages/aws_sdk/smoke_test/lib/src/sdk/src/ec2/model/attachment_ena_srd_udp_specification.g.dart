// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment_ena_srd_udp_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttachmentEnaSrdUdpSpecification
    extends AttachmentEnaSrdUdpSpecification {
  @override
  final bool enaSrdUdpEnabled;

  factory _$AttachmentEnaSrdUdpSpecification(
          [void Function(AttachmentEnaSrdUdpSpecificationBuilder)? updates]) =>
      (new AttachmentEnaSrdUdpSpecificationBuilder()..update(updates))._build();

  _$AttachmentEnaSrdUdpSpecification._({required this.enaSrdUdpEnabled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(enaSrdUdpEnabled,
        r'AttachmentEnaSrdUdpSpecification', 'enaSrdUdpEnabled');
  }

  @override
  AttachmentEnaSrdUdpSpecification rebuild(
          void Function(AttachmentEnaSrdUdpSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachmentEnaSrdUdpSpecificationBuilder toBuilder() =>
      new AttachmentEnaSrdUdpSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachmentEnaSrdUdpSpecification &&
        enaSrdUdpEnabled == other.enaSrdUdpEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enaSrdUdpEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AttachmentEnaSrdUdpSpecificationBuilder
    implements
        Builder<AttachmentEnaSrdUdpSpecification,
            AttachmentEnaSrdUdpSpecificationBuilder> {
  _$AttachmentEnaSrdUdpSpecification? _$v;

  bool? _enaSrdUdpEnabled;
  bool? get enaSrdUdpEnabled => _$this._enaSrdUdpEnabled;
  set enaSrdUdpEnabled(bool? enaSrdUdpEnabled) =>
      _$this._enaSrdUdpEnabled = enaSrdUdpEnabled;

  AttachmentEnaSrdUdpSpecificationBuilder() {
    AttachmentEnaSrdUdpSpecification._init(this);
  }

  AttachmentEnaSrdUdpSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enaSrdUdpEnabled = $v.enaSrdUdpEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttachmentEnaSrdUdpSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachmentEnaSrdUdpSpecification;
  }

  @override
  void update(void Function(AttachmentEnaSrdUdpSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttachmentEnaSrdUdpSpecification build() => _build();

  _$AttachmentEnaSrdUdpSpecification _build() {
    final _$result = _$v ??
        new _$AttachmentEnaSrdUdpSpecification._(
            enaSrdUdpEnabled: BuiltValueNullFieldError.checkNotNull(
                enaSrdUdpEnabled,
                r'AttachmentEnaSrdUdpSpecification',
                'enaSrdUdpEnabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
