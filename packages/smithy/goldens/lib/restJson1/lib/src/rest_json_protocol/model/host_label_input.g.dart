// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.host_label_input;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
