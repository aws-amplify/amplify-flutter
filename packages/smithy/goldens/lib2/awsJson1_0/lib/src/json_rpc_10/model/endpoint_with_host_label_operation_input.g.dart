// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_0_v2.json_rpc_10.model.endpoint_with_host_label_operation_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EndpointWithHostLabelOperationInput
    extends EndpointWithHostLabelOperationInput {
  @override
  final String label;

  factory _$EndpointWithHostLabelOperationInput(
          [void Function(EndpointWithHostLabelOperationInputBuilder)?
              updates]) =>
      (new EndpointWithHostLabelOperationInputBuilder()..update(updates))
          ._build();

  _$EndpointWithHostLabelOperationInput._({required this.label}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        label, r'EndpointWithHostLabelOperationInput', 'label');
  }

  @override
  EndpointWithHostLabelOperationInput rebuild(
          void Function(EndpointWithHostLabelOperationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndpointWithHostLabelOperationInputBuilder toBuilder() =>
      new EndpointWithHostLabelOperationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EndpointWithHostLabelOperationInput && label == other.label;
  }

  @override
  int get hashCode {
    return $jf($jc(0, label.hashCode));
  }
}

class EndpointWithHostLabelOperationInputBuilder
    implements
        Builder<EndpointWithHostLabelOperationInput,
            EndpointWithHostLabelOperationInputBuilder> {
  _$EndpointWithHostLabelOperationInput? _$v;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  EndpointWithHostLabelOperationInputBuilder() {
    EndpointWithHostLabelOperationInput._init(this);
  }

  EndpointWithHostLabelOperationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EndpointWithHostLabelOperationInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EndpointWithHostLabelOperationInput;
  }

  @override
  void update(
      void Function(EndpointWithHostLabelOperationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EndpointWithHostLabelOperationInput build() => _build();

  _$EndpointWithHostLabelOperationInput _build() {
    final _$result = _$v ??
        new _$EndpointWithHostLabelOperationInput._(
            label: BuiltValueNullFieldError.checkNotNull(
                label, r'EndpointWithHostLabelOperationInput', 'label'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
