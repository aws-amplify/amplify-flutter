// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warnings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Warnings extends Warnings {
  @override
  final _i2.BuiltList<String>? unrecognizedResourceTypes;

  factory _$Warnings([void Function(WarningsBuilder)? updates]) =>
      (new WarningsBuilder()..update(updates))._build();

  _$Warnings._({this.unrecognizedResourceTypes}) : super._();

  @override
  Warnings rebuild(void Function(WarningsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WarningsBuilder toBuilder() => new WarningsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Warnings &&
        unrecognizedResourceTypes == other.unrecognizedResourceTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unrecognizedResourceTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class WarningsBuilder implements Builder<Warnings, WarningsBuilder> {
  _$Warnings? _$v;

  _i2.ListBuilder<String>? _unrecognizedResourceTypes;
  _i2.ListBuilder<String> get unrecognizedResourceTypes =>
      _$this._unrecognizedResourceTypes ??= new _i2.ListBuilder<String>();
  set unrecognizedResourceTypes(
          _i2.ListBuilder<String>? unrecognizedResourceTypes) =>
      _$this._unrecognizedResourceTypes = unrecognizedResourceTypes;

  WarningsBuilder();

  WarningsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unrecognizedResourceTypes = $v.unrecognizedResourceTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Warnings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Warnings;
  }

  @override
  void update(void Function(WarningsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Warnings build() => _build();

  _$Warnings _build() {
    _$Warnings _$result;
    try {
      _$result = _$v ??
          new _$Warnings._(
              unrecognizedResourceTypes: _unrecognizedResourceTypes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'unrecognizedResourceTypes';
        _unrecognizedResourceTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Warnings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
