// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_object_lock_configuration_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutObjectLockConfigurationOutput
    extends PutObjectLockConfigurationOutput {
  @override
  final _i3.RequestCharged? requestCharged;

  factory _$PutObjectLockConfigurationOutput(
          [void Function(PutObjectLockConfigurationOutputBuilder)? updates]) =>
      (new PutObjectLockConfigurationOutputBuilder()..update(updates))._build();

  _$PutObjectLockConfigurationOutput._({this.requestCharged}) : super._();

  @override
  PutObjectLockConfigurationOutput rebuild(
          void Function(PutObjectLockConfigurationOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutObjectLockConfigurationOutputBuilder toBuilder() =>
      new PutObjectLockConfigurationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutObjectLockConfigurationOutput &&
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

class PutObjectLockConfigurationOutputBuilder
    implements
        Builder<PutObjectLockConfigurationOutput,
            PutObjectLockConfigurationOutputBuilder> {
  _$PutObjectLockConfigurationOutput? _$v;

  _i3.RequestCharged? _requestCharged;
  _i3.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i3.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  PutObjectLockConfigurationOutputBuilder() {
    PutObjectLockConfigurationOutput._init(this);
  }

  PutObjectLockConfigurationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestCharged = $v.requestCharged;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutObjectLockConfigurationOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutObjectLockConfigurationOutput;
  }

  @override
  void update(void Function(PutObjectLockConfigurationOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutObjectLockConfigurationOutput build() => _build();

  _$PutObjectLockConfigurationOutput _build() {
    final _$result = _$v ??
        new _$PutObjectLockConfigurationOutput._(
            requestCharged: requestCharged);
    replace(_$result);
    return _$result;
  }
}

class _$PutObjectLockConfigurationOutputPayload
    extends PutObjectLockConfigurationOutputPayload {
  factory _$PutObjectLockConfigurationOutputPayload(
          [void Function(PutObjectLockConfigurationOutputPayloadBuilder)?
              updates]) =>
      (new PutObjectLockConfigurationOutputPayloadBuilder()..update(updates))
          ._build();

  _$PutObjectLockConfigurationOutputPayload._() : super._();

  @override
  PutObjectLockConfigurationOutputPayload rebuild(
          void Function(PutObjectLockConfigurationOutputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutObjectLockConfigurationOutputPayloadBuilder toBuilder() =>
      new PutObjectLockConfigurationOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutObjectLockConfigurationOutputPayload;
  }

  @override
  int get hashCode {
    return 1042364811;
  }
}

class PutObjectLockConfigurationOutputPayloadBuilder
    implements
        Builder<PutObjectLockConfigurationOutputPayload,
            PutObjectLockConfigurationOutputPayloadBuilder> {
  _$PutObjectLockConfigurationOutputPayload? _$v;

  PutObjectLockConfigurationOutputPayloadBuilder() {
    PutObjectLockConfigurationOutputPayload._init(this);
  }

  @override
  void replace(PutObjectLockConfigurationOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutObjectLockConfigurationOutputPayload;
  }

  @override
  void update(
      void Function(PutObjectLockConfigurationOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutObjectLockConfigurationOutputPayload build() => _build();

  _$PutObjectLockConfigurationOutputPayload _build() {
    final _$result = _$v ?? new _$PutObjectLockConfigurationOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
