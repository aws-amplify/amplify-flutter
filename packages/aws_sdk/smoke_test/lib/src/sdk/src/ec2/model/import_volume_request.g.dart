// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_volume_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportVolumeRequest extends ImportVolumeRequest {
  @override
  final String? availabilityZone;
  @override
  final String? description;
  @override
  final bool dryRun;
  @override
  final DiskImageDetail? image;
  @override
  final VolumeDetail? volume;

  factory _$ImportVolumeRequest(
          [void Function(ImportVolumeRequestBuilder)? updates]) =>
      (new ImportVolumeRequestBuilder()..update(updates))._build();

  _$ImportVolumeRequest._(
      {this.availabilityZone,
      this.description,
      required this.dryRun,
      this.image,
      this.volume})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ImportVolumeRequest', 'dryRun');
  }

  @override
  ImportVolumeRequest rebuild(
          void Function(ImportVolumeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportVolumeRequestBuilder toBuilder() =>
      new ImportVolumeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportVolumeRequest &&
        availabilityZone == other.availabilityZone &&
        description == other.description &&
        dryRun == other.dryRun &&
        image == other.image &&
        volume == other.volume;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, volume.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportVolumeRequestBuilder
    implements Builder<ImportVolumeRequest, ImportVolumeRequestBuilder> {
  _$ImportVolumeRequest? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DiskImageDetailBuilder? _image;
  DiskImageDetailBuilder get image =>
      _$this._image ??= new DiskImageDetailBuilder();
  set image(DiskImageDetailBuilder? image) => _$this._image = image;

  VolumeDetailBuilder? _volume;
  VolumeDetailBuilder get volume =>
      _$this._volume ??= new VolumeDetailBuilder();
  set volume(VolumeDetailBuilder? volume) => _$this._volume = volume;

  ImportVolumeRequestBuilder() {
    ImportVolumeRequest._init(this);
  }

  ImportVolumeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _description = $v.description;
      _dryRun = $v.dryRun;
      _image = $v.image?.toBuilder();
      _volume = $v.volume?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportVolumeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportVolumeRequest;
  }

  @override
  void update(void Function(ImportVolumeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportVolumeRequest build() => _build();

  _$ImportVolumeRequest _build() {
    _$ImportVolumeRequest _$result;
    try {
      _$result = _$v ??
          new _$ImportVolumeRequest._(
              availabilityZone: availabilityZone,
              description: description,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ImportVolumeRequest', 'dryRun'),
              image: _image?.build(),
              volume: _volume?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'image';
        _image?.build();
        _$failedField = 'volume';
        _volume?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImportVolumeRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
