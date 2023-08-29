// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allocate_hosts_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AllocateHostsResult extends AllocateHostsResult {
  @override
  final _i2.BuiltList<String>? hostIds;

  factory _$AllocateHostsResult(
          [void Function(AllocateHostsResultBuilder)? updates]) =>
      (new AllocateHostsResultBuilder()..update(updates))._build();

  _$AllocateHostsResult._({this.hostIds}) : super._();

  @override
  AllocateHostsResult rebuild(
          void Function(AllocateHostsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllocateHostsResultBuilder toBuilder() =>
      new AllocateHostsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllocateHostsResult && hostIds == other.hostIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hostIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AllocateHostsResultBuilder
    implements Builder<AllocateHostsResult, AllocateHostsResultBuilder> {
  _$AllocateHostsResult? _$v;

  _i2.ListBuilder<String>? _hostIds;
  _i2.ListBuilder<String> get hostIds =>
      _$this._hostIds ??= new _i2.ListBuilder<String>();
  set hostIds(_i2.ListBuilder<String>? hostIds) => _$this._hostIds = hostIds;

  AllocateHostsResultBuilder();

  AllocateHostsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hostIds = $v.hostIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllocateHostsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AllocateHostsResult;
  }

  @override
  void update(void Function(AllocateHostsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AllocateHostsResult build() => _build();

  _$AllocateHostsResult _build() {
    _$AllocateHostsResult _$result;
    try {
      _$result = _$v ?? new _$AllocateHostsResult._(hostIds: _hostIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hostIds';
        _hostIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AllocateHostsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
