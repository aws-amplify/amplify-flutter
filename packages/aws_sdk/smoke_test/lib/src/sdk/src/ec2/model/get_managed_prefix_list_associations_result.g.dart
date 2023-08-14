// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_managed_prefix_list_associations_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetManagedPrefixListAssociationsResult
    extends GetManagedPrefixListAssociationsResult {
  @override
  final _i2.BuiltList<PrefixListAssociation>? prefixListAssociations;
  @override
  final String? nextToken;

  factory _$GetManagedPrefixListAssociationsResult(
          [void Function(GetManagedPrefixListAssociationsResultBuilder)?
              updates]) =>
      (new GetManagedPrefixListAssociationsResultBuilder()..update(updates))
          ._build();

  _$GetManagedPrefixListAssociationsResult._(
      {this.prefixListAssociations, this.nextToken})
      : super._();

  @override
  GetManagedPrefixListAssociationsResult rebuild(
          void Function(GetManagedPrefixListAssociationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetManagedPrefixListAssociationsResultBuilder toBuilder() =>
      new GetManagedPrefixListAssociationsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetManagedPrefixListAssociationsResult &&
        prefixListAssociations == other.prefixListAssociations &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prefixListAssociations.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetManagedPrefixListAssociationsResultBuilder
    implements
        Builder<GetManagedPrefixListAssociationsResult,
            GetManagedPrefixListAssociationsResultBuilder> {
  _$GetManagedPrefixListAssociationsResult? _$v;

  _i2.ListBuilder<PrefixListAssociation>? _prefixListAssociations;
  _i2.ListBuilder<PrefixListAssociation> get prefixListAssociations =>
      _$this._prefixListAssociations ??=
          new _i2.ListBuilder<PrefixListAssociation>();
  set prefixListAssociations(
          _i2.ListBuilder<PrefixListAssociation>? prefixListAssociations) =>
      _$this._prefixListAssociations = prefixListAssociations;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetManagedPrefixListAssociationsResultBuilder();

  GetManagedPrefixListAssociationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prefixListAssociations = $v.prefixListAssociations?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetManagedPrefixListAssociationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetManagedPrefixListAssociationsResult;
  }

  @override
  void update(
      void Function(GetManagedPrefixListAssociationsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetManagedPrefixListAssociationsResult build() => _build();

  _$GetManagedPrefixListAssociationsResult _build() {
    _$GetManagedPrefixListAssociationsResult _$result;
    try {
      _$result = _$v ??
          new _$GetManagedPrefixListAssociationsResult._(
              prefixListAssociations: _prefixListAssociations?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prefixListAssociations';
        _prefixListAssociations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetManagedPrefixListAssociationsResult',
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
