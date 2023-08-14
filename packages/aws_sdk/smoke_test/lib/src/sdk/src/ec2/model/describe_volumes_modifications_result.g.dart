// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_volumes_modifications_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVolumesModificationsResult
    extends DescribeVolumesModificationsResult {
  @override
  final _i2.BuiltList<VolumeModification>? volumesModifications;
  @override
  final String? nextToken;

  factory _$DescribeVolumesModificationsResult(
          [void Function(DescribeVolumesModificationsResultBuilder)?
              updates]) =>
      (new DescribeVolumesModificationsResultBuilder()..update(updates))
          ._build();

  _$DescribeVolumesModificationsResult._(
      {this.volumesModifications, this.nextToken})
      : super._();

  @override
  DescribeVolumesModificationsResult rebuild(
          void Function(DescribeVolumesModificationsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVolumesModificationsResultBuilder toBuilder() =>
      new DescribeVolumesModificationsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVolumesModificationsResult &&
        volumesModifications == other.volumesModifications &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, volumesModifications.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVolumesModificationsResultBuilder
    implements
        Builder<DescribeVolumesModificationsResult,
            DescribeVolumesModificationsResultBuilder> {
  _$DescribeVolumesModificationsResult? _$v;

  _i2.ListBuilder<VolumeModification>? _volumesModifications;
  _i2.ListBuilder<VolumeModification> get volumesModifications =>
      _$this._volumesModifications ??=
          new _i2.ListBuilder<VolumeModification>();
  set volumesModifications(
          _i2.ListBuilder<VolumeModification>? volumesModifications) =>
      _$this._volumesModifications = volumesModifications;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeVolumesModificationsResultBuilder();

  DescribeVolumesModificationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _volumesModifications = $v.volumesModifications?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVolumesModificationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVolumesModificationsResult;
  }

  @override
  void update(
      void Function(DescribeVolumesModificationsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVolumesModificationsResult build() => _build();

  _$DescribeVolumesModificationsResult _build() {
    _$DescribeVolumesModificationsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVolumesModificationsResult._(
              volumesModifications: _volumesModifications?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'volumesModifications';
        _volumesModifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVolumesModificationsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
