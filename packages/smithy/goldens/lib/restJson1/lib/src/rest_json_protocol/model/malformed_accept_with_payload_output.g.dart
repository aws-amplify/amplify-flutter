// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.malformed_accept_with_payload_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedAcceptWithPayloadOutput
    extends MalformedAcceptWithPayloadOutput {
  @override
  final _i3.Uint8List? payload;

  factory _$MalformedAcceptWithPayloadOutput(
          [void Function(MalformedAcceptWithPayloadOutputBuilder)? updates]) =>
      (new MalformedAcceptWithPayloadOutputBuilder()..update(updates))._build();

  _$MalformedAcceptWithPayloadOutput._({this.payload}) : super._();

  @override
  MalformedAcceptWithPayloadOutput rebuild(
          void Function(MalformedAcceptWithPayloadOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedAcceptWithPayloadOutputBuilder toBuilder() =>
      new MalformedAcceptWithPayloadOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedAcceptWithPayloadOutput &&
        payload == other.payload;
  }

  @override
  int get hashCode {
    return $jf($jc(0, payload.hashCode));
  }
}

class MalformedAcceptWithPayloadOutputBuilder
    implements
        Builder<MalformedAcceptWithPayloadOutput,
            MalformedAcceptWithPayloadOutputBuilder> {
  _$MalformedAcceptWithPayloadOutput? _$v;

  _i3.Uint8List? _payload;
  _i3.Uint8List? get payload => _$this._payload;
  set payload(_i3.Uint8List? payload) => _$this._payload = payload;

  MalformedAcceptWithPayloadOutputBuilder() {
    MalformedAcceptWithPayloadOutput._init(this);
  }

  MalformedAcceptWithPayloadOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedAcceptWithPayloadOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedAcceptWithPayloadOutput;
  }

  @override
  void update(void Function(MalformedAcceptWithPayloadOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedAcceptWithPayloadOutput build() => _build();

  _$MalformedAcceptWithPayloadOutput _build() {
    final _$result =
        _$v ?? new _$MalformedAcceptWithPayloadOutput._(payload: payload);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
