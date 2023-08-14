// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_volume_status_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVolumeStatusResult extends DescribeVolumeStatusResult {
  @override
  final String? nextToken;
  @override
  final _i2.BuiltList<VolumeStatusItem>? volumeStatuses;

  factory _$DescribeVolumeStatusResult(
          [void Function(DescribeVolumeStatusResultBuilder)? updates]) =>
      (new DescribeVolumeStatusResultBuilder()..update(updates))._build();

  _$DescribeVolumeStatusResult._({this.nextToken, this.volumeStatuses})
      : super._();

  @override
  DescribeVolumeStatusResult rebuild(
          void Function(DescribeVolumeStatusResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVolumeStatusResultBuilder toBuilder() =>
      new DescribeVolumeStatusResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVolumeStatusResult &&
        nextToken == other.nextToken &&
        volumeStatuses == other.volumeStatuses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, volumeStatuses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVolumeStatusResultBuilder
    implements
        Builder<DescribeVolumeStatusResult, DescribeVolumeStatusResultBuilder> {
  _$DescribeVolumeStatusResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i2.ListBuilder<VolumeStatusItem>? _volumeStatuses;
  _i2.ListBuilder<VolumeStatusItem> get volumeStatuses =>
      _$this._volumeStatuses ??= new _i2.ListBuilder<VolumeStatusItem>();
  set volumeStatuses(_i2.ListBuilder<VolumeStatusItem>? volumeStatuses) =>
      _$this._volumeStatuses = volumeStatuses;

  DescribeVolumeStatusResultBuilder();

  DescribeVolumeStatusResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _volumeStatuses = $v.volumeStatuses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVolumeStatusResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVolumeStatusResult;
  }

  @override
  void update(void Function(DescribeVolumeStatusResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVolumeStatusResult build() => _build();

  _$DescribeVolumeStatusResult _build() {
    _$DescribeVolumeStatusResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVolumeStatusResult._(
              nextToken: nextToken, volumeStatuses: _volumeStatuses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'volumeStatuses';
        _volumeStatuses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVolumeStatusResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
