// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_volume_io_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableVolumeIoRequest extends EnableVolumeIoRequest {
  @override
  final bool dryRun;
  @override
  final String? volumeId;

  factory _$EnableVolumeIoRequest(
          [void Function(EnableVolumeIoRequestBuilder)? updates]) =>
      (new EnableVolumeIoRequestBuilder()..update(updates))._build();

  _$EnableVolumeIoRequest._({required this.dryRun, this.volumeId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'EnableVolumeIoRequest', 'dryRun');
  }

  @override
  EnableVolumeIoRequest rebuild(
          void Function(EnableVolumeIoRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableVolumeIoRequestBuilder toBuilder() =>
      new EnableVolumeIoRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableVolumeIoRequest &&
        dryRun == other.dryRun &&
        volumeId == other.volumeId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnableVolumeIoRequestBuilder
    implements Builder<EnableVolumeIoRequest, EnableVolumeIoRequestBuilder> {
  _$EnableVolumeIoRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  EnableVolumeIoRequestBuilder() {
    EnableVolumeIoRequest._init(this);
  }

  EnableVolumeIoRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _volumeId = $v.volumeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableVolumeIoRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableVolumeIoRequest;
  }

  @override
  void update(void Function(EnableVolumeIoRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableVolumeIoRequest build() => _build();

  _$EnableVolumeIoRequest _build() {
    final _$result = _$v ??
        new _$EnableVolumeIoRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'EnableVolumeIoRequest', 'dryRun'),
            volumeId: volumeId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
