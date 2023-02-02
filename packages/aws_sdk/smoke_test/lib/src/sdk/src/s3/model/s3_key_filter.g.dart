// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.s3_key_filter;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$S3KeyFilter extends S3KeyFilter {
  @override
  final _i3.BuiltList<_i2.FilterRule>? filterRules;

  factory _$S3KeyFilter([void Function(S3KeyFilterBuilder)? updates]) =>
      (new S3KeyFilterBuilder()..update(updates))._build();

  _$S3KeyFilter._({this.filterRules}) : super._();

  @override
  S3KeyFilter rebuild(void Function(S3KeyFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  S3KeyFilterBuilder toBuilder() => new S3KeyFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is S3KeyFilter && filterRules == other.filterRules;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filterRules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class S3KeyFilterBuilder implements Builder<S3KeyFilter, S3KeyFilterBuilder> {
  _$S3KeyFilter? _$v;

  _i3.ListBuilder<_i2.FilterRule>? _filterRules;
  _i3.ListBuilder<_i2.FilterRule> get filterRules =>
      _$this._filterRules ??= new _i3.ListBuilder<_i2.FilterRule>();
  set filterRules(_i3.ListBuilder<_i2.FilterRule>? filterRules) =>
      _$this._filterRules = filterRules;

  S3KeyFilterBuilder() {
    S3KeyFilter._init(this);
  }

  S3KeyFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filterRules = $v.filterRules?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(S3KeyFilter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$S3KeyFilter;
  }

  @override
  void update(void Function(S3KeyFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  S3KeyFilter build() => _build();

  _$S3KeyFilter _build() {
    _$S3KeyFilter _$result;
    try {
      _$result = _$v ?? new _$S3KeyFilter._(filterRules: _filterRules?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filterRules';
        _filterRules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'S3KeyFilter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
