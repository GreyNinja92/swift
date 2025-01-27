// RUN: %target-typecheck-verify-swift -enable-experimental-associated-type-inference
// RUN: %target-typecheck-verify-swift -disable-experimental-associated-type-inference

struct S<Element> {}

extension S: Sequence, IteratorProtocol {
  mutating func next() -> Element?? {
    fatalError()
  }
}

extension S: Collection {
  var startIndex: Int {
    fatalError()
  }

  var endIndex: Int {
    fatalError()
  }

  subscript(_ index: Int) -> Element? {
    fatalError()
  }

  func index(after index: Int) -> Int {
    fatalError()
  }
}

let x: S<Int>.Type = S<Int>.Iterator.self
