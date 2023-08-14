// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_instance_volume_detail_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportInstanceVolumeDetailItem extends ImportInstanceVolumeDetailItem {
  @override
  final String? availabilityZone;
  @override
  final _i2.Int64 bytesConverted;
  @override
  final String? description;
  @override
  final DiskImageDescription? image;
  @override
  final String? status;
  @override
  final String? statusMessage;
  @override
  final DiskImageVolumeDescription? volume;

  factory _$ImportInstanceVolumeDetailItem(
          [void Function(ImportInstanceVolumeDetailItemBuilder)? updates]) =>
      (new ImportInstanceVolumeDetailItemBuilder()..update(updates))._build();

  _$ImportInstanceVolumeDetailItem._(
      {this.availabilityZone,
      required this.bytesConverted,
      this.description,
      this.image,
      this.status,
      this.statusMessage,
      this.volume})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bytesConverted, r'ImportInstanceVolumeDetailItem', 'bytesConverted');
  }

  @override
  ImportInstanceVolumeDetailItem rebuild(
          void Function(ImportInstanceVolumeDetailItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportInstanceVolumeDetailItemBuilder toBuilder() =>
      new ImportInstanceVolumeDetailItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportInstanceVolumeDetailItem &&
        availabilityZone == other.availabilityZone &&
        bytesConverted == other.bytesConverted &&
        description == other.description &&
        image == other.image &&
        status == other.status &&
        statusMessage == other.statusMessage &&
        volume == other.volume;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, bytesConverted.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusMessage.hashCode);
    _$hash = $jc(_$hash, volume.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportInstanceVolumeDetailItemBuilder
    implements
        Builder<ImportInstanceVolumeDetailItem,
            ImportInstanceVolumeDetailItemBuilder> {
  _$ImportInstanceVolumeDetailItem? _$v;

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

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _statusMessage;
  String? get statusMessage => _$this._statusMessage;
  set statusMessage(String? statusMessage) =>
      _$this._statusMessage = statusMessage;

  DiskImageVolumeDescriptionBuilder? _volume;
  DiskImageVolumeDescriptionBuilder get volume =>
      _$this._volume ??= new DiskImageVolumeDescriptionBuilder();
  set volume(DiskImageVolumeDescriptionBuilder? volume) =>
      _$this._volume = volume;

  ImportInstanceVolumeDetailItemBuilder() {
    ImportInstanceVolumeDetailItem._init(this);
  }

  ImportInstanceVolumeDetailItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _bytesConverted = $v.bytesConverted;
      _description = $v.description;
      _image = $v.image?.toBuilder();
      _status = $v.status;
      _statusMessage = $v.statusMessage;
      _volume = $v.volume?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportInstanceVolumeDetailItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportInstanceVolumeDetailItem;
  }

  @override
  void update(void Function(ImportInstanceVolumeDetailItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportInstanceVolumeDetailItem build() => _build();

  _$ImportInstanceVolumeDetailItem _build() {
    _$ImportInstanceVolumeDetailItem _$result;
    try {
      _$result = _$v ??
          new _$ImportInstanceVolumeDetailItem._(
              availabilityZone: availabilityZone,
              bytesConverted: BuiltValueNullFieldError.checkNotNull(
                  bytesConverted,
                  r'ImportInstanceVolumeDetailItem',
                  'bytesConverted'),
              description: description,
              image: _image?.build(),
              status: status,
              statusMessage: statusMessage,
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
            r'ImportInstanceVolumeDetailItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
