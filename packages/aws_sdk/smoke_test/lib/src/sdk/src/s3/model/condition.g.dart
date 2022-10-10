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
    return $jf($jc($jc(0, httpErrorCodeReturnedEquals.hashCode),
        keyPrefixEquals.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
