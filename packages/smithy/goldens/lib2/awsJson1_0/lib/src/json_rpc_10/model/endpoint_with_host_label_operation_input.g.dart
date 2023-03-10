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
    var _$hash = 0;
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
