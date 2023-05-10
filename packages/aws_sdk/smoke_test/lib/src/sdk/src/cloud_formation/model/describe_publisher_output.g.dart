// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_publisher_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribePublisherOutput extends DescribePublisherOutput {
  @override
  final String? publisherId;
  @override
  final _i2.PublisherStatus? publisherStatus;
  @override
  final _i3.IdentityProvider? identityProvider;
  @override
  final String? publisherProfile;

  factory _$DescribePublisherOutput(
          [void Function(DescribePublisherOutputBuilder)? updates]) =>
      (new DescribePublisherOutputBuilder()..update(updates))._build();

  _$DescribePublisherOutput._(
      {this.publisherId,
      this.publisherStatus,
      this.identityProvider,
      this.publisherProfile})
      : super._();

  @override
  DescribePublisherOutput rebuild(
          void Function(DescribePublisherOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribePublisherOutputBuilder toBuilder() =>
      new DescribePublisherOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribePublisherOutput &&
        publisherId == other.publisherId &&
        publisherStatus == other.publisherStatus &&
        identityProvider == other.identityProvider &&
        publisherProfile == other.publisherProfile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, publisherId.hashCode);
    _$hash = $jc(_$hash, publisherStatus.hashCode);
    _$hash = $jc(_$hash, identityProvider.hashCode);
    _$hash = $jc(_$hash, publisherProfile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribePublisherOutputBuilder
    implements
        Builder<DescribePublisherOutput, DescribePublisherOutputBuilder> {
  _$DescribePublisherOutput? _$v;

  String? _publisherId;
  String? get publisherId => _$this._publisherId;
  set publisherId(String? publisherId) => _$this._publisherId = publisherId;

  _i2.PublisherStatus? _publisherStatus;
  _i2.PublisherStatus? get publisherStatus => _$this._publisherStatus;
  set publisherStatus(_i2.PublisherStatus? publisherStatus) =>
      _$this._publisherStatus = publisherStatus;

  _i3.IdentityProvider? _identityProvider;
  _i3.IdentityProvider? get identityProvider => _$this._identityProvider;
  set identityProvider(_i3.IdentityProvider? identityProvider) =>
      _$this._identityProvider = identityProvider;

  String? _publisherProfile;
  String? get publisherProfile => _$this._publisherProfile;
  set publisherProfile(String? publisherProfile) =>
      _$this._publisherProfile = publisherProfile;

  DescribePublisherOutputBuilder() {
    DescribePublisherOutput._init(this);
  }

  DescribePublisherOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publisherId = $v.publisherId;
      _publisherStatus = $v.publisherStatus;
      _identityProvider = $v.identityProvider;
      _publisherProfile = $v.publisherProfile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribePublisherOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribePublisherOutput;
  }

  @override
  void update(void Function(DescribePublisherOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribePublisherOutput build() => _build();

  _$DescribePublisherOutput _build() {
    final _$result = _$v ??
        new _$DescribePublisherOutput._(
            publisherId: publisherId,
            publisherStatus: publisherStatus,
            identityProvider: identityProvider,
            publisherProfile: publisherProfile);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
