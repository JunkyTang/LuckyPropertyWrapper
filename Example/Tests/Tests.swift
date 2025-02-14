import XCTest
import LuckyPropertyWrapper

class Tests: XCTestCase {
    
    @KeychainProperty(key: "com.keychain.testValue", defaultValue: nil)
    var testValue: String?
    
    
    override func setUp() {
        super.setUp()
        clearKeychain()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        clearKeychain()
        super.tearDown()
    }
    
    func clearKeychain() {
        testValue = nil
    }
    
    func testInitialValue() {
        XCTAssertEqual(testValue, nil, "Keychain should return default value if no data exists")
    }

    func testSaveAndRetrieve() {
        testValue = "Hello, Keychain!"
        XCTAssertEqual(testValue, "Hello, Keychain!", "Keychain should return stored value")
    }

    func testUpdateValue() {
        testValue = "Initial Value"
        testValue = "Updated Value"
        XCTAssertEqual(testValue, "Updated Value", "Keychain should return updated value")
    }

    func testDeleteAndRetrieveDefault() {
        
        testValue = "To be deleted"
        clearKeychain()
        XCTAssertEqual(testValue, nil, "After deletion, Keychain should return default value")
    }
    
}
