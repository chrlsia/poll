import Debug "mo:base/Debug";
import Nat "mo:base/Nat";

actor Bank {
    // Public shared function with destructuring
    public shared(message) func deposit(amount : Nat) : async () {
        let { caller } = message; // Extract caller from message
        Debug.print("Caller is: " # debug_show(caller));
        Debug.print("Amount deposited: " # Nat.toText(amount));
    };

    // Test the function
    public func test() : async () {
        await deposit(100); // Call the deposit function
    };
};