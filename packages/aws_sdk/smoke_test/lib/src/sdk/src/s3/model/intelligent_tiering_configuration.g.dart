// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.intelligent_tiering_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelligentTieringConfiguration
    extends IntelligentTieringConfiguration {
  @override
  final _i2.IntelligentTieringFilter? filter;
  @override
  final String id;
  @override
  final _i3.IntelligentTieringStatus status;
  @override
  final _i5.BuiltList<_i4.Tiering> tierings;

  factory _$IntelligentTieringConfiguration(
          [void Function(IntelligentTieringConfigurationBuilder)? updates]) =>
      (new IntelligentTieringConfigurationBuilder()..update(updates))._build();

  _$IntelligentTieringConfiguration._(
      {this.filter,
      required this.id,
      required this.status,
      required this.tierings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'IntelligentTieringConfiguration', 'id');
    BuiltValueNullFieldError.checkNotNull(
        status, r'IntelligentTieringConfiguration', 'status');
    BuiltValueNullFieldError.checkNotNull(
        tierings, r'IntelligentTieringConfiguration', 'tierings');
  }

  @override
  IntelligentTieringConfiguration rebuild(
          void Function(IntelligentTieringConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntelligentTieringConfigurationBuilder toBuilder() =>
      new IntelligentTieringConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelligentTieringConfiguration &&
        filter == other.filter &&
        id == other.id &&
        status == other.status &&
        tierings == other.tierings;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, filter.hashCode), id.hashCode), status.hashCode),
        tierings.hashCode));
  }
}

class IntelligentTieringConfigurationBuilder
    implements
        Builder<IntelligentTieringConfiguration,
            IntelligentTieringConfigurationBuilder> {
  _$IntelligentTieringConfiguration? _$v;

  _i2.IntelligentTieringFilterBuilder? _filter;
  _i2.IntelligentTieringFilterBuilder get filter =>
      _$this._filter ??= new _i2.IntelligentTieringFilterBuilder();
  set filter(_i2.IntelligentTieringFilterBuilder? filter) =>
      _$this._filter = filter;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i3.IntelligentTieringStatus? _status;
  _i3.IntelligentTieringStatus? get status => _$this._status;
  set status(_i3.IntelligentTieringStatus? status) => _$this._status = status;

  _i5.ListBuilder<_i4.Tiering>? _tierings;
  _i5.ListBuilder<_i4.Tiering> get tierings =>
      _$this._tierings ??= new _i5.ListBuilder<_i4.Tiering>();
  set tierings(_i5.ListBuilder<_i4.Tiering>? tierings) =>
      _$this._tierings = tierings;

  IntelligentTieringConfigurationBuilder() {
    IntelligentTieringConfiguration._init(this);
  }

  IntelligentTieringConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filter = $v.filter?.toBuilder();
      _id = $v.id;
      _status = $v.status;
      _tierings = $v.tierings.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelligentTieringConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IntelligentTieringConfiguration;
  }

  @override
  void update(void Function(IntelligentTieringConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelligentTieringConfiguration build() => _build();

  _$IntelligentTieringConfiguration _build() {
    _$IntelligentTieringConfiguration _$result;
    try {
      _$result = _$v ??
          new _$IntelligentTieringConfiguration._(
              filter: _filter?.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'IntelligentTieringConfiguration', 'id'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'IntelligentTieringConfiguration', 'status'),
              tierings: tierings.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filter';
        _filter?.build();

        _$failedField = 'tierings';
        tierings.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IntelligentTieringConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
