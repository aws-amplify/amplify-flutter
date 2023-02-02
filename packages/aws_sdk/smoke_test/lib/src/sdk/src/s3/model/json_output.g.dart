// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.json_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonOutput extends JsonOutput {
  @override
  final String? recordDelimiter;

  factory _$JsonOutput([void Function(JsonOutputBuilder)? updates]) =>
      (new JsonOutputBuilder()..update(updates))._build();

  _$JsonOutput._({this.recordDelimiter}) : super._();

  @override
  JsonOutput rebuild(void Function(JsonOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonOutputBuilder toBuilder() => new JsonOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonOutput && recordDelimiter == other.recordDelimiter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, recordDelimiter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class JsonOutputBuilder implements Builder<JsonOutput, JsonOutputBuilder> {
  _$JsonOutput? _$v;

  String? _recordDelimiter;
  String? get recordDelimiter => _$this._recordDelimiter;
  set recordDelimiter(String? recordDelimiter) =>
      _$this._recordDelimiter = recordDelimiter;

  JsonOutputBuilder() {
    JsonOutput._init(this);
  }

  JsonOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _recordDelimiter = $v.recordDelimiter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonOutput;
  }

  @override
  void update(void Function(JsonOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JsonOutput build() => _build();

  _$JsonOutput _build() {
    final _$result =
        _$v ?? new _$JsonOutput._(recordDelimiter: recordDelimiter);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
