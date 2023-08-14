// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ena_srd_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnaSrdSpecification extends EnaSrdSpecification {
  @override
  final bool enaSrdEnabled;
  @override
  final EnaSrdUdpSpecification? enaSrdUdpSpecification;

  factory _$EnaSrdSpecification(
          [void Function(EnaSrdSpecificationBuilder)? updates]) =>
      (new EnaSrdSpecificationBuilder()..update(updates))._build();

  _$EnaSrdSpecification._(
      {required this.enaSrdEnabled, this.enaSrdUdpSpecification})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enaSrdEnabled, r'EnaSrdSpecification', 'enaSrdEnabled');
  }

  @override
  EnaSrdSpecification rebuild(
          void Function(EnaSrdSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnaSrdSpecificationBuilder toBuilder() =>
      new EnaSrdSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnaSrdSpecification &&
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

class EnaSrdSpecificationBuilder
    implements Builder<EnaSrdSpecification, EnaSrdSpecificationBuilder> {
  _$EnaSrdSpecification? _$v;

  bool? _enaSrdEnabled;
  bool? get enaSrdEnabled => _$this._enaSrdEnabled;
  set enaSrdEnabled(bool? enaSrdEnabled) =>
      _$this._enaSrdEnabled = enaSrdEnabled;

  EnaSrdUdpSpecificationBuilder? _enaSrdUdpSpecification;
  EnaSrdUdpSpecificationBuilder get enaSrdUdpSpecification =>
      _$this._enaSrdUdpSpecification ??= new EnaSrdUdpSpecificationBuilder();
  set enaSrdUdpSpecification(
          EnaSrdUdpSpecificationBuilder? enaSrdUdpSpecification) =>
      _$this._enaSrdUdpSpecification = enaSrdUdpSpecification;

  EnaSrdSpecificationBuilder() {
    EnaSrdSpecification._init(this);
  }

  EnaSrdSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enaSrdEnabled = $v.enaSrdEnabled;
      _enaSrdUdpSpecification = $v.enaSrdUdpSpecification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnaSrdSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnaSrdSpecification;
  }

  @override
  void update(void Function(EnaSrdSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnaSrdSpecification build() => _build();

  _$EnaSrdSpecification _build() {
    _$EnaSrdSpecification _$result;
    try {
      _$result = _$v ??
          new _$EnaSrdSpecification._(
              enaSrdEnabled: BuiltValueNullFieldError.checkNotNull(
                  enaSrdEnabled, r'EnaSrdSpecification', 'enaSrdEnabled'),
              enaSrdUdpSpecification: _enaSrdUdpSpecification?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enaSrdUdpSpecification';
        _enaSrdUdpSpecification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EnaSrdSpecification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
