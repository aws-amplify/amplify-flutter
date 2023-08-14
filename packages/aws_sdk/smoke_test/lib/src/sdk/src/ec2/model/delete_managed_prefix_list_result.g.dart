// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_managed_prefix_list_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteManagedPrefixListResult extends DeleteManagedPrefixListResult {
  @override
  final ManagedPrefixList? prefixList;

  factory _$DeleteManagedPrefixListResult(
          [void Function(DeleteManagedPrefixListResultBuilder)? updates]) =>
      (new DeleteManagedPrefixListResultBuilder()..update(updates))._build();

  _$DeleteManagedPrefixListResult._({this.prefixList}) : super._();

  @override
  DeleteManagedPrefixListResult rebuild(
          void Function(DeleteManagedPrefixListResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteManagedPrefixListResultBuilder toBuilder() =>
      new DeleteManagedPrefixListResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteManagedPrefixListResult &&
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

class DeleteManagedPrefixListResultBuilder
    implements
        Builder<DeleteManagedPrefixListResult,
            DeleteManagedPrefixListResultBuilder> {
  _$DeleteManagedPrefixListResult? _$v;

  ManagedPrefixListBuilder? _prefixList;
  ManagedPrefixListBuilder get prefixList =>
      _$this._prefixList ??= new ManagedPrefixListBuilder();
  set prefixList(ManagedPrefixListBuilder? prefixList) =>
      _$this._prefixList = prefixList;

  DeleteManagedPrefixListResultBuilder();

  DeleteManagedPrefixListResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prefixList = $v.prefixList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteManagedPrefixListResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteManagedPrefixListResult;
  }

  @override
  void update(void Function(DeleteManagedPrefixListResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteManagedPrefixListResult build() => _build();

  _$DeleteManagedPrefixListResult _build() {
    _$DeleteManagedPrefixListResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteManagedPrefixListResult._(
              prefixList: _prefixList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prefixList';
        _prefixList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteManagedPrefixListResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
