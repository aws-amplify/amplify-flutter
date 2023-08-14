// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_volumes_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVolumesResult extends DescribeVolumesResult {
  @override
  final _i2.BuiltList<Volume>? volumes;
  @override
  final String? nextToken;

  factory _$DescribeVolumesResult(
          [void Function(DescribeVolumesResultBuilder)? updates]) =>
      (new DescribeVolumesResultBuilder()..update(updates))._build();

  _$DescribeVolumesResult._({this.volumes, this.nextToken}) : super._();

  @override
  DescribeVolumesResult rebuild(
          void Function(DescribeVolumesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVolumesResultBuilder toBuilder() =>
      new DescribeVolumesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVolumesResult &&
        volumes == other.volumes &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, volumes.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVolumesResultBuilder
    implements Builder<DescribeVolumesResult, DescribeVolumesResultBuilder> {
  _$DescribeVolumesResult? _$v;

  _i2.ListBuilder<Volume>? _volumes;
  _i2.ListBuilder<Volume> get volumes =>
      _$this._volumes ??= new _i2.ListBuilder<Volume>();
  set volumes(_i2.ListBuilder<Volume>? volumes) => _$this._volumes = volumes;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeVolumesResultBuilder();

  DescribeVolumesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _volumes = $v.volumes?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVolumesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVolumesResult;
  }

  @override
  void update(void Function(DescribeVolumesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVolumesResult build() => _build();

  _$DescribeVolumesResult _build() {
    _$DescribeVolumesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVolumesResult._(
              volumes: _volumes?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'volumes';
        _volumes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVolumesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
