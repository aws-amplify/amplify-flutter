// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_managed_prefix_list_entries_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetManagedPrefixListEntriesResult
    extends GetManagedPrefixListEntriesResult {
  @override
  final _i2.BuiltList<PrefixListEntry>? entries;
  @override
  final String? nextToken;

  factory _$GetManagedPrefixListEntriesResult(
          [void Function(GetManagedPrefixListEntriesResultBuilder)? updates]) =>
      (new GetManagedPrefixListEntriesResultBuilder()..update(updates))
          ._build();

  _$GetManagedPrefixListEntriesResult._({this.entries, this.nextToken})
      : super._();

  @override
  GetManagedPrefixListEntriesResult rebuild(
          void Function(GetManagedPrefixListEntriesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetManagedPrefixListEntriesResultBuilder toBuilder() =>
      new GetManagedPrefixListEntriesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetManagedPrefixListEntriesResult &&
        entries == other.entries &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entries.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetManagedPrefixListEntriesResultBuilder
    implements
        Builder<GetManagedPrefixListEntriesResult,
            GetManagedPrefixListEntriesResultBuilder> {
  _$GetManagedPrefixListEntriesResult? _$v;

  _i2.ListBuilder<PrefixListEntry>? _entries;
  _i2.ListBuilder<PrefixListEntry> get entries =>
      _$this._entries ??= new _i2.ListBuilder<PrefixListEntry>();
  set entries(_i2.ListBuilder<PrefixListEntry>? entries) =>
      _$this._entries = entries;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetManagedPrefixListEntriesResultBuilder();

  GetManagedPrefixListEntriesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entries = $v.entries?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetManagedPrefixListEntriesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetManagedPrefixListEntriesResult;
  }

  @override
  void update(
      void Function(GetManagedPrefixListEntriesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetManagedPrefixListEntriesResult build() => _build();

  _$GetManagedPrefixListEntriesResult _build() {
    _$GetManagedPrefixListEntriesResult _$result;
    try {
      _$result = _$v ??
          new _$GetManagedPrefixListEntriesResult._(
              entries: _entries?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entries';
        _entries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetManagedPrefixListEntriesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
