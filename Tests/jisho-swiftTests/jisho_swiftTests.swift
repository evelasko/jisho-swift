import XCTest
@testable import jisho_swift

final class jisho_swiftTests: XCTestCase {
    func test_getJishoResultForSearch() throws {
        /// Load bundled Json file
        //let bundle = Bundle(for: type(of: self))
        
        guard let url = Bundle.module.url(forResource: "JishoJSONResponse", withExtension: "json") else {
            XCTFail("Missing file: JishoJSONResponse.json")
            return
        }
        /// convert JSON string to Data object
        guard let json = try? Data(contentsOf: url) else {
            XCTFail("JSON could not be converted to a Data object")
            return
        }
        do {
            /// try to parse JSON
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let result = try decoder.decode(JishoResult.self, from: json)
            
            XCTAssertGreaterThan(result.data.count, 10)
            for entry in result.data {
                XCTAssertNotNil(entry.slug)
                XCTAssertNotNil(entry.isCommon)
                XCTAssertNotNil(entry.tags)
                XCTAssertNotNil(entry.jlpt)
                XCTAssertNotNil(entry.japanese)
                XCTAssertFalse(entry.japanese.isEmpty)
                XCTAssertNotNil(entry.senses)
                XCTAssertFalse(entry.senses.isEmpty)
            }
        } catch {
            print("エラー: \(error)")
            XCTFail()
        }
    }
    
    func test_ShouldReturnJishoResultsForJLPTLevel() {
        let expectation = XCTestExpectation(
            description: "fetch proverbs from Jisho API with term search"
        )
        
        var jishoResults: JishoResult?
        
        guard let cancellable = try? Jisho.searchFor(
                JLPTLevel: 2,
                page: 1)
                .sink(
                    receiveCompletion:  {_ in print("Received completion")},
                    receiveValue: { result in
                        XCTAssertGreaterThan(result.data.count, 3)
                        for entry in result.data {
                            XCTAssertNotNil(entry.slug)
                            XCTAssertNotNil(entry.isCommon)
                            XCTAssertNotNil(entry.tags)
                            XCTAssertNotNil(entry.jlpt)
                            XCTAssertNotNil(entry.japanese)
                            XCTAssertFalse(entry.japanese.isEmpty)
                            XCTAssertNotNil(entry.senses)
                            XCTAssertFalse(entry.senses.isEmpty)
                        }
                        jishoResults = result
                        expectation.fulfill()
                    }
                )
        else {
            print("Test failed to start network request")
            XCTFail()
            return
        }
        
        XCTAssertNotNil(cancellable)
        wait(for: [expectation], timeout: 5.0)
        
        guard let jishoEntry = jishoResults?.data.first else {
            print("Test failed to save fetched Jisho results...")
            XCTFail()
            return
        }
        XCTAssertNotNil(jishoEntry)
    
    }
    
    func test_ShouldReturnJishoResultsForWanikaniLevel() {
        let expectation = XCTestExpectation(
            description: "fetch proverbs from Jisho API with term search"
        )
        
        var jishoResults: JishoResult?
        
        guard let cancellable = try? Jisho.searchFor(wanikaniLevel: 3, page: 1)
                .sink(
                    receiveCompletion:  {_ in print("Received completion")},
                    receiveValue: { result in
                        XCTAssertGreaterThan(result.data.count, 3)
                        for entry in result.data {
                            XCTAssertNotNil(entry.slug)
                            XCTAssertNotNil(entry.isCommon)
                            XCTAssertNotNil(entry.tags)
                            XCTAssertNotNil(entry.jlpt)
                            XCTAssertNotNil(entry.japanese)
                            XCTAssertFalse(entry.japanese.isEmpty)
                            XCTAssertNotNil(entry.senses)
                            XCTAssertFalse(entry.senses.isEmpty)
                        }
                        jishoResults = result
                        expectation.fulfill()
                    }
                )
        else {
            print("Test failed to start network request")
            XCTFail()
            return
        }
        
        XCTAssertNotNil(cancellable)
        wait(for: [expectation], timeout: 5.0)
        
        guard let jishoEntry = jishoResults?.data.first else {
            print("Test failed to save fetched Jisho results...")
            XCTFail()
            return
        }
        XCTAssertNotNil(jishoEntry)
    
    }
    
    func test_ShouldReturnJishoResultsForTermSearch() {
        let expectation = XCTestExpectation(
            description: "fetch proverbs from Jisho API with term search"
        )
        
        var jishoResults: JishoResult?
        
        guard let cancellable = try? Jisho.searchFor(term: .Proverb, page: 1)
                .sink(
                    receiveCompletion:  {_ in print("Received completion")},
                    receiveValue: { result in
                        XCTAssertGreaterThan(result.data.count, 10)
                        for entry in result.data {
                            XCTAssertNotNil(entry.slug)
                            XCTAssertNotNil(entry.isCommon)
                            XCTAssertNotNil(entry.tags)
                            XCTAssertNotNil(entry.jlpt)
                            XCTAssertNotNil(entry.japanese)
                            XCTAssertFalse(entry.japanese.isEmpty)
                            XCTAssertNotNil(entry.senses)
                            XCTAssertFalse(entry.senses.isEmpty)
                        }
                        jishoResults = result
                        expectation.fulfill()
                    }
                )
        else {
            print("Test failed to start network request")
            XCTFail()
            return
        }
        
        XCTAssertNotNil(cancellable)
        wait(for: [expectation], timeout: 5.0)
        
        guard let jishoEntry = jishoResults?.data.first else {
            print("Test failed to save fetched Jisho results...")
            XCTFail()
            return
        }
        XCTAssertNotNil(jishoEntry)
    }
    
    func test_FuriganaDataFetch() {
        /// Load bundled Json file
        //let bundle = Bundle(for: type(of: self))
        
        guard let url = Bundle.module.url(forResource: "JishoEntry", withExtension: "json") else {
            XCTFail("Missing file: JishoEntry.json")
            return
        }
        /// convert JSON string to Data object
        guard let json = try? Data(contentsOf: url) else {
            XCTFail("JSON could not be converted to a Data object")
            return
        }
        /// try to parse JSON
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        guard let jishoEntry = try? decoder.decode(JishoEntry.self, from: json) else {
            XCTFail("Error parsing JSON")
            return
        }
        
        let expectation2 = XCTestExpectation(description: "fetch the furigana data for a single Jisho entry")
        
        guard let cancellable = try? Jisho.getFurigana(forJishoEntry: jishoEntry)
                .sink(
                    receiveCompletion: {_ in print("Received completion")},
                    receiveValue: {
                        print($0)
                        XCTAssertNotNil($0)
                        XCTAssertTrue($0.furigana.count > 0)
                        expectation2.fulfill()
                    }
                )
        else {
            print("Test failed to start the network request")
            XCTFail()
            return
        }
        
        XCTAssertNotNil(cancellable)
        wait(for: [expectation2], timeout: 15.0)
    }
    
    static var allTests = [
        (
            "test_getJishoResultForSearch",
            test_getJishoResultForSearch
        ),
        (
            "test_ShouldReturnJishoResultsForJLPTLevel",
            test_ShouldReturnJishoResultsForJLPTLevel
        ),
        (
            "test_ShouldReturnJishoResultsForWanikaniLevel",
            test_ShouldReturnJishoResultsForWanikaniLevel
        ),
        (
            "test_ShouldReturnJishoResultsForTermSearch",
            test_ShouldReturnJishoResultsForTermSearch
        ),
        (
            "test_FuriganaDataFetch",
            test_FuriganaDataFetch
        )
    ]
}
