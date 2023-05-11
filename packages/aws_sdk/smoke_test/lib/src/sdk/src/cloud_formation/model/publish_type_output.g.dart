// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.publish_type_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PublishTypeOutput extends PublishTypeOutput {
  @override
  final String? publicTypeArn;

  factory _$PublishTypeOutput(
          [void Function(PublishTypeOutputBuilder)? updates]) =>
      (new PublishTypeOutputBuilder()..update(updates))._build();

  _$PublishTypeOutput._({this.publicTypeArn}) : super._();

  @override
  PublishTypeOutput rebuild(void Function(PublishTypeOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PublishTypeOutputBuilder toBuilder() =>
      new PublishTypeOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PublishTypeOutput && publicTypeArn == other.publicTypeArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, publicTypeArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PublishTypeOutputBuilder
    implements Builder<PublishTypeOutput, PublishTypeOutputBuilder> {
  _$PublishTypeOutput? _$v;

  String? _publicTypeArn;
  String? get publicTypeArn => _$this._publicTypeArn;
  set publicTypeArn(String? publicTypeArn) =>
      _$this._publicTypeArn = publicTypeArn;

  PublishTypeOutputBuilder() {
    PublishTypeOutput._init(this);
  }

  PublishTypeOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publicTypeArn = $v.publicTypeArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PublishTypeOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PublishTypeOutput;
  }

  @override
  void update(void Function(PublishTypeOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PublishTypeOutput build() => _build();

  _$PublishTypeOutput _build() {
    final _$result =
        _$v ?? new _$PublishTypeOutput._(publicTypeArn: publicTypeArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
