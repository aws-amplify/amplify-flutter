// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_volume_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVolumeResult extends ModifyVolumeResult {
  @override
  final VolumeModification? volumeModification;

  factory _$ModifyVolumeResult(
          [void Function(ModifyVolumeResultBuilder)? updates]) =>
      (new ModifyVolumeResultBuilder()..update(updates))._build();

  _$ModifyVolumeResult._({this.volumeModification}) : super._();

  @override
  ModifyVolumeResult rebuild(
          void Function(ModifyVolumeResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVolumeResultBuilder toBuilder() =>
      new ModifyVolumeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVolumeResult &&
        volumeModification == other.volumeModification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, volumeModification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVolumeResultBuilder
    implements Builder<ModifyVolumeResult, ModifyVolumeResultBuilder> {
  _$ModifyVolumeResult? _$v;

  VolumeModificationBuilder? _volumeModification;
  VolumeModificationBuilder get volumeModification =>
      _$this._volumeModification ??= new VolumeModificationBuilder();
  set volumeModification(VolumeModificationBuilder? volumeModification) =>
      _$this._volumeModification = volumeModification;

  ModifyVolumeResultBuilder();

  ModifyVolumeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _volumeModification = $v.volumeModification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVolumeResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVolumeResult;
  }

  @override
  void update(void Function(ModifyVolumeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVolumeResult build() => _build();

  _$ModifyVolumeResult _build() {
    _$ModifyVolumeResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyVolumeResult._(
              volumeModification: _volumeModification?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'volumeModification';
        _volumeModification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVolumeResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
