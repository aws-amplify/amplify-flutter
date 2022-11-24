// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.s3.model.common_prefix;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CommonPrefix extends CommonPrefix {
  @override
  final String? prefix;

  factory _$CommonPrefix([void Function(CommonPrefixBuilder)? updates]) =>
      (new CommonPrefixBuilder()..update(updates))._build();

  _$CommonPrefix._({this.prefix}) : super._();

  @override
  CommonPrefix rebuild(void Function(CommonPrefixBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommonPrefixBuilder toBuilder() => new CommonPrefixBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommonPrefix && prefix == other.prefix;
  }

  @override
  int get hashCode {
    return $jf($jc(0, prefix.hashCode));
  }
}

class CommonPrefixBuilder
    implements Builder<CommonPrefix, CommonPrefixBuilder> {
  _$CommonPrefix? _$v;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  CommonPrefixBuilder() {
    CommonPrefix._init(this);
  }

  CommonPrefixBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prefix = $v.prefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommonPrefix other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommonPrefix;
  }

  @override
  void update(void Function(CommonPrefixBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommonPrefix build() => _build();

  _$CommonPrefix _build() {
    final _$result = _$v ?? new _$CommonPrefix._(prefix: prefix);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
