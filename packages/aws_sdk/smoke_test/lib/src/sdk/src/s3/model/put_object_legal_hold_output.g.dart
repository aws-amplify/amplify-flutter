// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_object_legal_hold_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutObjectLegalHoldOutput extends PutObjectLegalHoldOutput {
  @override
  final _i3.RequestCharged? requestCharged;

  factory _$PutObjectLegalHoldOutput(
          [void Function(PutObjectLegalHoldOutputBuilder)? updates]) =>
      (new PutObjectLegalHoldOutputBuilder()..update(updates))._build();

  _$PutObjectLegalHoldOutput._({this.requestCharged}) : super._();

  @override
  PutObjectLegalHoldOutput rebuild(
          void Function(PutObjectLegalHoldOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutObjectLegalHoldOutputBuilder toBuilder() =>
      new PutObjectLegalHoldOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutObjectLegalHoldOutput &&
        requestCharged == other.requestCharged;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, requestCharged.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutObjectLegalHoldOutputBuilder
    implements
        Builder<PutObjectLegalHoldOutput, PutObjectLegalHoldOutputBuilder> {
  _$PutObjectLegalHoldOutput? _$v;

  _i3.RequestCharged? _requestCharged;
  _i3.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i3.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  PutObjectLegalHoldOutputBuilder() {
    PutObjectLegalHoldOutput._init(this);
  }

  PutObjectLegalHoldOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestCharged = $v.requestCharged;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutObjectLegalHoldOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutObjectLegalHoldOutput;
  }

  @override
  void update(void Function(PutObjectLegalHoldOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutObjectLegalHoldOutput build() => _build();

  _$PutObjectLegalHoldOutput _build() {
    final _$result =
        _$v ?? new _$PutObjectLegalHoldOutput._(requestCharged: requestCharged);
    replace(_$result);
    return _$result;
  }
}

class _$PutObjectLegalHoldOutputPayload
    extends PutObjectLegalHoldOutputPayload {
  factory _$PutObjectLegalHoldOutputPayload(
          [void Function(PutObjectLegalHoldOutputPayloadBuilder)? updates]) =>
      (new PutObjectLegalHoldOutputPayloadBuilder()..update(updates))._build();

  _$PutObjectLegalHoldOutputPayload._() : super._();

  @override
  PutObjectLegalHoldOutputPayload rebuild(
          void Function(PutObjectLegalHoldOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutObjectLegalHoldOutputPayloadBuilder toBuilder() =>
      new PutObjectLegalHoldOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutObjectLegalHoldOutputPayload;
  }

  @override
  int get hashCode {
    return 860096382;
  }
}

class PutObjectLegalHoldOutputPayloadBuilder
    implements
        Builder<PutObjectLegalHoldOutputPayload,
            PutObjectLegalHoldOutputPayloadBuilder> {
  _$PutObjectLegalHoldOutputPayload? _$v;

  PutObjectLegalHoldOutputPayloadBuilder() {
    PutObjectLegalHoldOutputPayload._init(this);
  }

  @override
  void replace(PutObjectLegalHoldOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutObjectLegalHoldOutputPayload;
  }

  @override
  void update(void Function(PutObjectLegalHoldOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutObjectLegalHoldOutputPayload build() => _build();

  _$PutObjectLegalHoldOutputPayload _build() {
    final _$result = _$v ?? new _$PutObjectLegalHoldOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
