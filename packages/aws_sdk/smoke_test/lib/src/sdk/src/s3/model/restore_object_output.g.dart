// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.restore_object_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreObjectOutput extends RestoreObjectOutput {
  @override
  final _i3.RequestCharged? requestCharged;
  @override
  final String? restoreOutputPath;

  factory _$RestoreObjectOutput(
          [void Function(RestoreObjectOutputBuilder)? updates]) =>
      (new RestoreObjectOutputBuilder()..update(updates))._build();

  _$RestoreObjectOutput._({this.requestCharged, this.restoreOutputPath})
      : super._();

  @override
  RestoreObjectOutput rebuild(
          void Function(RestoreObjectOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreObjectOutputBuilder toBuilder() =>
      new RestoreObjectOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreObjectOutput &&
        requestCharged == other.requestCharged &&
        restoreOutputPath == other.restoreOutputPath;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, requestCharged.hashCode);
    _$hash = $jc(_$hash, restoreOutputPath.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestoreObjectOutputBuilder
    implements Builder<RestoreObjectOutput, RestoreObjectOutputBuilder> {
  _$RestoreObjectOutput? _$v;

  _i3.RequestCharged? _requestCharged;
  _i3.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i3.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  String? _restoreOutputPath;
  String? get restoreOutputPath => _$this._restoreOutputPath;
  set restoreOutputPath(String? restoreOutputPath) =>
      _$this._restoreOutputPath = restoreOutputPath;

  RestoreObjectOutputBuilder() {
    RestoreObjectOutput._init(this);
  }

  RestoreObjectOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestCharged = $v.requestCharged;
      _restoreOutputPath = $v.restoreOutputPath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreObjectOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreObjectOutput;
  }

  @override
  void update(void Function(RestoreObjectOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreObjectOutput build() => _build();

  _$RestoreObjectOutput _build() {
    final _$result = _$v ??
        new _$RestoreObjectOutput._(
            requestCharged: requestCharged,
            restoreOutputPath: restoreOutputPath);
    replace(_$result);
    return _$result;
  }
}

class _$RestoreObjectOutputPayload extends RestoreObjectOutputPayload {
  factory _$RestoreObjectOutputPayload(
          [void Function(RestoreObjectOutputPayloadBuilder)? updates]) =>
      (new RestoreObjectOutputPayloadBuilder()..update(updates))._build();

  _$RestoreObjectOutputPayload._() : super._();

  @override
  RestoreObjectOutputPayload rebuild(
          void Function(RestoreObjectOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreObjectOutputPayloadBuilder toBuilder() =>
      new RestoreObjectOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreObjectOutputPayload;
  }

  @override
  int get hashCode {
    return 636164539;
  }
}

class RestoreObjectOutputPayloadBuilder
    implements
        Builder<RestoreObjectOutputPayload, RestoreObjectOutputPayloadBuilder> {
  _$RestoreObjectOutputPayload? _$v;

  RestoreObjectOutputPayloadBuilder() {
    RestoreObjectOutputPayload._init(this);
  }

  @override
  void replace(RestoreObjectOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreObjectOutputPayload;
  }

  @override
  void update(void Function(RestoreObjectOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreObjectOutputPayload build() => _build();

  _$RestoreObjectOutputPayload _build() {
    final _$result = _$v ?? new _$RestoreObjectOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
