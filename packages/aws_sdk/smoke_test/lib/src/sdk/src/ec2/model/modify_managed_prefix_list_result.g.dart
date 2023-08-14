// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_managed_prefix_list_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyManagedPrefixListResult extends ModifyManagedPrefixListResult {
  @override
  final ManagedPrefixList? prefixList;

  factory _$ModifyManagedPrefixListResult(
          [void Function(ModifyManagedPrefixListResultBuilder)? updates]) =>
      (new ModifyManagedPrefixListResultBuilder()..update(updates))._build();

  _$ModifyManagedPrefixListResult._({this.prefixList}) : super._();

  @override
  ModifyManagedPrefixListResult rebuild(
          void Function(ModifyManagedPrefixListResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyManagedPrefixListResultBuilder toBuilder() =>
      new ModifyManagedPrefixListResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyManagedPrefixListResult &&
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

class ModifyManagedPrefixListResultBuilder
    implements
        Builder<ModifyManagedPrefixListResult,
            ModifyManagedPrefixListResultBuilder> {
  _$ModifyManagedPrefixListResult? _$v;

  ManagedPrefixListBuilder? _prefixList;
  ManagedPrefixListBuilder get prefixList =>
      _$this._prefixList ??= new ManagedPrefixListBuilder();
  set prefixList(ManagedPrefixListBuilder? prefixList) =>
      _$this._prefixList = prefixList;

  ModifyManagedPrefixListResultBuilder();

  ModifyManagedPrefixListResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prefixList = $v.prefixList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyManagedPrefixListResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyManagedPrefixListResult;
  }

  @override
  void update(void Function(ModifyManagedPrefixListResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyManagedPrefixListResult build() => _build();

  _$ModifyManagedPrefixListResult _build() {
    _$ModifyManagedPrefixListResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyManagedPrefixListResult._(
              prefixList: _prefixList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prefixList';
        _prefixList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyManagedPrefixListResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
