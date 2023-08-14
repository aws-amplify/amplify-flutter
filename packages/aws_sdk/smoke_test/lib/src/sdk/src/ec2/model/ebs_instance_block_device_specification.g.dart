// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ebs_instance_block_device_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EbsInstanceBlockDeviceSpecification
    extends EbsInstanceBlockDeviceSpecification {
  @override
  final bool deleteOnTermination;
  @override
  final String? volumeId;

  factory _$EbsInstanceBlockDeviceSpecification(
          [void Function(EbsInstanceBlockDeviceSpecificationBuilder)?
              updates]) =>
      (new EbsInstanceBlockDeviceSpecificationBuilder()..update(updates))
          ._build();

  _$EbsInstanceBlockDeviceSpecification._(
      {required this.deleteOnTermination, this.volumeId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(deleteOnTermination,
        r'EbsInstanceBlockDeviceSpecification', 'deleteOnTermination');
  }

  @override
  EbsInstanceBlockDeviceSpecification rebuild(
          void Function(EbsInstanceBlockDeviceSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EbsInstanceBlockDeviceSpecificationBuilder toBuilder() =>
      new EbsInstanceBlockDeviceSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EbsInstanceBlockDeviceSpecification &&
        deleteOnTermination == other.deleteOnTermination &&
        volumeId == other.volumeId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deleteOnTermination.hashCode);
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EbsInstanceBlockDeviceSpecificationBuilder
    implements
        Builder<EbsInstanceBlockDeviceSpecification,
            EbsInstanceBlockDeviceSpecificationBuilder> {
  _$EbsInstanceBlockDeviceSpecification? _$v;

  bool? _deleteOnTermination;
  bool? get deleteOnTermination => _$this._deleteOnTermination;
  set deleteOnTermination(bool? deleteOnTermination) =>
      _$this._deleteOnTermination = deleteOnTermination;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  EbsInstanceBlockDeviceSpecificationBuilder() {
    EbsInstanceBlockDeviceSpecification._init(this);
  }

  EbsInstanceBlockDeviceSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deleteOnTermination = $v.deleteOnTermination;
      _volumeId = $v.volumeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EbsInstanceBlockDeviceSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EbsInstanceBlockDeviceSpecification;
  }

  @override
  void update(
      void Function(EbsInstanceBlockDeviceSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EbsInstanceBlockDeviceSpecification build() => _build();

  _$EbsInstanceBlockDeviceSpecification _build() {
    final _$result = _$v ??
        new _$EbsInstanceBlockDeviceSpecification._(
            deleteOnTermination: BuiltValueNullFieldError.checkNotNull(
                deleteOnTermination,
                r'EbsInstanceBlockDeviceSpecification',
                'deleteOnTermination'),
            volumeId: volumeId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
