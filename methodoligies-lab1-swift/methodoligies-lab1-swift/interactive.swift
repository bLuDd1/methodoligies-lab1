import Foundation

func interactiveInput() {
    var params: [Int] = []
    let questions = [
        "a = ",
        "b = ",
        "c = ",
    ]
    var i = 0
    
    while i <= questions.count - 1 {
        print(questions[i], terminator: "")
        if let input = readLine(), let num = Int(input) {
            if questions[i] == questions[0] && num == 0 {
                print("a can not be 0")
                i = 0
            } else {
                params.append(num)
                i += 1
            }
        }
    }
    print(params)
    
    solveQuadratic(a: params[0], b: params[1], c: params[2])
}
