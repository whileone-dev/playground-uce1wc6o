import XCTest
@testable import swift_template
import FileUtils
 
class swift_templateTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(swift_template().countAllStars(galaxies: 2, 3), 5)
        XCTAssertEqual(swift_template().countAllStars(galaxies: 9, -3), 6)
    }

    override func tearDown() {
        super.tearDown()
        if Path.exists("/project/target/Sources/swift_template.swift") {
            do {
                if testRun!.failureCount > 0 {
                    print("TECHIO> message --channel Oops! Try Again π");
                    print("TECHIO> message --channel 'Hint π‘' Did you properly accumulate all stars into 'totalStars'? π€");

                } else {
                    let content = try File.read(atPath: "/project/target/Sources/swift_template.swift")
                    if content.range(of:"galaxies.reduce") != nil { 
			print("TECHIO> message --channel 'My personal Yoda, you are. π' \"* β ΒΈ .γΒΈ. :Β° βΎ Β° γΒΈ. β ΒΈ .γγΒΈ.γ:. β’ \"");
			print("TECHIO> message --channel 'My personal Yoda, you are. π' \"           γβ Β°  β ΒΈ. ΒΈ γβγ :.γ .   \"");
			print("TECHIO> message --channel 'My personal Yoda, you are. π' \"__.-._     Β° . .γγγγ.γβΎ Β° γ. *   ΒΈ .\"");
			print("TECHIO> message --channel 'My personal Yoda, you are. π' \"'-._\\7'      .γγΒ° βΎ  Β° γΒΈ.β  β .γγγ\"");
			print("TECHIO> message --channel 'My personal Yoda, you are. π' \" /'.-c    γ   * β  ΒΈ.γγΒ°     Β° γΒΈ.    \"");
			print("TECHIO> message --channel 'My personal Yoda, you are. π' \" |  /T      γγΒ°     Β° γΒΈ.     ΒΈ .γγ  \"");
			print("TECHIO> message --channel 'My personal Yoda, you are. π' \"_)_/LI\"\r\n");
                    }
                    else {
                        print("TECHIO> message --channel 'Kudos π' Good Job! Try using array.reduce")
                    }
                }
            } catch {
                print(error)
            }
        }
        
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
