// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_object_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteObjectOutput extends DeleteObjectOutput {
  @override
  final bool? deleteMarker;
  @override
  final String? versionId;
  @override
  final RequestCharged? requestCharged;

  factory _$DeleteObjectOutput(
          [void Function(DeleteObjectOutputBuilder)? updates]) =>
      (new DeleteObjectOutputBuilder()..update(updates))._build();

  _$DeleteObjectOutput._(
      {this.deleteMarker, this.versionId, this.requestCharged})
      : super._();

  @override
  DeleteObjectOutput rebuild(
          void Function(DeleteObjectOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteObjectOutputBuilder toBuilder() =>
      new DeleteObjectOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteObjectOutput &&
        deleteMarker == other.deleteMarker &&
        versionId == other.versionId &&
        requestCharged == other.requestCharged;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deleteMarker.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, requestCharged.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteObjectOutputBuilder
    implements Builder<DeleteObjectOutput, DeleteObjectOutputBuilder> {
  _$DeleteObjectOutput? _$v;

  bool? _deleteMarker;
  bool? get deleteMarker => _$this._deleteMarker;
  set deleteMarker(bool? deleteMarker) => _$this._deleteMarker = deleteMarker;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  RequestCharged? _requestCharged;
  RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  DeleteObjectOutputBuilder();

  DeleteObjectOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deleteMarker = $v.deleteMarker;
      _versionId = $v.versionId;
      _requestCharged = $v.requestCharged;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteObjectOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteObjectOutput;
  }

  @override
  void update(void Function(DeleteObjectOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteObjectOutput build() => _build();

  _$DeleteObjectOutput _build() {
    final _$result = _$v ??
        new _$DeleteObjectOutput._(
            deleteMarker: deleteMarker,
            versionId: versionId,
            requestCharged: requestCharged);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteObjectOutputPayload extends DeleteObjectOutputPayload {
  factory _$DeleteObjectOutputPayload(
          [void Function(DeleteObjectOutputPayloadBuilder)? updates]) =>
      (new DeleteObjectOutputPayloadBuilder()..update(updates))._build();

  _$DeleteObjectOutputPayload._() : super._();

  @override
  DeleteObjectOutputPayload rebuild(
          void Function(DeleteObjectOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteObjectOutputPayloadBuilder toBuilder() =>
      new DeleteObjectOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteObjectOutputPayload;
  }

  @override
  int get hashCode {
    return 503316919;
  }
}

class DeleteObjectOutputPayloadBuilder
    implements
        Builder<DeleteObjectOutputPayload, DeleteObjectOutputPayloadBuilder> {
  _$DeleteObjectOutputPayload? _$v;

  DeleteObjectOutputPayloadBuilder();

  @override
  void replace(DeleteObjectOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteObjectOutputPayload;
  }

  @override
  void update(void Function(DeleteObjectOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteObjectOutputPayload build() => _build();

  _$DeleteObjectOutputPayload _build() {
    final _$result = _$v ?? new _$DeleteObjectOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
