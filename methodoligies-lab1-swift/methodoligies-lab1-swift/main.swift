import Foundation

if CommandLine.arguments.count <= 1 {
    interactiveInput()
} else {
    nonInteractiveInput()
}
