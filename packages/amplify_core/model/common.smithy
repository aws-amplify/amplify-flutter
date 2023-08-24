$version: "2"

namespace com.amazonaws.amplify.core

string AWSRegion

@documentation("A valid RFC 3986 URI")
structure Uri {
    scheme: String = "https"

    @required
    host: DomainName
    userInfo: String
    path: String = "/"
    port: Integer
    queryParameters: UriQueryParameters
    fragment: String
}

list UriList {
    member: Uri
}

map UriQueryParameters {
    key: String
    value: String
}

@documentation("The host component of a URI")
string DomainName

list StringList {
    member: String
}

integer Seconds
integer Megabytes
