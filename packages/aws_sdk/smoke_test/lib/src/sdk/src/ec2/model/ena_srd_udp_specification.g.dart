// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ena_srd_udp_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnaSrdUdpSpecification extends EnaSrdUdpSpecification {
  @override
  final bool enaSrdUdpEnabled;

  factory _$EnaSrdUdpSpecification(
          [void Function(EnaSrdUdpSpecificationBuilder)? updates]) =>
      (new EnaSrdUdpSpecificationBuilder()..update(updates))._build();

  _$EnaSrdUdpSpecification._({required this.enaSrdUdpEnabled}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enaSrdUdpEnabled, r'EnaSrdUdpSpecification', 'enaSrdUdpEnabled');
  }

  @override
  EnaSrdUdpSpecification rebuild(
          void Function(EnaSrdUdpSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnaSrdUdpSpecificationBuilder toBuilder() =>
      new EnaSrdUdpSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnaSrdUdpSpecification &&
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

class EnaSrdUdpSpecificationBuilder
    implements Builder<EnaSrdUdpSpecification, EnaSrdUdpSpecificationBuilder> {
  _$EnaSrdUdpSpecification? _$v;

  bool? _enaSrdUdpEnabled;
  bool? get enaSrdUdpEnabled => _$this._enaSrdUdpEnabled;
  set enaSrdUdpEnabled(bool? enaSrdUdpEnabled) =>
      _$this._enaSrdUdpEnabled = enaSrdUdpEnabled;

  EnaSrdUdpSpecificationBuilder() {
    EnaSrdUdpSpecification._init(this);
  }

  EnaSrdUdpSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enaSrdUdpEnabled = $v.enaSrdUdpEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnaSrdUdpSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnaSrdUdpSpecification;
  }

  @override
  void update(void Function(EnaSrdUdpSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnaSrdUdpSpecification build() => _build();

  _$EnaSrdUdpSpecification _build() {
    final _$result = _$v ??
        new _$EnaSrdUdpSpecification._(
            enaSrdUdpEnabled: BuiltValueNullFieldError.checkNotNull(
                enaSrdUdpEnabled,
                r'EnaSrdUdpSpecification',
                'enaSrdUdpEnabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
