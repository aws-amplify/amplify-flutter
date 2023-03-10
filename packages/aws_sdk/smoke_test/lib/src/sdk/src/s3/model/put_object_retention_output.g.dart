// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_object_retention_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutObjectRetentionOutput extends PutObjectRetentionOutput {
  @override
  final _i3.RequestCharged? requestCharged;

  factory _$PutObjectRetentionOutput(
          [void Function(PutObjectRetentionOutputBuilder)? updates]) =>
      (new PutObjectRetentionOutputBuilder()..update(updates))._build();

  _$PutObjectRetentionOutput._({this.requestCharged}) : super._();

  @override
  PutObjectRetentionOutput rebuild(
          void Function(PutObjectRetentionOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutObjectRetentionOutputBuilder toBuilder() =>
      new PutObjectRetentionOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutObjectRetentionOutput &&
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

class PutObjectRetentionOutputBuilder
    implements
        Builder<PutObjectRetentionOutput, PutObjectRetentionOutputBuilder> {
  _$PutObjectRetentionOutput? _$v;

  _i3.RequestCharged? _requestCharged;
  _i3.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i3.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  PutObjectRetentionOutputBuilder() {
    PutObjectRetentionOutput._init(this);
  }

  PutObjectRetentionOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestCharged = $v.requestCharged;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutObjectRetentionOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutObjectRetentionOutput;
  }

  @override
  void update(void Function(PutObjectRetentionOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutObjectRetentionOutput build() => _build();

  _$PutObjectRetentionOutput _build() {
    final _$result =
        _$v ?? new _$PutObjectRetentionOutput._(requestCharged: requestCharged);
    replace(_$result);
    return _$result;
  }
}

class _$PutObjectRetentionOutputPayload
    extends PutObjectRetentionOutputPayload {
  factory _$PutObjectRetentionOutputPayload(
          [void Function(PutObjectRetentionOutputPayloadBuilder)? updates]) =>
      (new PutObjectRetentionOutputPayloadBuilder()..update(updates))._build();

  _$PutObjectRetentionOutputPayload._() : super._();

  @override
  PutObjectRetentionOutputPayload rebuild(
          void Function(PutObjectRetentionOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutObjectRetentionOutputPayloadBuilder toBuilder() =>
      new PutObjectRetentionOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutObjectRetentionOutputPayload;
  }

  @override
  int get hashCode {
    return 997731609;
  }
}

class PutObjectRetentionOutputPayloadBuilder
    implements
        Builder<PutObjectRetentionOutputPayload,
            PutObjectRetentionOutputPayloadBuilder> {
  _$PutObjectRetentionOutputPayload? _$v;

  PutObjectRetentionOutputPayloadBuilder() {
    PutObjectRetentionOutputPayload._init(this);
  }

  @override
  void replace(PutObjectRetentionOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutObjectRetentionOutputPayload;
  }

  @override
  void update(void Function(PutObjectRetentionOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutObjectRetentionOutputPayload build() => _build();

  _$PutObjectRetentionOutputPayload _build() {
    final _$result = _$v ?? new _$PutObjectRetentionOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
