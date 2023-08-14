// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_hosts_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyHostsResult extends ModifyHostsResult {
  @override
  final _i2.BuiltList<String>? successful;
  @override
  final _i2.BuiltList<UnsuccessfulItem>? unsuccessful;

  factory _$ModifyHostsResult(
          [void Function(ModifyHostsResultBuilder)? updates]) =>
      (new ModifyHostsResultBuilder()..update(updates))._build();

  _$ModifyHostsResult._({this.successful, this.unsuccessful}) : super._();

  @override
  ModifyHostsResult rebuild(void Function(ModifyHostsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyHostsResultBuilder toBuilder() =>
      new ModifyHostsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyHostsResult &&
        successful == other.successful &&
        unsuccessful == other.unsuccessful;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, successful.hashCode);
    _$hash = $jc(_$hash, unsuccessful.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyHostsResultBuilder
    implements Builder<ModifyHostsResult, ModifyHostsResultBuilder> {
  _$ModifyHostsResult? _$v;

  _i2.ListBuilder<String>? _successful;
  _i2.ListBuilder<String> get successful =>
      _$this._successful ??= new _i2.ListBuilder<String>();
  set successful(_i2.ListBuilder<String>? successful) =>
      _$this._successful = successful;

  _i2.ListBuilder<UnsuccessfulItem>? _unsuccessful;
  _i2.ListBuilder<UnsuccessfulItem> get unsuccessful =>
      _$this._unsuccessful ??= new _i2.ListBuilder<UnsuccessfulItem>();
  set unsuccessful(_i2.ListBuilder<UnsuccessfulItem>? unsuccessful) =>
      _$this._unsuccessful = unsuccessful;

  ModifyHostsResultBuilder();

  ModifyHostsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _successful = $v.successful?.toBuilder();
      _unsuccessful = $v.unsuccessful?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyHostsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyHostsResult;
  }

  @override
  void update(void Function(ModifyHostsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyHostsResult build() => _build();

  _$ModifyHostsResult _build() {
    _$ModifyHostsResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyHostsResult._(
              successful: _successful?.build(),
              unsuccessful: _unsuccessful?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'successful';
        _successful?.build();
        _$failedField = 'unsuccessful';
        _unsuccessful?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyHostsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
