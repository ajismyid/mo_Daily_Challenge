import Custom "custom";

actor {

    /*Challenge 1 : Create two files called custom.mo and main.mo, 
     create your own type inside custon.mo and import it in your main.mo
     file. In main, create a public function fun that takes no argument 
     but return a value of your custom type.*/

    public func fun() : async Text{
        type Dog = Custom.Dog;
        let Roger : Dog = {
            breed = "Akita";
            character = "Guard Dog, Easily trained";
        };
        return (Roger.breed # " :: " # Roger.character);
    };
};