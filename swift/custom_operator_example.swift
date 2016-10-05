precedencegroup A {
  higherThan: AdditionPrecedence
  lowerThan: MultiplicationPrecedence
  associativity: left
}

infix operator ~|*|~ : A
postfix operator ^^

func ~|*|~ (x: Int, y: Int) -> Int {
    return 2 * x + y
}

postfix func ^^ (x: Int) -> Int {
    return x - 2
}

assert(8^^ ~|*|~ 3 == 15)
