// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_managed_prefix_list_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateManagedPrefixListResult extends CreateManagedPrefixListResult {
  @override
  final ManagedPrefixList? prefixList;

  factory _$CreateManagedPrefixListResult(
          [void Function(CreateManagedPrefixListResultBuilder)? updates]) =>
      (new CreateManagedPrefixListResultBuilder()..update(updates))._build();

  _$CreateManagedPrefixListResult._({this.prefixList}) : super._();

  @override
  CreateManagedPrefixListResult rebuild(
          void Function(CreateManagedPrefixListResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateManagedPrefixListResultBuilder toBuilder() =>
      new CreateManagedPrefixListResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateManagedPrefixListResult &&
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

class CreateManagedPrefixListResultBuilder
    implements
        Builder<CreateManagedPrefixListResult,
            CreateManagedPrefixListResultBuilder> {
  _$CreateManagedPrefixListResult? _$v;

  ManagedPrefixListBuilder? _prefixList;
  ManagedPrefixListBuilder get prefixList =>
      _$this._prefixList ??= new ManagedPrefixListBuilder();
  set prefixList(ManagedPrefixListBuilder? prefixList) =>
      _$this._prefixList = prefixList;

  CreateManagedPrefixListResultBuilder();

  CreateManagedPrefixListResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prefixList = $v.prefixList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateManagedPrefixListResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateManagedPrefixListResult;
  }

  @override
  void update(void Function(CreateManagedPrefixListResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateManagedPrefixListResult build() => _build();

  _$CreateManagedPrefixListResult _build() {
    _$CreateManagedPrefixListResult _$result;
    try {
      _$result = _$v ??
          new _$CreateManagedPrefixListResult._(
              prefixList: _prefixList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prefixList';
        _prefixList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateManagedPrefixListResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
