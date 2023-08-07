// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abort_multipart_upload_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AbortMultipartUploadOutput extends AbortMultipartUploadOutput {
  @override
  final RequestCharged? requestCharged;

  factory _$AbortMultipartUploadOutput(
          [void Function(AbortMultipartUploadOutputBuilder)? updates]) =>
      (new AbortMultipartUploadOutputBuilder()..update(updates))._build();

  _$AbortMultipartUploadOutput._({this.requestCharged}) : super._();

  @override
  AbortMultipartUploadOutput rebuild(
          void Function(AbortMultipartUploadOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AbortMultipartUploadOutputBuilder toBuilder() =>
      new AbortMultipartUploadOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AbortMultipartUploadOutput &&
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

class AbortMultipartUploadOutputBuilder
    implements
        Builder<AbortMultipartUploadOutput, AbortMultipartUploadOutputBuilder> {
  _$AbortMultipartUploadOutput? _$v;

  RequestCharged? _requestCharged;
  RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  AbortMultipartUploadOutputBuilder();

  AbortMultipartUploadOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestCharged = $v.requestCharged;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AbortMultipartUploadOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AbortMultipartUploadOutput;
  }

  @override
  void update(void Function(AbortMultipartUploadOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AbortMultipartUploadOutput build() => _build();

  _$AbortMultipartUploadOutput _build() {
    final _$result = _$v ??
        new _$AbortMultipartUploadOutput._(requestCharged: requestCharged);
    replace(_$result);
    return _$result;
  }
}

class _$AbortMultipartUploadOutputPayload
    extends AbortMultipartUploadOutputPayload {
  factory _$AbortMultipartUploadOutputPayload(
          [void Function(AbortMultipartUploadOutputPayloadBuilder)? updates]) =>
      (new AbortMultipartUploadOutputPayloadBuilder()..update(updates))
          ._build();

  _$AbortMultipartUploadOutputPayload._() : super._();

  @override
  AbortMultipartUploadOutputPayload rebuild(
          void Function(AbortMultipartUploadOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AbortMultipartUploadOutputPayloadBuilder toBuilder() =>
      new AbortMultipartUploadOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AbortMultipartUploadOutputPayload;
  }

  @override
  int get hashCode {
    return 397003609;
  }
}

class AbortMultipartUploadOutputPayloadBuilder
    implements
        Builder<AbortMultipartUploadOutputPayload,
            AbortMultipartUploadOutputPayloadBuilder> {
  _$AbortMultipartUploadOutputPayload? _$v;

  AbortMultipartUploadOutputPayloadBuilder();

  @override
  void replace(AbortMultipartUploadOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AbortMultipartUploadOutputPayload;
  }

  @override
  void update(
      void Function(AbortMultipartUploadOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AbortMultipartUploadOutputPayload build() => _build();

  _$AbortMultipartUploadOutputPayload _build() {
    final _$result = _$v ?? new _$AbortMultipartUploadOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
