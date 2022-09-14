// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml.rest_xml_protocol.model.host_label_header_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HostLabelHeaderInput extends HostLabelHeaderInput {
  @override
  final String accountId;

  factory _$HostLabelHeaderInput(
          [void Function(HostLabelHeaderInputBuilder)? updates]) =>
      (new HostLabelHeaderInputBuilder()..update(updates))._build();

  _$HostLabelHeaderInput._({required this.accountId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountId, r'HostLabelHeaderInput', 'accountId');
  }

  @override
  HostLabelHeaderInput rebuild(
          void Function(HostLabelHeaderInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HostLabelHeaderInputBuilder toBuilder() =>
      new HostLabelHeaderInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HostLabelHeaderInput && accountId == other.accountId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, accountId.hashCode));
  }
}

class HostLabelHeaderInputBuilder
    implements Builder<HostLabelHeaderInput, HostLabelHeaderInputBuilder> {
  _$HostLabelHeaderInput? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  HostLabelHeaderInputBuilder() {
    HostLabelHeaderInput._init(this);
  }

  HostLabelHeaderInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HostLabelHeaderInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HostLabelHeaderInput;
  }

  @override
  void update(void Function(HostLabelHeaderInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HostLabelHeaderInput build() => _build();

  _$HostLabelHeaderInput _build() {
    final _$result = _$v ??
        new _$HostLabelHeaderInput._(
            accountId: BuiltValueNullFieldError.checkNotNull(
                accountId, r'HostLabelHeaderInput', 'accountId'));
    replace(_$result);
    return _$result;
  }
}

class _$HostLabelHeaderInputPayload extends HostLabelHeaderInputPayload {
  factory _$HostLabelHeaderInputPayload(
          [void Function(HostLabelHeaderInputPayloadBuilder)? updates]) =>
      (new HostLabelHeaderInputPayloadBuilder()..update(updates))._build();

  _$HostLabelHeaderInputPayload._() : super._();

  @override
  HostLabelHeaderInputPayload rebuild(
          void Function(HostLabelHeaderInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HostLabelHeaderInputPayloadBuilder toBuilder() =>
      new HostLabelHeaderInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HostLabelHeaderInputPayload;
  }

  @override
  int get hashCode {
    return 827052485;
  }
}

class HostLabelHeaderInputPayloadBuilder
    implements
        Builder<HostLabelHeaderInputPayload,
            HostLabelHeaderInputPayloadBuilder> {
  _$HostLabelHeaderInputPayload? _$v;

  HostLabelHeaderInputPayloadBuilder() {
    HostLabelHeaderInputPayload._init(this);
  }

  @override
  void replace(HostLabelHeaderInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HostLabelHeaderInputPayload;
  }

  @override
  void update(void Function(HostLabelHeaderInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HostLabelHeaderInputPayload build() => _build();

  _$HostLabelHeaderInputPayload _build() {
    final _$result = _$v ?? new _$HostLabelHeaderInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
