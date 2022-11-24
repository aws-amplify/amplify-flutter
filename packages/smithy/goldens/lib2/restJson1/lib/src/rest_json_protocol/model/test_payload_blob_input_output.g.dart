// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.test_payload_blob_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestPayloadBlobInputOutput extends TestPayloadBlobInputOutput {
  @override
  final String? contentType;
  @override
  final _i2.Uint8List? data;

  factory _$TestPayloadBlobInputOutput(
          [void Function(TestPayloadBlobInputOutputBuilder)? updates]) =>
      (new TestPayloadBlobInputOutputBuilder()..update(updates))._build();

  _$TestPayloadBlobInputOutput._({this.contentType, this.data}) : super._();

  @override
  TestPayloadBlobInputOutput rebuild(
          void Function(TestPayloadBlobInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestPayloadBlobInputOutputBuilder toBuilder() =>
      new TestPayloadBlobInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestPayloadBlobInputOutput &&
        contentType == other.contentType &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, contentType.hashCode), data.hashCode));
  }
}

class TestPayloadBlobInputOutputBuilder
    implements
        Builder<TestPayloadBlobInputOutput, TestPayloadBlobInputOutputBuilder> {
  _$TestPayloadBlobInputOutput? _$v;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  _i2.Uint8List? _data;
  _i2.Uint8List? get data => _$this._data;
  set data(_i2.Uint8List? data) => _$this._data = data;

  TestPayloadBlobInputOutputBuilder() {
    TestPayloadBlobInputOutput._init(this);
  }

  TestPayloadBlobInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contentType = $v.contentType;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestPayloadBlobInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestPayloadBlobInputOutput;
  }

  @override
  void update(void Function(TestPayloadBlobInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestPayloadBlobInputOutput build() => _build();

  _$TestPayloadBlobInputOutput _build() {
    final _$result = _$v ??
        new _$TestPayloadBlobInputOutput._(
            contentType: contentType, data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
