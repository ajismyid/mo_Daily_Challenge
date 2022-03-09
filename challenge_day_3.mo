import Int "mo:base/Int";
import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Char "mo:base/Char";
import Iter "mo:base/Iter";

actor {

    /*Challenge 1 : Write a private function swap that takes 3 parameters : a mutable array , an index j and an index i and returns the same array but where value at index i and index j have been swapped.*/
    
    private func _swap(array : [var Nat], i : Nat, j : Nat) : [Nat] {
        let tmp = array[i];
        array[i] := array[j];
        array[j] := tmp;
        return (Array.freeze<Nat>(array));
    };
    
    /*Challenge 2 : Write a function init_count that takes a Nat n and returns an array [Nat] where value is equal to it's corresponding index.
    Note : init_count(5) -> [0,1,2,3,4].
    Note 2 : Do not use Array.append.*/

    public func init_count(n : Nat) : async [Nat]{
        let buffer : Buffer.Buffer<Nat> = Buffer.Buffer(0);
        for (num in Iter.range(0, n)){           
            buffer.add(num);
        }; 
        return (buffer.toArray());
    };

};
