import List "mo:base/List";
actor {
  public func doubleNumbers(numbers : List.List<Int>) : async List.List<Int> {
    return List.map<Int, Int>(numbers, func(n) {n * 4})
  }
}