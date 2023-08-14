// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_moving_addresses_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeMovingAddressesResult extends DescribeMovingAddressesResult {
  @override
  final _i2.BuiltList<MovingAddressStatus>? movingAddressStatuses;
  @override
  final String? nextToken;

  factory _$DescribeMovingAddressesResult(
          [void Function(DescribeMovingAddressesResultBuilder)? updates]) =>
      (new DescribeMovingAddressesResultBuilder()..update(updates))._build();

  _$DescribeMovingAddressesResult._(
      {this.movingAddressStatuses, this.nextToken})
      : super._();

  @override
  DescribeMovingAddressesResult rebuild(
          void Function(DescribeMovingAddressesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeMovingAddressesResultBuilder toBuilder() =>
      new DescribeMovingAddressesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeMovingAddressesResult &&
        movingAddressStatuses == other.movingAddressStatuses &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, movingAddressStatuses.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeMovingAddressesResultBuilder
    implements
        Builder<DescribeMovingAddressesResult,
            DescribeMovingAddressesResultBuilder> {
  _$DescribeMovingAddressesResult? _$v;

  _i2.ListBuilder<MovingAddressStatus>? _movingAddressStatuses;
  _i2.ListBuilder<MovingAddressStatus> get movingAddressStatuses =>
      _$this._movingAddressStatuses ??=
          new _i2.ListBuilder<MovingAddressStatus>();
  set movingAddressStatuses(
          _i2.ListBuilder<MovingAddressStatus>? movingAddressStatuses) =>
      _$this._movingAddressStatuses = movingAddressStatuses;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeMovingAddressesResultBuilder();

  DescribeMovingAddressesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _movingAddressStatuses = $v.movingAddressStatuses?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeMovingAddressesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeMovingAddressesResult;
  }

  @override
  void update(void Function(DescribeMovingAddressesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeMovingAddressesResult build() => _build();

  _$DescribeMovingAddressesResult _build() {
    _$DescribeMovingAddressesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeMovingAddressesResult._(
              movingAddressStatuses: _movingAddressStatuses?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'movingAddressStatuses';
        _movingAddressStatuses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeMovingAddressesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
