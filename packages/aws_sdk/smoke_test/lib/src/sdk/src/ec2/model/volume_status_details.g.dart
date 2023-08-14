// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume_status_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VolumeStatusDetails extends VolumeStatusDetails {
  @override
  final VolumeStatusName? name;
  @override
  final String? status;

  factory _$VolumeStatusDetails(
          [void Function(VolumeStatusDetailsBuilder)? updates]) =>
      (new VolumeStatusDetailsBuilder()..update(updates))._build();

  _$VolumeStatusDetails._({this.name, this.status}) : super._();

  @override
  VolumeStatusDetails rebuild(
          void Function(VolumeStatusDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VolumeStatusDetailsBuilder toBuilder() =>
      new VolumeStatusDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VolumeStatusDetails &&
        name == other.name &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VolumeStatusDetailsBuilder
    implements Builder<VolumeStatusDetails, VolumeStatusDetailsBuilder> {
  _$VolumeStatusDetails? _$v;

  VolumeStatusName? _name;
  VolumeStatusName? get name => _$this._name;
  set name(VolumeStatusName? name) => _$this._name = name;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  VolumeStatusDetailsBuilder();

  VolumeStatusDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VolumeStatusDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VolumeStatusDetails;
  }

  @override
  void update(void Function(VolumeStatusDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VolumeStatusDetails build() => _build();

  _$VolumeStatusDetails _build() {
    final _$result =
        _$v ?? new _$VolumeStatusDetails._(name: name, status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
