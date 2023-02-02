// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.condition;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Condition extends Condition {
  @override
  final String? httpErrorCodeReturnedEquals;
  @override
  final String? keyPrefixEquals;

  factory _$Condition([void Function(ConditionBuilder)? updates]) =>
      (new ConditionBuilder()..update(updates))._build();

  _$Condition._({this.httpErrorCodeReturnedEquals, this.keyPrefixEquals})
      : super._();

  @override
  Condition rebuild(void Function(ConditionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConditionBuilder toBuilder() => new ConditionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Condition &&
        httpErrorCodeReturnedEquals == other.httpErrorCodeReturnedEquals &&
        keyPrefixEquals == other.keyPrefixEquals;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, httpErrorCodeReturnedEquals.hashCode);
    _$hash = $jc(_$hash, keyPrefixEquals.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConditionBuilder implements Builder<Condition, ConditionBuilder> {
  _$Condition? _$v;

  String? _httpErrorCodeReturnedEquals;
  String? get httpErrorCodeReturnedEquals =>
      _$this._httpErrorCodeReturnedEquals;
  set httpErrorCodeReturnedEquals(String? httpErrorCodeReturnedEquals) =>
      _$this._httpErrorCodeReturnedEquals = httpErrorCodeReturnedEquals;

  String? _keyPrefixEquals;
  String? get keyPrefixEquals => _$this._keyPrefixEquals;
  set keyPrefixEquals(String? keyPrefixEquals) =>
      _$this._keyPrefixEquals = keyPrefixEquals;

  ConditionBuilder() {
    Condition._init(this);
  }

  ConditionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _httpErrorCodeReturnedEquals = $v.httpErrorCodeReturnedEquals;
      _keyPrefixEquals = $v.keyPrefixEquals;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Condition other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Condition;
  }

  @override
  void update(void Function(ConditionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Condition build() => _build();

  _$Condition _build() {
    final _$result = _$v ??
        new _$Condition._(
            httpErrorCodeReturnedEquals: httpErrorCodeReturnedEquals,
            keyPrefixEquals: keyPrefixEquals);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
