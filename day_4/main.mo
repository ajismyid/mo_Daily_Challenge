import Custom "custom";
import Animal "animal";

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
    /*Challenge 2 : Create a new file called animal.mo with at least 2 property (specie of type Text, energy of type Nat), 
    import this type in your main.mo and create a variable that will store an animal.*/

    public type Animal = Animal.Animal;
    let Draco : Animal = {
        species = "Dragon";
        energy = 1000;
    };
    /*Challenge 3 : In animal.mo create a public function called animal_sleep that takes an Animal and returns the same Animal 
    where the field energy has been increased by 10. 
    Note : As this is a public function of a module, you don't need to make the return type Async !*/
    // Answer on file animal.mo

    


};