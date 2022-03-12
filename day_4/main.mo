import Custom "custom";
import Animal "animal";
import List "mo:base/List";
import Array "mo:base/Array";
import List "mo:base/List";

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

    /*Challenge 4 : In main.mo create a public function called create_animal_then_takes_a_break that takes two parameter : 
    a species of type Text, an number of energy point of type Nat and returns an animal. 
    This function will create a new animal based on the parameters passed and then put this animal to sleep 
    before returning it ! 💤*/
    
    public func create_animal_then_takes_a_break(species : Text, energy : Nat) : async Animal {
        let a : Animal = {
            species = species;
            energy = energy;
        };
        let energy_after_sleep : Nat = Animal.animal_sleep(a);
        var a_new_energy = energy_after_sleep;
        return (a);
    };

    /*Challenge 5 : In main.mo, import the type List from the base Library and create a list that stores animal.*/

    var animal_list : List<Animal> = null;

    /*Challenge 6 : In main.mo : create a function called push_animal that takes an animal as parameter and returns nothing 
    this function should add this animal to your list created in challenge 5. 
    Then create a second functionc called get_animals that takes no parameter but returns an Array that contains all animals stored in the list.*/

    public func push_animal(animal : Animal) {
        animal_list := List.push<Animal>(animal, animal_list);
    };

    public func get_animals() : async [Animal] {
        return List.toArray<Animal>(animal_list);
    }

}; 