// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_key_pairs_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeKeyPairsResult extends DescribeKeyPairsResult {
  @override
  final _i2.BuiltList<KeyPairInfo>? keyPairs;

  factory _$DescribeKeyPairsResult(
          [void Function(DescribeKeyPairsResultBuilder)? updates]) =>
      (new DescribeKeyPairsResultBuilder()..update(updates))._build();

  _$DescribeKeyPairsResult._({this.keyPairs}) : super._();

  @override
  DescribeKeyPairsResult rebuild(
          void Function(DescribeKeyPairsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeKeyPairsResultBuilder toBuilder() =>
      new DescribeKeyPairsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeKeyPairsResult && keyPairs == other.keyPairs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keyPairs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeKeyPairsResultBuilder
    implements Builder<DescribeKeyPairsResult, DescribeKeyPairsResultBuilder> {
  _$DescribeKeyPairsResult? _$v;

  _i2.ListBuilder<KeyPairInfo>? _keyPairs;
  _i2.ListBuilder<KeyPairInfo> get keyPairs =>
      _$this._keyPairs ??= new _i2.ListBuilder<KeyPairInfo>();
  set keyPairs(_i2.ListBuilder<KeyPairInfo>? keyPairs) =>
      _$this._keyPairs = keyPairs;

  DescribeKeyPairsResultBuilder();

  DescribeKeyPairsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keyPairs = $v.keyPairs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeKeyPairsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeKeyPairsResult;
  }

  @override
  void update(void Function(DescribeKeyPairsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeKeyPairsResult build() => _build();

  _$DescribeKeyPairsResult _build() {
    _$DescribeKeyPairsResult _$result;
    try {
      _$result =
          _$v ?? new _$DescribeKeyPairsResult._(keyPairs: _keyPairs?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keyPairs';
        _keyPairs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeKeyPairsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
