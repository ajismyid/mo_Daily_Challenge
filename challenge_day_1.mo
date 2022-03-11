import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Char "mo:base/Char";

actor {
    /* Challenge 1 : Write a function add that takes two natural numbers n and m and returns the sum */

    public func add_two_nums(n1:Nat, n2:Nat): async Nat{
        return n1 + n2;
    };
    /* Challenge 2 : Write a function square that takes a natural number n and returns the area of a square of length n */

    public func square_of_num(n1:Nat): async Nat{
        return n1**2;
    };
    /* Challenge 3 : Write a function days_to_second that takes a number of days n and returns the number of seconds. */

    public func days_to_second(days:Nat): async Nat{
        return days*86400;
    };

    /*Challenge 4 : Write two functions increment_counter & clear_counter.
    - increment_counter returns the incremented value of counter by n.
    - clear_counter sets the value of counter to 0.*/

    var counter = 0;
    public func increment_counter(num:Nat): async Nat{
        counter += num;
        return counter;
    };
    public func clear_counter(): async Nat{
        counter := 0;
        return counter;
    };

    /*Challenge 5 : Write a function divide that takes two natural numbers n and m and returns a boolean indicating if n divides m.*/

    public func divide_two_nums(n:Nat, m:Nat) : async Text{
        if (m%n == 0) {
            return ("n divides m");
        } else {
            return ("n NOT divides m");
        };
    };
    
    /*Challenge 6 : Write a function is_even that takes a natural number n and returns a boolean indicating if n is even.*/

    public func is_even(n:Nat) : async Text{
        if ( n%2 == 0 ) {
            return ("n is even number");
        } else {
            return ("n is odd number");
        };
    };

    /*Challenge 7 : Write a function sum_of_array that takes an array of natural numbers and returns the sum. This function will returns 0 if the array is empty*/

    
    public func sum_of_array(array:[Nat]) : async Nat{
        var sum = 0;
        if (array == []){
            return 0;
        } else {
            for (num in array.vals()) {
                sum += num;
            };
            return sum;
        };  
    };

    /*Challenge 8 : Write a function maximum that takes an array of natural numbers and returns the maximum value in the array. This function will returns 0 if the array is empty.*/

    public func max_num_in_array(array:[Nat]) : async Nat{
        var max = 0;
        if (array == []){
            return 0;
        } else {
            for (num in array.vals()) {
                if (num >= max){
                    max := num;
                };
            };
            return max;
        };  
    };

    /*Challenge 9 : Write a function remove_from_array that takes 2 parameters : an array of natural numbers and a natural number n and returns a new array where all occurences of n have been removed (order should remain unchanged).*/

    public func remove_from_array(array:[Nat], n:Nat) : async [Nat]{
        var new_array : [Nat] = [];
        if (array == []){
            return [];
        } else {
            for (num in array.vals()) {
                if (num != n){
                    new_array := Array.append<Nat>(new_array, [num]);
                };
            };
        };  
        return (new_array);
    };

    /*Challenge 10 : Implement a function selection_sort that takes an array of natural numbers and returns the sorted array */

    private func _swap(array : [Nat], i : Nat, j : Nat) : [Nat] {
        // Transform our immutable array into a mutable one so we can modify values.
        var array_mutable = Array.thaw<Nat>(array);
        var tmp = array[i];
        array_mutable[i] := array[j];
        array_mutable[j] := tmp;
        // Transform our mutable array into an immutable array.
        return(Array.freeze<Nat>(array_mutable));
    };

    public func selection_sort(array : [Nat]) : async [Nat] {
        var sorted = array;
        let size = array.size();
        // First loop
        for(i in Iter.range(0, size - 1)){
            var index_minimum = i;
            // Second loop to determine the minimum in the sub array
            for(j in Iter.range(i, size - 1)){
                if(sorted[j] < sorted[index_minimum]){
                index_minimum := j;
                };
            };
            sorted := _swap(sorted, index_minimum, i);
        };  
        return(sorted);
    };
};
