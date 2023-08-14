// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_prefix_lists_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribePrefixListsResult extends DescribePrefixListsResult {
  @override
  final String? nextToken;
  @override
  final _i2.BuiltList<PrefixList>? prefixLists;

  factory _$DescribePrefixListsResult(
          [void Function(DescribePrefixListsResultBuilder)? updates]) =>
      (new DescribePrefixListsResultBuilder()..update(updates))._build();

  _$DescribePrefixListsResult._({this.nextToken, this.prefixLists}) : super._();

  @override
  DescribePrefixListsResult rebuild(
          void Function(DescribePrefixListsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribePrefixListsResultBuilder toBuilder() =>
      new DescribePrefixListsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribePrefixListsResult &&
        nextToken == other.nextToken &&
        prefixLists == other.prefixLists;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, prefixLists.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribePrefixListsResultBuilder
    implements
        Builder<DescribePrefixListsResult, DescribePrefixListsResultBuilder> {
  _$DescribePrefixListsResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i2.ListBuilder<PrefixList>? _prefixLists;
  _i2.ListBuilder<PrefixList> get prefixLists =>
      _$this._prefixLists ??= new _i2.ListBuilder<PrefixList>();
  set prefixLists(_i2.ListBuilder<PrefixList>? prefixLists) =>
      _$this._prefixLists = prefixLists;

  DescribePrefixListsResultBuilder();

  DescribePrefixListsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _prefixLists = $v.prefixLists?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribePrefixListsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribePrefixListsResult;
  }

  @override
  void update(void Function(DescribePrefixListsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribePrefixListsResult build() => _build();

  _$DescribePrefixListsResult _build() {
    _$DescribePrefixListsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribePrefixListsResult._(
              nextToken: nextToken, prefixLists: _prefixLists?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prefixLists';
        _prefixLists?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribePrefixListsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
