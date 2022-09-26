// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v2.json_protocol.model.host_label_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HostLabelInput extends HostLabelInput {
  @override
  final String label;

  factory _$HostLabelInput([void Function(HostLabelInputBuilder)? updates]) =>
      (new HostLabelInputBuilder()..update(updates))._build();

  _$HostLabelInput._({required this.label}) : super._() {
    BuiltValueNullFieldError.checkNotNull(label, r'HostLabelInput', 'label');
  }

  @override
  HostLabelInput rebuild(void Function(HostLabelInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HostLabelInputBuilder toBuilder() =>
      new HostLabelInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HostLabelInput && label == other.label;
  }

  @override
  int get hashCode {
    return $jf($jc(0, label.hashCode));
  }
}

class HostLabelInputBuilder
    implements Builder<HostLabelInput, HostLabelInputBuilder> {
  _$HostLabelInput? _$v;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  HostLabelInputBuilder() {
    HostLabelInput._init(this);
  }

  HostLabelInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HostLabelInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HostLabelInput;
  }

  @override
  void update(void Function(HostLabelInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HostLabelInput build() => _build();

  _$HostLabelInput _build() {
    final _$result = _$v ??
        new _$HostLabelInput._(
            label: BuiltValueNullFieldError.checkNotNull(
                label, r'HostLabelInput', 'label'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
