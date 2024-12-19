import java.util.ArrayList;/*imports the ArrayList class from the java.util library. creates dynamic lists that can change their size*/
/*I define a class called "Pet," which acts as a template for creating objects*/
class Pet {
    private String name;
    private String type;
    private int age;/*I defined  3 private variables for the Pet class:name, which holds the name of the pet. type, which specifies the type of the pet and age, which stores the age of the pet*/
/*I define the constructor of the Pet class, which takes parameters to initialize the object*/
    public Pet(String name, String type, int age) {
        this.name = name;
        this.type = type;
        this.age = age;/*the values of the parameters are assigned to the corresponding fields of the object using the 'this' keyword, which refers to the current object*/
    }
    public String getName() {
        return name;//I define a method called getName(), which returns the name of the pet.
    }
/*'void' means method does not return any value*/
    public void setName(String name) {
        this.name = name;/*method setName() allows changing the pet's name*/
    }
    public String getType() {
        return type;/*method getType() returns the type of the pet*/
    }
    public void setType(String type) {
        this.type = type;/*method setType() allows changing the pet's type*/
    }
    public int getAge() {
        return age;/*method getAge() returns the age of the pet*/
    }
    public void setAge(int age) {
        this.age = age;/*method setAge() allows changing the pet's age*/
    }
/*toString() method is overridden to display info in a more readable format*/
    public String toString() {
        return name + " (" + type + ", " + age + " years old)";
    }}
/*A class Adopter is defined. It represents info about a person who wants to adopt a pet*/
class Adopter {
    private String name;/*I define private variables for the adopter's name and contact info*/
    private String contact;
/*constructor for the Adopter class is defined, initializing the name and contact info*/
    public Adopter(String name, String contact) {
        this.name = name;/* Private variables*/
        this.contact = contact;/*'Adopter'represents information about a person who wants to adopt a pet*/
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getContact() {
        return contact;
    }
    public void setContact(String contact) {
        this.contact = contact;
    }}
/*class Shelter is defined. This class manages the pets in the shelter*/
class Shelter {
    private String name;
    private ArrayList<Pet> pets;

    public Shelter(String name) {
        this.name = name;
        this.pets = new ArrayList<>();/*an empty list of pets is initialized*/
    }
    public void addPet(Pet pet) {
        pets.add(pet);/*method addPet() adds a pet to the shelter's pet list.*/
    }
    public void adoptPet(Pet pet) {
        pets.remove(pet);/*method adoptPet() removes a pet from the shelter's list*/
/*method listPets() prints the list of pets available for adoption.*/    
    public void listPets() {
        if (pets.isEmpty()) {
            System.out.println("No pets available for adoption.");
        } else {
            System.out.println("Pets in " + name + ":");
            for (Pet pet : pets) {
                System.out.println(pet);
            }}}/* It checks if there are pets in the shelter:
If none, a message "No pets available for adoption" is displayed.
If there are pets, their list is printed.*/
    public String getName() {
        return name;
}}/*I created the main class `Main`.The `main()` method is defined as the entry point for the program's execution.*/
public class Main {
    public static void main(String[] args) /*extra parameters are passed after the program name and stored in the args array.*/{
        Pet pet1 = new Pet("Focaccia", "Dog", 3);
        Pet pet2 = new Pet("Rami", "Cat", 2);
        Pet pet3 = new Pet("Tostada", "Parrot", 1);/*I create three pet objects,each with a different name, type, and age*/
        Adopter adopter = new Adopter("Akerke", "123456789");/*I create an adopter object with the name "Akerke" and the contact number*/
        Shelter shelter = new Shelter("PetFinder");/*i created shelter object with the name "PetFinder"*/

        shelter.addPet(pet1);
        shelter.addPet(pet2);
        shelter.addPet(pet3);/*I add the three pets to the shelter's list of pets.*/

        shelter.listPets();/*list of all pets available for adoption in the shelter is displayed*/

        System.out.println("\nAdopter " + adopter.getName() + " adopts " + pet1.getName() + ".");
        shelter.adoptPet(pet1);/*A message is displayed saying that adopter "Akerke" is adopting the pet "Focaccia", and then the pet is removed from the shelter's list*/

        shelter.listPets();/*displays the updated list*/
    }
}
