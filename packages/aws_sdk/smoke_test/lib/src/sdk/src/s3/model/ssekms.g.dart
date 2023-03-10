// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.ssekms;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Ssekms extends Ssekms {
  @override
  final String keyId;

  factory _$Ssekms([void Function(SsekmsBuilder)? updates]) =>
      (new SsekmsBuilder()..update(updates))._build();

  _$Ssekms._({required this.keyId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(keyId, r'Ssekms', 'keyId');
  }

  @override
  Ssekms rebuild(void Function(SsekmsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SsekmsBuilder toBuilder() => new SsekmsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ssekms && keyId == other.keyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SsekmsBuilder implements Builder<Ssekms, SsekmsBuilder> {
  _$Ssekms? _$v;

  String? _keyId;
  String? get keyId => _$this._keyId;
  set keyId(String? keyId) => _$this._keyId = keyId;

  SsekmsBuilder() {
    Ssekms._init(this);
  }

  SsekmsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keyId = $v.keyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ssekms other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ssekms;
  }

  @override
  void update(void Function(SsekmsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ssekms build() => _build();

  _$Ssekms _build() {
    final _$result = _$v ??
        new _$Ssekms._(
            keyId: BuiltValueNullFieldError.checkNotNull(
                keyId, r'Ssekms', 'keyId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
