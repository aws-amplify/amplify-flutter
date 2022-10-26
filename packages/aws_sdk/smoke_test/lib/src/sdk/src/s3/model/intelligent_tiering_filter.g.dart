// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.intelligent_tiering_filter;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelligentTieringFilter extends IntelligentTieringFilter {
  @override
  final _i2.IntelligentTieringAndOperator? and;
  @override
  final String? prefix;
  @override
  final _i3.Tag? tag;

  factory _$IntelligentTieringFilter(
          [void Function(IntelligentTieringFilterBuilder)? updates]) =>
      (new IntelligentTieringFilterBuilder()..update(updates))._build();

  _$IntelligentTieringFilter._({this.and, this.prefix, this.tag}) : super._();

  @override
  IntelligentTieringFilter rebuild(
          void Function(IntelligentTieringFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntelligentTieringFilterBuilder toBuilder() =>
      new IntelligentTieringFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelligentTieringFilter &&
        and == other.and &&
        prefix == other.prefix &&
        tag == other.tag;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, and.hashCode), prefix.hashCode), tag.hashCode));
  }
}

class IntelligentTieringFilterBuilder
    implements
        Builder<IntelligentTieringFilter, IntelligentTieringFilterBuilder> {
  _$IntelligentTieringFilter? _$v;

  _i2.IntelligentTieringAndOperatorBuilder? _and;
  _i2.IntelligentTieringAndOperatorBuilder get and =>
      _$this._and ??= new _i2.IntelligentTieringAndOperatorBuilder();
  set and(_i2.IntelligentTieringAndOperatorBuilder? and) => _$this._and = and;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  _i3.TagBuilder? _tag;
  _i3.TagBuilder get tag => _$this._tag ??= new _i3.TagBuilder();
  set tag(_i3.TagBuilder? tag) => _$this._tag = tag;

  IntelligentTieringFilterBuilder() {
    IntelligentTieringFilter._init(this);
  }

  IntelligentTieringFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _and = $v.and?.toBuilder();
      _prefix = $v.prefix;
      _tag = $v.tag?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelligentTieringFilter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IntelligentTieringFilter;
  }

  @override
  void update(void Function(IntelligentTieringFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelligentTieringFilter build() => _build();

  _$IntelligentTieringFilter _build() {
    _$IntelligentTieringFilter _$result;
    try {
      _$result = _$v ??
          new _$IntelligentTieringFilter._(
              and: _and?.build(), prefix: prefix, tag: _tag?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'and';
        _and?.build();

        _$failedField = 'tag';
        _tag?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IntelligentTieringFilter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
