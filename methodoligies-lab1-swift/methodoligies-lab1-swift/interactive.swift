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
        
        if let input = readLine() {
            if let num = Int(input) {
                if questions[i] == questions[0] && num == 0 {
                    print("Error. 'a' cannot be 0. Please try again.")
                } else {
                    params.append(num)
                    i += 1
                }
            } else {
                print("Error. Expected a valid real number, got \(input) instead")
            }
        }
    }
    print(params)
    
    solveQuadratic(a: params[0], b: params[1], c: params[2])
}
