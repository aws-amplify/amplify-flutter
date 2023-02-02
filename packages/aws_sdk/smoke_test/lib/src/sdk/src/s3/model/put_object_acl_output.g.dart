// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_object_acl_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutObjectAclOutput extends PutObjectAclOutput {
  @override
  final _i3.RequestCharged? requestCharged;

  factory _$PutObjectAclOutput(
          [void Function(PutObjectAclOutputBuilder)? updates]) =>
      (new PutObjectAclOutputBuilder()..update(updates))._build();

  _$PutObjectAclOutput._({this.requestCharged}) : super._();

  @override
  PutObjectAclOutput rebuild(
          void Function(PutObjectAclOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutObjectAclOutputBuilder toBuilder() =>
      new PutObjectAclOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutObjectAclOutput &&
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

class PutObjectAclOutputBuilder
    implements Builder<PutObjectAclOutput, PutObjectAclOutputBuilder> {
  _$PutObjectAclOutput? _$v;

  _i3.RequestCharged? _requestCharged;
  _i3.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i3.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  PutObjectAclOutputBuilder() {
    PutObjectAclOutput._init(this);
  }

  PutObjectAclOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestCharged = $v.requestCharged;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutObjectAclOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutObjectAclOutput;
  }

  @override
  void update(void Function(PutObjectAclOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutObjectAclOutput build() => _build();

  _$PutObjectAclOutput _build() {
    final _$result =
        _$v ?? new _$PutObjectAclOutput._(requestCharged: requestCharged);
    replace(_$result);
    return _$result;
  }
}

class _$PutObjectAclOutputPayload extends PutObjectAclOutputPayload {
  factory _$PutObjectAclOutputPayload(
          [void Function(PutObjectAclOutputPayloadBuilder)? updates]) =>
      (new PutObjectAclOutputPayloadBuilder()..update(updates))._build();

  _$PutObjectAclOutputPayload._() : super._();

  @override
  PutObjectAclOutputPayload rebuild(
          void Function(PutObjectAclOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutObjectAclOutputPayloadBuilder toBuilder() =>
      new PutObjectAclOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutObjectAclOutputPayload;
  }

  @override
  int get hashCode {
    return 1068840976;
  }
}

class PutObjectAclOutputPayloadBuilder
    implements
        Builder<PutObjectAclOutputPayload, PutObjectAclOutputPayloadBuilder> {
  _$PutObjectAclOutputPayload? _$v;

  PutObjectAclOutputPayloadBuilder() {
    PutObjectAclOutputPayload._init(this);
  }

  @override
  void replace(PutObjectAclOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutObjectAclOutputPayload;
  }

  @override
  void update(void Function(PutObjectAclOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutObjectAclOutputPayload build() => _build();

  _$PutObjectAclOutputPayload _build() {
    final _$result = _$v ?? new _$PutObjectAclOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
