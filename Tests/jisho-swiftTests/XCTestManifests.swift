import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(jisho_swiftTests.allTests),
    ]
}
#endif
