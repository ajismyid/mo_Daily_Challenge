import Iter "mo:base/Iter";

module {
    public type List<T> = ?(T, List<T>);

    /*Challenge 7 : Write a function is_null that takes l of type List<T> and returns a boolean indicating if the list is null . Tips : Try using a switch/case.*/

    public func is_null<T>(l : List<T>) : Bool {
        switch(l) {
            case(null) return true;
            case(_) return false;
        };
    };

    /*Challenge 8 : Write a function last that takes l of type List<T> and returns the optional last element of this list.*/
    public func last<T>(list : List<T>) : ?T {
        switch(list){
            case(null) return (null);
            case(?(element, null)) return element;
            case(?(element, next_list)) return (last<T>(next_list));
        };
    };

     /*Challenge 9 : Write a function size that takes l of type List<T> and returns a Nat indicating the size of this list.
    Note : If l is null , this function will return 0.*/

    public func size<T>(list : List<T>) : Nat {
        func _size<T>(list : List<T>, n : Nat) : Nat {
            switch(list){
                case(null) return n;
                case(?(_, next_list)) return (_size<T>(next_list, n + 1));
            };
        };
        _size(list, 0);
    };

    /*Challenge 10 : Write a function get that takes two arguments : l of type List<T> and n of type Nat this function should return the optional value at rank n in the list.*/
    public func get<T>(list : List<T>, n : Nat) : ?T {
        switch(list, n){
            case(null, _) return null; // Not found
            case(?(element, next_list),0) return element;
            case(?(element, next_list), n) return get<T>(next_list, n - 1); 
        };
    };

    /*Challenge 11 : Write a function reverse that takes l of type List and returns the reversed list.*/
    public func previous<T>(l : List<T>, p : List<T>) : List<T> {
        switch(l) {
            case(null) return p;
            case(?(value, t)) return previous<T>(t, ?(value, r));
        };
    };

    public func reverse<T>(l : List<T>) : List<T> {
        return previous(l, null);
    };
}