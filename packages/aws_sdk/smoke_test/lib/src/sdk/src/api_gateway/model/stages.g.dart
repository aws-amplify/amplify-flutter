// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.stages;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Stages extends Stages {
  @override
  final _i3.BuiltList<_i2.Stage>? item;

  factory _$Stages([void Function(StagesBuilder)? updates]) =>
      (new StagesBuilder()..update(updates))._build();

  _$Stages._({this.item}) : super._();

  @override
  Stages rebuild(void Function(StagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StagesBuilder toBuilder() => new StagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Stages && item == other.item;
  }

  @override
  int get hashCode {
    return $jf($jc(0, item.hashCode));
  }
}

class StagesBuilder implements Builder<Stages, StagesBuilder> {
  _$Stages? _$v;

  _i3.ListBuilder<_i2.Stage>? _item;
  _i3.ListBuilder<_i2.Stage> get item =>
      _$this._item ??= new _i3.ListBuilder<_i2.Stage>();
  set item(_i3.ListBuilder<_i2.Stage>? item) => _$this._item = item;

  StagesBuilder() {
    Stages._init(this);
  }

  StagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _item = $v.item?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Stages other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Stages;
  }

  @override
  void update(void Function(StagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Stages build() => _build();

  _$Stages _build() {
    _$Stages _$result;
    try {
      _$result = _$v ?? new _$Stages._(item: _item?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'item';
        _item?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Stages', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
