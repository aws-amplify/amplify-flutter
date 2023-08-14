// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_volume_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVolumeRequest extends DeleteVolumeRequest {
  @override
  final String? volumeId;
  @override
  final bool dryRun;

  factory _$DeleteVolumeRequest(
          [void Function(DeleteVolumeRequestBuilder)? updates]) =>
      (new DeleteVolumeRequestBuilder()..update(updates))._build();

  _$DeleteVolumeRequest._({this.volumeId, required this.dryRun}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteVolumeRequest', 'dryRun');
  }

  @override
  DeleteVolumeRequest rebuild(
          void Function(DeleteVolumeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVolumeRequestBuilder toBuilder() =>
      new DeleteVolumeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVolumeRequest &&
        volumeId == other.volumeId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteVolumeRequestBuilder
    implements Builder<DeleteVolumeRequest, DeleteVolumeRequestBuilder> {
  _$DeleteVolumeRequest? _$v;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteVolumeRequestBuilder() {
    DeleteVolumeRequest._init(this);
  }

  DeleteVolumeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _volumeId = $v.volumeId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVolumeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVolumeRequest;
  }

  @override
  void update(void Function(DeleteVolumeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVolumeRequest build() => _build();

  _$DeleteVolumeRequest _build() {
    final _$result = _$v ??
        new _$DeleteVolumeRequest._(
            volumeId: volumeId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteVolumeRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
