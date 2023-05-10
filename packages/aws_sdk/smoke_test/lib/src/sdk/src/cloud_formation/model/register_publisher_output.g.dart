// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.register_publisher_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterPublisherOutput extends RegisterPublisherOutput {
  @override
  final String? publisherId;

  factory _$RegisterPublisherOutput(
          [void Function(RegisterPublisherOutputBuilder)? updates]) =>
      (new RegisterPublisherOutputBuilder()..update(updates))._build();

  _$RegisterPublisherOutput._({this.publisherId}) : super._();

  @override
  RegisterPublisherOutput rebuild(
          void Function(RegisterPublisherOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterPublisherOutputBuilder toBuilder() =>
      new RegisterPublisherOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterPublisherOutput && publisherId == other.publisherId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, publisherId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RegisterPublisherOutputBuilder
    implements
        Builder<RegisterPublisherOutput, RegisterPublisherOutputBuilder> {
  _$RegisterPublisherOutput? _$v;

  String? _publisherId;
  String? get publisherId => _$this._publisherId;
  set publisherId(String? publisherId) => _$this._publisherId = publisherId;

  RegisterPublisherOutputBuilder() {
    RegisterPublisherOutput._init(this);
  }

  RegisterPublisherOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publisherId = $v.publisherId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterPublisherOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterPublisherOutput;
  }

  @override
  void update(void Function(RegisterPublisherOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterPublisherOutput build() => _build();

  _$RegisterPublisherOutput _build() {
    final _$result =
        _$v ?? new _$RegisterPublisherOutput._(publisherId: publisherId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
