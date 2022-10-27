// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.time_tolive_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeToliveDescription extends TimeToliveDescription {
  @override
  final String? attributeName;
  @override
  final _i2.TimeToliveStatus? timeToliveStatus;

  factory _$TimeToliveDescription(
          [void Function(TimeToliveDescriptionBuilder)? updates]) =>
      (new TimeToliveDescriptionBuilder()..update(updates))._build();

  _$TimeToliveDescription._({this.attributeName, this.timeToliveStatus})
      : super._();

  @override
  TimeToliveDescription rebuild(
          void Function(TimeToliveDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeToliveDescriptionBuilder toBuilder() =>
      new TimeToliveDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeToliveDescription &&
        attributeName == other.attributeName &&
        timeToliveStatus == other.timeToliveStatus;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, attributeName.hashCode), timeToliveStatus.hashCode));
  }
}

class TimeToliveDescriptionBuilder
    implements Builder<TimeToliveDescription, TimeToliveDescriptionBuilder> {
  _$TimeToliveDescription? _$v;

  String? _attributeName;
  String? get attributeName => _$this._attributeName;
  set attributeName(String? attributeName) =>
      _$this._attributeName = attributeName;

  _i2.TimeToliveStatus? _timeToliveStatus;
  _i2.TimeToliveStatus? get timeToliveStatus => _$this._timeToliveStatus;
  set timeToliveStatus(_i2.TimeToliveStatus? timeToliveStatus) =>
      _$this._timeToliveStatus = timeToliveStatus;

  TimeToliveDescriptionBuilder() {
    TimeToliveDescription._init(this);
  }

  TimeToliveDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeName = $v.attributeName;
      _timeToliveStatus = $v.timeToliveStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeToliveDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimeToliveDescription;
  }

  @override
  void update(void Function(TimeToliveDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeToliveDescription build() => _build();

  _$TimeToliveDescription _build() {
    final _$result = _$v ??
        new _$TimeToliveDescription._(
            attributeName: attributeName, timeToliveStatus: timeToliveStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
