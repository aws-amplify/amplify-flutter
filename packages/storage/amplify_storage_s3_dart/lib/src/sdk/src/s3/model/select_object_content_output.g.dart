// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.select_object_content_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectObjectContentOutput extends SelectObjectContentOutput {
  @override
  final _i3.SelectObjectContentEventStream? payload;

  factory _$SelectObjectContentOutput(
          [void Function(SelectObjectContentOutputBuilder)? updates]) =>
      (new SelectObjectContentOutputBuilder()..update(updates))._build();

  _$SelectObjectContentOutput._({this.payload}) : super._();

  @override
  SelectObjectContentOutput rebuild(
          void Function(SelectObjectContentOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectObjectContentOutputBuilder toBuilder() =>
      new SelectObjectContentOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectObjectContentOutput && payload == other.payload;
  }

  @override
  int get hashCode {
    return $jf($jc(0, payload.hashCode));
  }
}

class SelectObjectContentOutputBuilder
    implements
        Builder<SelectObjectContentOutput, SelectObjectContentOutputBuilder> {
  _$SelectObjectContentOutput? _$v;

  _i3.SelectObjectContentEventStream? _payload;
  _i3.SelectObjectContentEventStream? get payload => _$this._payload;
  set payload(_i3.SelectObjectContentEventStream? payload) =>
      _$this._payload = payload;

  SelectObjectContentOutputBuilder() {
    SelectObjectContentOutput._init(this);
  }

  SelectObjectContentOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectObjectContentOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectObjectContentOutput;
  }

  @override
  void update(void Function(SelectObjectContentOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectObjectContentOutput build() => _build();

  _$SelectObjectContentOutput _build() {
    final _$result = _$v ?? new _$SelectObjectContentOutput._(payload: payload);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
