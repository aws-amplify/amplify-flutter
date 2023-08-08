// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'struct_arg.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StructArg extends StructArg {
  @override
  final String? stringArg;
  @override
  final bool? otherArg;
  @override
  final StructArg? recursiveArg;

  factory _$StructArg([void Function(StructArgBuilder)? updates]) =>
      (new StructArgBuilder()..update(updates))._build();

  _$StructArg._({this.stringArg, this.otherArg, this.recursiveArg}) : super._();

  @override
  StructArg rebuild(void Function(StructArgBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StructArgBuilder toBuilder() => new StructArgBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StructArg &&
        stringArg == other.stringArg &&
        otherArg == other.otherArg &&
        recursiveArg == other.recursiveArg;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stringArg.hashCode);
    _$hash = $jc(_$hash, otherArg.hashCode);
    _$hash = $jc(_$hash, recursiveArg.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StructArgBuilder implements Builder<StructArg, StructArgBuilder> {
  _$StructArg? _$v;

  String? _stringArg;
  String? get stringArg => _$this._stringArg;
  set stringArg(String? stringArg) => _$this._stringArg = stringArg;

  bool? _otherArg;
  bool? get otherArg => _$this._otherArg;
  set otherArg(bool? otherArg) => _$this._otherArg = otherArg;

  StructArgBuilder? _recursiveArg;
  StructArgBuilder get recursiveArg =>
      _$this._recursiveArg ??= new StructArgBuilder();
  set recursiveArg(StructArgBuilder? recursiveArg) =>
      _$this._recursiveArg = recursiveArg;

  StructArgBuilder();

  StructArgBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stringArg = $v.stringArg;
      _otherArg = $v.otherArg;
      _recursiveArg = $v.recursiveArg?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StructArg other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StructArg;
  }

  @override
  void update(void Function(StructArgBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StructArg build() => _build();

  _$StructArg _build() {
    _$StructArg _$result;
    try {
      _$result = _$v ??
          new _$StructArg._(
              stringArg: stringArg,
              otherArg: otherArg,
              recursiveArg: _recursiveArg?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recursiveArg';
        _recursiveArg?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StructArg', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
