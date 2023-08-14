// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_volume_task_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportVolumeTaskDetails extends ImportVolumeTaskDetails {
  @override
  final String? availabilityZone;
  @override
  final _i2.Int64 bytesConverted;
  @override
  final String? description;
  @override
  final DiskImageDescription? image;
  @override
  final DiskImageVolumeDescription? volume;

  factory _$ImportVolumeTaskDetails(
          [void Function(ImportVolumeTaskDetailsBuilder)? updates]) =>
      (new ImportVolumeTaskDetailsBuilder()..update(updates))._build();

  _$ImportVolumeTaskDetails._(
      {this.availabilityZone,
      required this.bytesConverted,
      this.description,
      this.image,
      this.volume})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bytesConverted, r'ImportVolumeTaskDetails', 'bytesConverted');
  }

  @override
  ImportVolumeTaskDetails rebuild(
          void Function(ImportVolumeTaskDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportVolumeTaskDetailsBuilder toBuilder() =>
      new ImportVolumeTaskDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportVolumeTaskDetails &&
        availabilityZone == other.availabilityZone &&
        bytesConverted == other.bytesConverted &&
        description == other.description &&
        image == other.image &&
        volume == other.volume;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, bytesConverted.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, volume.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportVolumeTaskDetailsBuilder
    implements
        Builder<ImportVolumeTaskDetails, ImportVolumeTaskDetailsBuilder> {
  _$ImportVolumeTaskDetails? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  _i2.Int64? _bytesConverted;
  _i2.Int64? get bytesConverted => _$this._bytesConverted;
  set bytesConverted(_i2.Int64? bytesConverted) =>
      _$this._bytesConverted = bytesConverted;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DiskImageDescriptionBuilder? _image;
  DiskImageDescriptionBuilder get image =>
      _$this._image ??= new DiskImageDescriptionBuilder();
  set image(DiskImageDescriptionBuilder? image) => _$this._image = image;

  DiskImageVolumeDescriptionBuilder? _volume;
  DiskImageVolumeDescriptionBuilder get volume =>
      _$this._volume ??= new DiskImageVolumeDescriptionBuilder();
  set volume(DiskImageVolumeDescriptionBuilder? volume) =>
      _$this._volume = volume;

  ImportVolumeTaskDetailsBuilder() {
    ImportVolumeTaskDetails._init(this);
  }

  ImportVolumeTaskDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _bytesConverted = $v.bytesConverted;
      _description = $v.description;
      _image = $v.image?.toBuilder();
      _volume = $v.volume?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportVolumeTaskDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportVolumeTaskDetails;
  }

  @override
  void update(void Function(ImportVolumeTaskDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportVolumeTaskDetails build() => _build();

  _$ImportVolumeTaskDetails _build() {
    _$ImportVolumeTaskDetails _$result;
    try {
      _$result = _$v ??
          new _$ImportVolumeTaskDetails._(
              availabilityZone: availabilityZone,
              bytesConverted: BuiltValueNullFieldError.checkNotNull(
                  bytesConverted, r'ImportVolumeTaskDetails', 'bytesConverted'),
              description: description,
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
            r'ImportVolumeTaskDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
