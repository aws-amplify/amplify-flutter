// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment_ena_srd_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttachmentEnaSrdSpecification extends AttachmentEnaSrdSpecification {
  @override
  final bool enaSrdEnabled;
  @override
  final AttachmentEnaSrdUdpSpecification? enaSrdUdpSpecification;

  factory _$AttachmentEnaSrdSpecification(
          [void Function(AttachmentEnaSrdSpecificationBuilder)? updates]) =>
      (new AttachmentEnaSrdSpecificationBuilder()..update(updates))._build();

  _$AttachmentEnaSrdSpecification._(
      {required this.enaSrdEnabled, this.enaSrdUdpSpecification})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enaSrdEnabled, r'AttachmentEnaSrdSpecification', 'enaSrdEnabled');
  }

  @override
  AttachmentEnaSrdSpecification rebuild(
          void Function(AttachmentEnaSrdSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachmentEnaSrdSpecificationBuilder toBuilder() =>
      new AttachmentEnaSrdSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachmentEnaSrdSpecification &&
        enaSrdEnabled == other.enaSrdEnabled &&
        enaSrdUdpSpecification == other.enaSrdUdpSpecification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enaSrdEnabled.hashCode);
    _$hash = $jc(_$hash, enaSrdUdpSpecification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AttachmentEnaSrdSpecificationBuilder
    implements
        Builder<AttachmentEnaSrdSpecification,
            AttachmentEnaSrdSpecificationBuilder> {
  _$AttachmentEnaSrdSpecification? _$v;

  bool? _enaSrdEnabled;
  bool? get enaSrdEnabled => _$this._enaSrdEnabled;
  set enaSrdEnabled(bool? enaSrdEnabled) =>
      _$this._enaSrdEnabled = enaSrdEnabled;

  AttachmentEnaSrdUdpSpecificationBuilder? _enaSrdUdpSpecification;
  AttachmentEnaSrdUdpSpecificationBuilder get enaSrdUdpSpecification =>
      _$this._enaSrdUdpSpecification ??=
          new AttachmentEnaSrdUdpSpecificationBuilder();
  set enaSrdUdpSpecification(
          AttachmentEnaSrdUdpSpecificationBuilder? enaSrdUdpSpecification) =>
      _$this._enaSrdUdpSpecification = enaSrdUdpSpecification;

  AttachmentEnaSrdSpecificationBuilder() {
    AttachmentEnaSrdSpecification._init(this);
  }

  AttachmentEnaSrdSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enaSrdEnabled = $v.enaSrdEnabled;
      _enaSrdUdpSpecification = $v.enaSrdUdpSpecification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttachmentEnaSrdSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachmentEnaSrdSpecification;
  }

  @override
  void update(void Function(AttachmentEnaSrdSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttachmentEnaSrdSpecification build() => _build();

  _$AttachmentEnaSrdSpecification _build() {
    _$AttachmentEnaSrdSpecification _$result;
    try {
      _$result = _$v ??
          new _$AttachmentEnaSrdSpecification._(
              enaSrdEnabled: BuiltValueNullFieldError.checkNotNull(
                  enaSrdEnabled,
                  r'AttachmentEnaSrdSpecification',
                  'enaSrdEnabled'),
              enaSrdUdpSpecification: _enaSrdUdpSpecification?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enaSrdUdpSpecification';
        _enaSrdUdpSpecification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AttachmentEnaSrdSpecification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
