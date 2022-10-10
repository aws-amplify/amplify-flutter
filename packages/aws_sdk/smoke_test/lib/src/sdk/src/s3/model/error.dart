// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'error.g.dart';

/// Container for all error elements.
abstract class Error
    with _i1.AWSEquatable<Error>
    implements Built<Error, ErrorBuilder> {
  /// Container for all error elements.
  factory Error({
    String? code,
    String? key,
    String? message,
    String? versionId,
  }) {
    return _$Error._(
      code: code,
      key: key,
      message: message,
      versionId: versionId,
    );
  }

  /// Container for all error elements.
  factory Error.build([void Function(ErrorBuilder) updates]) = _$Error;

  const Error._();

  static const List<_i2.SmithySerializer> serializers = [
    ErrorRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ErrorBuilder b) {}

  /// The error code is a string that uniquely identifies an error condition. It is meant to be read and understood by programs that detect and handle errors by type.
  ///
  /// **Amazon S3 error codes**
  ///
  /// *   *   _Code:_ AccessDenied
  ///
  ///     *   _Description:_ Access Denied
  ///
  ///     *   _HTTP Status Code:_ 403 Forbidden
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ AccountProblem
  ///
  ///     *   _Description:_ There is a problem with your Amazon Web Services account that prevents the action from completing successfully. Contact Amazon Web Services Support for further assistance.
  ///
  ///     *   _HTTP Status Code:_ 403 Forbidden
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ AllAccessDisabled
  ///
  ///     *   _Description:_ All access to this Amazon S3 resource has been disabled. Contact Amazon Web Services Support for further assistance.
  ///
  ///     *   _HTTP Status Code:_ 403 Forbidden
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ AmbiguousGrantByEmailAddress
  ///
  ///     *   _Description:_ The email address you provided is associated with more than one account.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ AuthorizationHeaderMalformed
  ///
  ///     *   _Description:_ The authorization header you provided is invalid.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _HTTP Status Code:_ N/A
  ///
  /// *   *   _Code:_ BadDigest
  ///
  ///     *   _Description:_ The Content-MD5 you specified did not match what we received.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ BucketAlreadyExists
  ///
  ///     *   _Description:_ The requested bucket name is not available. The bucket namespace is shared by all users of the system. Please select a different name and try again.
  ///
  ///     *   _HTTP Status Code:_ 409 Conflict
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ BucketAlreadyOwnedByYou
  ///
  ///     *   _Description:_ The bucket you tried to create already exists, and you own it. Amazon S3 returns this error in all Amazon Web Services Regions except in the North Virginia Region. For legacy compatibility, if you re-create an existing bucket that you already own in the North Virginia Region, Amazon S3 returns 200 OK and resets the bucket access control lists (ACLs).
  ///
  ///     *   _Code:_ 409 Conflict (in all Regions except the North Virginia Region)
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ BucketNotEmpty
  ///
  ///     *   _Description:_ The bucket you tried to delete is not empty.
  ///
  ///     *   _HTTP Status Code:_ 409 Conflict
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ CredentialsNotSupported
  ///
  ///     *   _Description:_ This request does not support credentials.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ CrossLocationLoggingProhibited
  ///
  ///     *   _Description:_ Cross-location logging not allowed. Buckets in one geographic location cannot log information to a bucket in another location.
  ///
  ///     *   _HTTP Status Code:_ 403 Forbidden
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ EntityTooSmall
  ///
  ///     *   _Description:_ Your proposed upload is smaller than the minimum allowed object size.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ EntityTooLarge
  ///
  ///     *   _Description:_ Your proposed upload exceeds the maximum allowed object size.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ ExpiredToken
  ///
  ///     *   _Description:_ The provided token has expired.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ IllegalVersioningConfigurationException
  ///
  ///     *   _Description:_ Indicates that the versioning configuration specified in the request is invalid.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ IncompleteBody
  ///
  ///     *   _Description:_ You did not provide the number of bytes specified by the Content-Length HTTP header
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ IncorrectNumberOfFilesInPostRequest
  ///
  ///     *   _Description:_ POST requires exactly one file upload per request.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InlineDataTooLarge
  ///
  ///     *   _Description:_ Inline data exceeds the maximum allowed size.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InternalError
  ///
  ///     *   _Description:_ We encountered an internal error. Please try again.
  ///
  ///     *   _HTTP Status Code:_ 500 Internal Server Error
  ///
  ///     *   _SOAP Fault Code Prefix:_ Server
  ///
  /// *   *   _Code:_ InvalidAccessKeyId
  ///
  ///     *   _Description:_ The Amazon Web Services access key ID you provided does not exist in our records.
  ///
  ///     *   _HTTP Status Code:_ 403 Forbidden
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidAddressingHeader
  ///
  ///     *   _Description:_ You must specify the Anonymous role.
  ///
  ///     *   _HTTP Status Code:_ N/A
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidArgument
  ///
  ///     *   _Description:_ Invalid Argument
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidBucketName
  ///
  ///     *   _Description:_ The specified bucket is not valid.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidBucketState
  ///
  ///     *   _Description:_ The request is not valid with the current state of the bucket.
  ///
  ///     *   _HTTP Status Code:_ 409 Conflict
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidDigest
  ///
  ///     *   _Description:_ The Content-MD5 you specified is not valid.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidEncryptionAlgorithmError
  ///
  ///     *   _Description:_ The encryption request you specified is not valid. The valid value is AES256.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidLocationConstraint
  ///
  ///     *   _Description:_ The specified location constraint is not valid. For more information about Regions, see [How to Select a Region for Your Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingBucket.html#access-bucket-intro).
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidObjectState
  ///
  ///     *   _Description:_ The action is not valid for the current state of the object.
  ///
  ///     *   _HTTP Status Code:_ 403 Forbidden
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidPart
  ///
  ///     *   _Description:_ One or more of the specified parts could not be found. The part might not have been uploaded, or the specified entity tag might not have matched the part's entity tag.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidPartOrder
  ///
  ///     *   _Description:_ The list of parts was not in ascending order. Parts list must be specified in order by part number.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidPayer
  ///
  ///     *   _Description:_ All access to this object has been disabled. Please contact Amazon Web Services Support for further assistance.
  ///
  ///     *   _HTTP Status Code:_ 403 Forbidden
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidPolicyDocument
  ///
  ///     *   _Description:_ The content of the form does not meet the conditions specified in the policy document.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidRange
  ///
  ///     *   _Description:_ The requested range cannot be satisfied.
  ///
  ///     *   _HTTP Status Code:_ 416 Requested Range Not Satisfiable
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidRequest
  ///
  ///     *   _Description:_ Please use `AWS4-HMAC-SHA256`.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _Code:_ N/A
  ///
  /// *   *   _Code:_ InvalidRequest
  ///
  ///     *   _Description:_ SOAP requests must be made over an HTTPS connection.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidRequest
  ///
  ///     *   _Description:_ Amazon S3 Transfer Acceleration is not supported for buckets with non-DNS compliant names.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _Code:_ N/A
  ///
  /// *   *   _Code:_ InvalidRequest
  ///
  ///     *   _Description:_ Amazon S3 Transfer Acceleration is not supported for buckets with periods (.) in their names.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _Code:_ N/A
  ///
  /// *   *   _Code:_ InvalidRequest
  ///
  ///     *   _Description:_ Amazon S3 Transfer Accelerate endpoint only supports virtual style requests.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _Code:_ N/A
  ///
  /// *   *   _Code:_ InvalidRequest
  ///
  ///     *   _Description:_ Amazon S3 Transfer Accelerate is not configured on this bucket.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _Code:_ N/A
  ///
  /// *   *   _Code:_ InvalidRequest
  ///
  ///     *   _Description:_ Amazon S3 Transfer Accelerate is disabled on this bucket.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _Code:_ N/A
  ///
  /// *   *   _Code:_ InvalidRequest
  ///
  ///     *   _Description:_ Amazon S3 Transfer Acceleration is not supported on this bucket. Contact Amazon Web Services Support for more information.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _Code:_ N/A
  ///
  /// *   *   _Code:_ InvalidRequest
  ///
  ///     *   _Description:_ Amazon S3 Transfer Acceleration cannot be enabled on this bucket. Contact Amazon Web Services Support for more information.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _Code:_ N/A
  ///
  /// *   *   _Code:_ InvalidSecurity
  ///
  ///     *   _Description:_ The provided security credentials are not valid.
  ///
  ///     *   _HTTP Status Code:_ 403 Forbidden
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidSOAPRequest
  ///
  ///     *   _Description:_ The SOAP request body is invalid.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidStorageClass
  ///
  ///     *   _Description:_ The storage class you specified is not valid.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidTargetBucketForLogging
  ///
  ///     *   _Description:_ The target bucket for logging does not exist, is not owned by you, or does not have the appropriate grants for the log-delivery group.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidToken
  ///
  ///     *   _Description:_ The provided token is malformed or otherwise invalid.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ InvalidURI
  ///
  ///     *   _Description:_ Couldn't parse the specified URI.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ KeyTooLongError
  ///
  ///     *   _Description:_ Your key is too long.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ MalformedACLError
  ///
  ///     *   _Description:_ The XML you provided was not well-formed or did not validate against our published schema.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ MalformedPOSTRequest
  ///
  ///     *   _Description:_ The body of your POST request is not well-formed multipart/form-data.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ MalformedXML
  ///
  ///     *   _Description:_ This happens when the user sends malformed XML (XML that doesn't conform to the published XSD) for the configuration. The error message is, "The XML you provided was not well-formed or did not validate against our published schema."
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ MaxMessageLengthExceeded
  ///
  ///     *   _Description:_ Your request was too big.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ MaxPostPreDataLengthExceededError
  ///
  ///     *   _Description:_ Your POST request fields preceding the upload file were too large.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ MetadataTooLarge
  ///
  ///     *   _Description:_ Your metadata headers exceed the maximum allowed metadata size.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ MethodNotAllowed
  ///
  ///     *   _Description:_ The specified method is not allowed against this resource.
  ///
  ///     *   _HTTP Status Code:_ 405 Method Not Allowed
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ MissingAttachment
  ///
  ///     *   _Description:_ A SOAP attachment was expected, but none were found.
  ///
  ///     *   _HTTP Status Code:_ N/A
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ MissingContentLength
  ///
  ///     *   _Description:_ You must provide the Content-Length HTTP header.
  ///
  ///     *   _HTTP Status Code:_ 411 Length Required
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ MissingRequestBodyError
  ///
  ///     *   _Description:_ This happens when the user sends an empty XML document as a request. The error message is, "Request body is empty."
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ MissingSecurityElement
  ///
  ///     *   _Description:_ The SOAP 1.1 request is missing a security element.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ MissingSecurityHeader
  ///
  ///     *   _Description:_ Your request is missing a required header.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ NoLoggingStatusForKey
  ///
  ///     *   _Description:_ There is no such thing as a logging status subresource for a key.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ NoSuchBucket
  ///
  ///     *   _Description:_ The specified bucket does not exist.
  ///
  ///     *   _HTTP Status Code:_ 404 Not Found
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ NoSuchBucketPolicy
  ///
  ///     *   _Description:_ The specified bucket does not have a bucket policy.
  ///
  ///     *   _HTTP Status Code:_ 404 Not Found
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ NoSuchKey
  ///
  ///     *   _Description:_ The specified key does not exist.
  ///
  ///     *   _HTTP Status Code:_ 404 Not Found
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ NoSuchLifecycleConfiguration
  ///
  ///     *   _Description:_ The lifecycle configuration does not exist.
  ///
  ///     *   _HTTP Status Code:_ 404 Not Found
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ NoSuchUpload
  ///
  ///     *   _Description:_ The specified multipart upload does not exist. The upload ID might be invalid, or the multipart upload might have been aborted or completed.
  ///
  ///     *   _HTTP Status Code:_ 404 Not Found
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ NoSuchVersion
  ///
  ///     *   _Description:_ Indicates that the version ID specified in the request does not match an existing version.
  ///
  ///     *   _HTTP Status Code:_ 404 Not Found
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ NotImplemented
  ///
  ///     *   _Description:_ A header you provided implies functionality that is not implemented.
  ///
  ///     *   _HTTP Status Code:_ 501 Not Implemented
  ///
  ///     *   _SOAP Fault Code Prefix:_ Server
  ///
  /// *   *   _Code:_ NotSignedUp
  ///
  ///     *   _Description:_ Your account is not signed up for the Amazon S3 service. You must sign up before you can use Amazon S3. You can sign up at the following URL: [Amazon S3](http://aws.amazon.com/s3)
  ///
  ///     *   _HTTP Status Code:_ 403 Forbidden
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ OperationAborted
  ///
  ///     *   _Description:_ A conflicting conditional action is currently in progress against this resource. Try again.
  ///
  ///     *   _HTTP Status Code:_ 409 Conflict
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ PermanentRedirect
  ///
  ///     *   _Description:_ The bucket you are attempting to access must be addressed using the specified endpoint. Send all future requests to this endpoint.
  ///
  ///     *   _HTTP Status Code:_ 301 Moved Permanently
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ PreconditionFailed
  ///
  ///     *   _Description:_ At least one of the preconditions you specified did not hold.
  ///
  ///     *   _HTTP Status Code:_ 412 Precondition Failed
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ Redirect
  ///
  ///     *   _Description:_ Temporary redirect.
  ///
  ///     *   _HTTP Status Code:_ 307 Moved Temporarily
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ RestoreAlreadyInProgress
  ///
  ///     *   _Description:_ Object restore is already in progress.
  ///
  ///     *   _HTTP Status Code:_ 409 Conflict
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ RequestIsNotMultiPartContent
  ///
  ///     *   _Description:_ Bucket POST must be of the enclosure-type multipart/form-data.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ RequestTimeout
  ///
  ///     *   _Description:_ Your socket connection to the server was not read from or written to within the timeout period.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ RequestTimeTooSkewed
  ///
  ///     *   _Description:_ The difference between the request time and the server's time is too large.
  ///
  ///     *   _HTTP Status Code:_ 403 Forbidden
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ RequestTorrentOfBucketError
  ///
  ///     *   _Description:_ Requesting the torrent file of a bucket is not permitted.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ SignatureDoesNotMatch
  ///
  ///     *   _Description:_ The request signature we calculated does not match the signature you provided. Check your Amazon Web Services secret access key and signing method. For more information, see [REST Authentication](https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html) and [SOAP Authentication](https://docs.aws.amazon.com/AmazonS3/latest/dev/SOAPAuthentication.html) for details.
  ///
  ///     *   _HTTP Status Code:_ 403 Forbidden
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ ServiceUnavailable
  ///
  ///     *   _Description:_ Reduce your request rate.
  ///
  ///     *   _HTTP Status Code:_ 503 Service Unavailable
  ///
  ///     *   _SOAP Fault Code Prefix:_ Server
  ///
  /// *   *   _Code:_ SlowDown
  ///
  ///     *   _Description:_ Reduce your request rate.
  ///
  ///     *   _HTTP Status Code:_ 503 Slow Down
  ///
  ///     *   _SOAP Fault Code Prefix:_ Server
  ///
  /// *   *   _Code:_ TemporaryRedirect
  ///
  ///     *   _Description:_ You are being redirected to the bucket while DNS updates.
  ///
  ///     *   _HTTP Status Code:_ 307 Moved Temporarily
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ TokenRefreshRequired
  ///
  ///     *   _Description:_ The provided token must be refreshed.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ TooManyBuckets
  ///
  ///     *   _Description:_ You have attempted to create more buckets than allowed.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ UnexpectedContent
  ///
  ///     *   _Description:_ This request does not support content.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ UnresolvableGrantByEmailAddress
  ///
  ///     *   _Description:_ The email address you provided does not match any account on record.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  ///
  /// *   *   _Code:_ UserKeyMustBeSpecified
  ///
  ///     *   _Description:_ The bucket POST must contain the specified field name. If it is specified, check the order of the fields.
  ///
  ///     *   _HTTP Status Code:_ 400 Bad Request
  ///
  ///     *   _SOAP Fault Code Prefix:_ Client
  String? get code;

  /// The error key.
  String? get key;

  /// The error message contains a generic description of the error condition in English. It is intended for a human audience. Simple programs display the message directly to the end user if they encounter an error condition they don't know how or don't care to handle. Sophisticated programs with more exhaustive error handling and proper internationalization are more likely to ignore the error message.
  String? get message;

  /// The version ID of the error.
  String? get versionId;
  @override
  List<Object?> get props => [
        code,
        key,
        message,
        versionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Error');
    helper.add(
      'code',
      code,
    );
    helper.add(
      'key',
      key,
    );
    helper.add(
      'message',
      message,
    );
    helper.add(
      'versionId',
      versionId,
    );
    return helper.toString();
  }
}

class ErrorRestXmlSerializer extends _i2.StructuredSmithySerializer<Error> {
  const ErrorRestXmlSerializer() : super('Error');

  @override
  Iterable<Type> get types => const [
        Error,
        _$Error,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Error deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Code':
          if (value != null) {
            result.code = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Key':
          if (value != null) {
            result.key = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Message':
          if (value != null) {
            result.message = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'VersionId':
          if (value != null) {
            result.versionId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as Error);
    final result = <Object?>[
      const _i2.XmlElementName(
        'Error',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.code != null) {
      result
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          payload.code!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.key != null) {
      result
        ..add(const _i2.XmlElementName('Key'))
        ..add(serializers.serialize(
          payload.key!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.message != null) {
      result
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.versionId != null) {
      result
        ..add(const _i2.XmlElementName('VersionId'))
        ..add(serializers.serialize(
          payload.versionId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
