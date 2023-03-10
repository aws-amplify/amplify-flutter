// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.sse_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SseDescription extends SseDescription {
  @override
  final DateTime? inaccessibleEncryptionDateTime;
  @override
  final String? kmsMasterKeyArn;
  @override
  final _i2.SseType? sseType;
  @override
  final _i3.SseStatus? status;

  factory _$SseDescription([void Function(SseDescriptionBuilder)? updates]) =>
      (new SseDescriptionBuilder()..update(updates))._build();

  _$SseDescription._(
      {this.inaccessibleEncryptionDateTime,
      this.kmsMasterKeyArn,
      this.sseType,
      this.status})
      : super._();

  @override
  SseDescription rebuild(void Function(SseDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SseDescriptionBuilder toBuilder() =>
      new SseDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SseDescription &&
        inaccessibleEncryptionDateTime ==
            other.inaccessibleEncryptionDateTime &&
        kmsMasterKeyArn == other.kmsMasterKeyArn &&
        sseType == other.sseType &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inaccessibleEncryptionDateTime.hashCode);
    _$hash = $jc(_$hash, kmsMasterKeyArn.hashCode);
    _$hash = $jc(_$hash, sseType.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SseDescriptionBuilder
    implements Builder<SseDescription, SseDescriptionBuilder> {
  _$SseDescription? _$v;

  DateTime? _inaccessibleEncryptionDateTime;
  DateTime? get inaccessibleEncryptionDateTime =>
      _$this._inaccessibleEncryptionDateTime;
  set inaccessibleEncryptionDateTime(
          DateTime? inaccessibleEncryptionDateTime) =>
      _$this._inaccessibleEncryptionDateTime = inaccessibleEncryptionDateTime;

  String? _kmsMasterKeyArn;
  String? get kmsMasterKeyArn => _$this._kmsMasterKeyArn;
  set kmsMasterKeyArn(String? kmsMasterKeyArn) =>
      _$this._kmsMasterKeyArn = kmsMasterKeyArn;

  _i2.SseType? _sseType;
  _i2.SseType? get sseType => _$this._sseType;
  set sseType(_i2.SseType? sseType) => _$this._sseType = sseType;

  _i3.SseStatus? _status;
  _i3.SseStatus? get status => _$this._status;
  set status(_i3.SseStatus? status) => _$this._status = status;

  SseDescriptionBuilder() {
    SseDescription._init(this);
  }

  SseDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inaccessibleEncryptionDateTime = $v.inaccessibleEncryptionDateTime;
      _kmsMasterKeyArn = $v.kmsMasterKeyArn;
      _sseType = $v.sseType;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SseDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SseDescription;
  }

  @override
  void update(void Function(SseDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SseDescription build() => _build();

  _$SseDescription _build() {
    final _$result = _$v ??
        new _$SseDescription._(
            inaccessibleEncryptionDateTime: inaccessibleEncryptionDateTime,
            kmsMasterKeyArn: kmsMasterKeyArn,
            sseType: sseType,
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
