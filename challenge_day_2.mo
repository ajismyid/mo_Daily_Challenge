import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Char "mo:base/Char";

actor {
    /* Challenge 1 : Write a function nat_to_nat8 that converts a Nat n to a Nat8. Make sure that your function never trap. */

    public func nat_to_nat8(n : Nat) : async Nat8 {
        if (Nat.greater(n,255)) {
            var n := 255;
        }; 
        return(Nat8.fromNat(n));
    };
    
    /*Challenge 2 : Write a function max_number_with_n_bits that takes a Nat n and returns the maximum number than can be represented with only n-bits.*/

    public func max_number_with_n_bits(n : Nat) : async Nat {
        return(2**n-1);
    };

    /*Challenge 3 : Write a function decimal_to_bits that takes a Nat n and returns a Text corresponding to the binary representation of this number.
    Note : decimal_to_bits(255) -> "11111111".*/

    public func decimal_to_bits(n:Nat) : async Nat{  
        var binary=0;
        var i=0;
        var rem=0;
        while (n!=0) {
            rem := n % 2
            binary := binary + rem * (10**i)
            q := q / 2
            i+=1
        };
        return (binary);
    };

    /*Challenge 4 : Write a function capitalize_character that takes a Char c and returns the capitalized version of it.*/

    

    /*Challenge 5 : Write a function capitalize_text that takes a Text t and returns the capitalized version of it.*/

    /*Challenge 6 : Write a function is_inside that takes two arguments : a Text t and a Char c and returns a Bool indicating if c is inside t .*/

    /*Challenge 7 : Write a function trim_whitespace that takes a text t and returns the trimmed version of t. Note : Trim means removing any leading and trailing spaces from the text : trim_whitespace(" Hello ") -> "Hello".*/

    /*Challenge 8 : Write a function duplicated_character that takes a Text t and returns the first duplicated character in t converted to Text. Note : The function should return the whole Text if there is no duplicate character : duplicated_character("Hello") -> "l" & duplicated_character("World") -> "World".*/

    /*Challenge 9 : Write a function size_in_bytes that takes Text t and returns the number of bytes this text takes when encoded as UTF-8.*/

    /*Challenge 10 :Implement a function bubble_sort that takes an array of natural numbers and returns the sorted array .*/

};
