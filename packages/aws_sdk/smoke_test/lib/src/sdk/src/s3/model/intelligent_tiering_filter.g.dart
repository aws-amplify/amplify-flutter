// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.intelligent_tiering_filter;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelligentTieringFilter extends IntelligentTieringFilter {
  @override
  final String? prefix;
  @override
  final _i2.Tag? tag;
  @override
  final _i3.IntelligentTieringAndOperator? and;

  factory _$IntelligentTieringFilter(
          [void Function(IntelligentTieringFilterBuilder)? updates]) =>
      (new IntelligentTieringFilterBuilder()..update(updates))._build();

  _$IntelligentTieringFilter._({this.prefix, this.tag, this.and}) : super._();

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
        prefix == other.prefix &&
        tag == other.tag &&
        and == other.and;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, tag.hashCode);
    _$hash = $jc(_$hash, and.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IntelligentTieringFilterBuilder
    implements
        Builder<IntelligentTieringFilter, IntelligentTieringFilterBuilder> {
  _$IntelligentTieringFilter? _$v;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  _i2.TagBuilder? _tag;
  _i2.TagBuilder get tag => _$this._tag ??= new _i2.TagBuilder();
  set tag(_i2.TagBuilder? tag) => _$this._tag = tag;

  _i3.IntelligentTieringAndOperatorBuilder? _and;
  _i3.IntelligentTieringAndOperatorBuilder get and =>
      _$this._and ??= new _i3.IntelligentTieringAndOperatorBuilder();
  set and(_i3.IntelligentTieringAndOperatorBuilder? and) => _$this._and = and;

  IntelligentTieringFilterBuilder() {
    IntelligentTieringFilter._init(this);
  }

  IntelligentTieringFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prefix = $v.prefix;
      _tag = $v.tag?.toBuilder();
      _and = $v.and?.toBuilder();
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
              prefix: prefix, tag: _tag?.build(), and: _and?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tag';
        _tag?.build();
        _$failedField = 'and';
        _and?.build();
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
