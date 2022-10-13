// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.timestamp_format_headers_io;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimestampFormatHeadersIo extends TimestampFormatHeadersIo {
  @override
  final DateTime? defaultFormat;
  @override
  final DateTime? memberDateTime;
  @override
  final DateTime? memberEpochSeconds;
  @override
  final DateTime? memberHttpDate;
  @override
  final DateTime? targetDateTime;
  @override
  final DateTime? targetEpochSeconds;
  @override
  final DateTime? targetHttpDate;

  factory _$TimestampFormatHeadersIo(
          [void Function(TimestampFormatHeadersIoBuilder)? updates]) =>
      (new TimestampFormatHeadersIoBuilder()..update(updates))._build();

  _$TimestampFormatHeadersIo._(
      {this.defaultFormat,
      this.memberDateTime,
      this.memberEpochSeconds,
      this.memberHttpDate,
      this.targetDateTime,
      this.targetEpochSeconds,
      this.targetHttpDate})
      : super._();

  @override
  TimestampFormatHeadersIo rebuild(
          void Function(TimestampFormatHeadersIoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimestampFormatHeadersIoBuilder toBuilder() =>
      new TimestampFormatHeadersIoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimestampFormatHeadersIo &&
        defaultFormat == other.defaultFormat &&
        memberDateTime == other.memberDateTime &&
        memberEpochSeconds == other.memberEpochSeconds &&
        memberHttpDate == other.memberHttpDate &&
        targetDateTime == other.targetDateTime &&
        targetEpochSeconds == other.targetEpochSeconds &&
        targetHttpDate == other.targetHttpDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, defaultFormat.hashCode),
                            memberDateTime.hashCode),
                        memberEpochSeconds.hashCode),
                    memberHttpDate.hashCode),
                targetDateTime.hashCode),
            targetEpochSeconds.hashCode),
        targetHttpDate.hashCode));
  }
}

class TimestampFormatHeadersIoBuilder
    implements
        Builder<TimestampFormatHeadersIo, TimestampFormatHeadersIoBuilder> {
  _$TimestampFormatHeadersIo? _$v;

  DateTime? _defaultFormat;
  DateTime? get defaultFormat => _$this._defaultFormat;
  set defaultFormat(DateTime? defaultFormat) =>
      _$this._defaultFormat = defaultFormat;

  DateTime? _memberDateTime;
  DateTime? get memberDateTime => _$this._memberDateTime;
  set memberDateTime(DateTime? memberDateTime) =>
      _$this._memberDateTime = memberDateTime;

  DateTime? _memberEpochSeconds;
  DateTime? get memberEpochSeconds => _$this._memberEpochSeconds;
  set memberEpochSeconds(DateTime? memberEpochSeconds) =>
      _$this._memberEpochSeconds = memberEpochSeconds;

  DateTime? _memberHttpDate;
  DateTime? get memberHttpDate => _$this._memberHttpDate;
  set memberHttpDate(DateTime? memberHttpDate) =>
      _$this._memberHttpDate = memberHttpDate;

  DateTime? _targetDateTime;
  DateTime? get targetDateTime => _$this._targetDateTime;
  set targetDateTime(DateTime? targetDateTime) =>
      _$this._targetDateTime = targetDateTime;

  DateTime? _targetEpochSeconds;
  DateTime? get targetEpochSeconds => _$this._targetEpochSeconds;
  set targetEpochSeconds(DateTime? targetEpochSeconds) =>
      _$this._targetEpochSeconds = targetEpochSeconds;

  DateTime? _targetHttpDate;
  DateTime? get targetHttpDate => _$this._targetHttpDate;
  set targetHttpDate(DateTime? targetHttpDate) =>
      _$this._targetHttpDate = targetHttpDate;

  TimestampFormatHeadersIoBuilder() {
    TimestampFormatHeadersIo._init(this);
  }

  TimestampFormatHeadersIoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _defaultFormat = $v.defaultFormat;
      _memberDateTime = $v.memberDateTime;
      _memberEpochSeconds = $v.memberEpochSeconds;
      _memberHttpDate = $v.memberHttpDate;
      _targetDateTime = $v.targetDateTime;
      _targetEpochSeconds = $v.targetEpochSeconds;
      _targetHttpDate = $v.targetHttpDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimestampFormatHeadersIo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimestampFormatHeadersIo;
  }

  @override
  void update(void Function(TimestampFormatHeadersIoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimestampFormatHeadersIo build() => _build();

  _$TimestampFormatHeadersIo _build() {
    final _$result = _$v ??
        new _$TimestampFormatHeadersIo._(
            defaultFormat: defaultFormat,
            memberDateTime: memberDateTime,
            memberEpochSeconds: memberEpochSeconds,
            memberHttpDate: memberHttpDate,
            targetDateTime: targetDateTime,
            targetEpochSeconds: targetEpochSeconds,
            targetHttpDate: targetHttpDate);
    replace(_$result);
    return _$result;
  }
}

class _$TimestampFormatHeadersIoPayload
    extends TimestampFormatHeadersIoPayload {
  factory _$TimestampFormatHeadersIoPayload(
          [void Function(TimestampFormatHeadersIoPayloadBuilder)? updates]) =>
      (new TimestampFormatHeadersIoPayloadBuilder()..update(updates))._build();

  _$TimestampFormatHeadersIoPayload._() : super._();

  @override
  TimestampFormatHeadersIoPayload rebuild(
          void Function(TimestampFormatHeadersIoPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimestampFormatHeadersIoPayloadBuilder toBuilder() =>
      new TimestampFormatHeadersIoPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimestampFormatHeadersIoPayload;
  }

  @override
  int get hashCode {
    return 506926449;
  }
}

class TimestampFormatHeadersIoPayloadBuilder
    implements
        Builder<TimestampFormatHeadersIoPayload,
            TimestampFormatHeadersIoPayloadBuilder> {
  _$TimestampFormatHeadersIoPayload? _$v;

  TimestampFormatHeadersIoPayloadBuilder() {
    TimestampFormatHeadersIoPayload._init(this);
  }

  @override
  void replace(TimestampFormatHeadersIoPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimestampFormatHeadersIoPayload;
  }

  @override
  void update(void Function(TimestampFormatHeadersIoPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimestampFormatHeadersIoPayload build() => _build();

  _$TimestampFormatHeadersIoPayload _build() {
    final _$result = _$v ?? new _$TimestampFormatHeadersIoPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
