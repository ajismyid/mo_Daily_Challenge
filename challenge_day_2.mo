import Array "mo:base/Array";
import Text "mo:base/Text";
import C "mo:base/Char";

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

    public func decimals_to_bits(n : Nat) : async Text {
        var m = n;
        var bits = "";
        var remainder : Nat = 0;
        while(m > 0){
            remainder := m % 2;
            m := m / 2;
            if(remainder == 1){
                bits := "1" # bits;
            } else {
                bits := "0" # bits;
            };
        };
        return(bits)
    };
    /*Challenge 4 : Write a function capitalize_character that takes a Char c and returns the capitalized version of it.*/

    public func capitalize_character(char : Char) : async Char { 
        let unicode_value = C.toNat32(char);
        if(unicode_value >= 97 and unicode_value <= 122){
            return (C.fromNat32(unicode_value - 32));
        } else {
            return (C.fromNat32(unicode_value));
        };
    };

    /*Challenge 5 : Write a function capitalize_text that takes a Text t and returns the capitalized version of it.*/

    func _capitalize_character(char : Char) : Char {
        let unicode_value = C.toNat32(char);
        if(unicode_value >= 97 and unicode_value <= 122){
            return(C.fromNat32(unicode_value - 32))
        } else {
            return (C.fromNat32(unicode_value));
        };
    };

    public func capitalize_text(word : Text) : async Text {
        var new_word : Text = "";
        for(char in word.chars()){
            new_word #= C.toText(_capitalize_character(char));
        };
        new_word;
    };

    /*Challenge 6 : Write a function is_inside that takes two arguments : a Text t and a Char c and returns a Bool indicating if c is inside t .*/

    public func is_inside(t : Text, c : Text) : async Bool {
        let p = #text(c);
        return(Text.contains(t, p));
    };

    /*Challenge 7 : Write a function trim_whitespace that takes a text t and returns the trimmed version of t. Note : Trim means removing any leading and trailing spaces from the text : trim_whitespace(" Hello ") -> "Hello".*/

    public func trim_whitespace(t : Text) : async Text {
        let pattern = #text(" ");
        return(Text.trim(t, pattern));
    };

    /*Challenge 8 : Write a function duplicated_character that takes a Text t and returns the first duplicated character in t converted to Text. Note : The function should return the whole Text if there is no duplicate character : duplicated_character("Hello") -> "l" & duplicated_character("World") -> "World".*/

    

    /*Challenge 9 : Write a function size_in_bytes that takes Text t and returns the number of bytes this text takes when encoded as UTF-8.*/

    /*Challenge 10 :Implement a function bubble_sort that takes an array of natural numbers and returns the sorted array .*/

};
