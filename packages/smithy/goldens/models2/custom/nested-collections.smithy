$version: "2.0"

namespace com.example.custom

use smithy.test#httpRequestTests
use smithy.test#httpResponseTests

@http(method: "POST", uri: "/nestedCollections")
operation NestedCollections {
    input: NestedCollectionsInput
}

@input
structure NestedCollectionsInput {
    mapOfListOfMapOfLists:MapOfListOfMapOfLists
}

list AList {
    member: String
}

map NestedMap {
    key: String
    value: AList
}

@sparse
list NestedList {
    member: NestedMap
}

map MapOfListOfMapOfLists {
    key: String
    value: NestedList
}

