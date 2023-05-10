// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.sse_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SseDescription extends SseDescription {
  @override
  final _i2.SseStatus? status;
  @override
  final _i3.SseType? sseType;
  @override
  final String? kmsMasterKeyArn;
  @override
  final DateTime? inaccessibleEncryptionDateTime;

  factory _$SseDescription([void Function(SseDescriptionBuilder)? updates]) =>
      (new SseDescriptionBuilder()..update(updates))._build();

  _$SseDescription._(
      {this.status,
      this.sseType,
      this.kmsMasterKeyArn,
      this.inaccessibleEncryptionDateTime})
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
        status == other.status &&
        sseType == other.sseType &&
        kmsMasterKeyArn == other.kmsMasterKeyArn &&
        inaccessibleEncryptionDateTime == other.inaccessibleEncryptionDateTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, sseType.hashCode);
    _$hash = $jc(_$hash, kmsMasterKeyArn.hashCode);
    _$hash = $jc(_$hash, inaccessibleEncryptionDateTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SseDescriptionBuilder
    implements Builder<SseDescription, SseDescriptionBuilder> {
  _$SseDescription? _$v;

  _i2.SseStatus? _status;
  _i2.SseStatus? get status => _$this._status;
  set status(_i2.SseStatus? status) => _$this._status = status;

  _i3.SseType? _sseType;
  _i3.SseType? get sseType => _$this._sseType;
  set sseType(_i3.SseType? sseType) => _$this._sseType = sseType;

  String? _kmsMasterKeyArn;
  String? get kmsMasterKeyArn => _$this._kmsMasterKeyArn;
  set kmsMasterKeyArn(String? kmsMasterKeyArn) =>
      _$this._kmsMasterKeyArn = kmsMasterKeyArn;

  DateTime? _inaccessibleEncryptionDateTime;
  DateTime? get inaccessibleEncryptionDateTime =>
      _$this._inaccessibleEncryptionDateTime;
  set inaccessibleEncryptionDateTime(
          DateTime? inaccessibleEncryptionDateTime) =>
      _$this._inaccessibleEncryptionDateTime = inaccessibleEncryptionDateTime;

  SseDescriptionBuilder() {
    SseDescription._init(this);
  }

  SseDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _sseType = $v.sseType;
      _kmsMasterKeyArn = $v.kmsMasterKeyArn;
      _inaccessibleEncryptionDateTime = $v.inaccessibleEncryptionDateTime;
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
            status: status,
            sseType: sseType,
            kmsMasterKeyArn: kmsMasterKeyArn,
            inaccessibleEncryptionDateTime: inaccessibleEncryptionDateTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
