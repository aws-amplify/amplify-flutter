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
    return $jf($jc(0, requestCharged.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
