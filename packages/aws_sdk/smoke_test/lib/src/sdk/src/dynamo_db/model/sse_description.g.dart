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
    return $jf($jc(
        $jc(
            $jc($jc(0, inaccessibleEncryptionDateTime.hashCode),
                kmsMasterKeyArn.hashCode),
            sseType.hashCode),
        status.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
