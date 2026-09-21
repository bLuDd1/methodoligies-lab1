import Foundation

func solveQuadratic(a: Int, b: Int, c: Int) {
    let d = b * b - 4 * a * c
    print("\(a)x^2 + \(b)x + \(c) = 0")
    
    if d > 0 {
        let x1 = (-Double(b) + sqrt(Double(d))) / (2 * Double(a))
        let x2 = (-Double(b) - sqrt(Double(d))) / (2 * Double(a))
        print("x1 = \(x1), x2 = \(x2)")
    } else if d == 0 {
        let x = -Double(b) / (2 * Double(a))
        print("x = \(x)")
    } else {
        print("There are no roots.")
    }
}
