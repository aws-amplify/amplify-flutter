// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restore_managed_prefix_list_version_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreManagedPrefixListVersionResult
    extends RestoreManagedPrefixListVersionResult {
  @override
  final ManagedPrefixList? prefixList;

  factory _$RestoreManagedPrefixListVersionResult(
          [void Function(RestoreManagedPrefixListVersionResultBuilder)?
              updates]) =>
      (new RestoreManagedPrefixListVersionResultBuilder()..update(updates))
          ._build();

  _$RestoreManagedPrefixListVersionResult._({this.prefixList}) : super._();

  @override
  RestoreManagedPrefixListVersionResult rebuild(
          void Function(RestoreManagedPrefixListVersionResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreManagedPrefixListVersionResultBuilder toBuilder() =>
      new RestoreManagedPrefixListVersionResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreManagedPrefixListVersionResult &&
        prefixList == other.prefixList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prefixList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestoreManagedPrefixListVersionResultBuilder
    implements
        Builder<RestoreManagedPrefixListVersionResult,
            RestoreManagedPrefixListVersionResultBuilder> {
  _$RestoreManagedPrefixListVersionResult? _$v;

  ManagedPrefixListBuilder? _prefixList;
  ManagedPrefixListBuilder get prefixList =>
      _$this._prefixList ??= new ManagedPrefixListBuilder();
  set prefixList(ManagedPrefixListBuilder? prefixList) =>
      _$this._prefixList = prefixList;

  RestoreManagedPrefixListVersionResultBuilder();

  RestoreManagedPrefixListVersionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prefixList = $v.prefixList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreManagedPrefixListVersionResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreManagedPrefixListVersionResult;
  }

  @override
  void update(
      void Function(RestoreManagedPrefixListVersionResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreManagedPrefixListVersionResult build() => _build();

  _$RestoreManagedPrefixListVersionResult _build() {
    _$RestoreManagedPrefixListVersionResult _$result;
    try {
      _$result = _$v ??
          new _$RestoreManagedPrefixListVersionResult._(
              prefixList: _prefixList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prefixList';
        _prefixList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RestoreManagedPrefixListVersionResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
