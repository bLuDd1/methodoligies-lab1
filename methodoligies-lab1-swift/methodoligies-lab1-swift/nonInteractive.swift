import Foundation

func nonInteractiveInput() {
    let filePath = CommandLine.arguments[1]

    let fileURL = URL(fileURLWithPath: filePath)

    do {
        let content = try String(contentsOf: fileURL, encoding: .utf8).trimmingCharacters(in: .newlines)
        let params = content.split(separator: " ")
            .compactMap{ Int($0) }
        
        guard params.count == 3 else {
            print("invalid file format")
            return
        }
        
        if params.first! == 0 {
            print("a can not be 0!")
        } else {
            solveQuadratic(a: params[0], b: params[1], c: params[2])
        }
    } catch {
        print("file \(filePath) does not exist")
    }
}
