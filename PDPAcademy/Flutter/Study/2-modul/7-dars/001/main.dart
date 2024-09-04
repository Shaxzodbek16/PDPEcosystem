// Vehicle nomli klass tuzilsin. Bu klassni imkon qadar mukammal
// modellashtiring, yani fieldlariga yaxshi e’tibor berilishi kerak
// va shu klassda quyidagilar bo’lishi kerak:
//  1. generative parameterize constructor tuzilsin
//  2. truck nomli named constructor tuzilsin
//  3. bus nomli named constructor tuzilsin
//  4. sport nomli named constructor tuzilsin
//  5. car nomli named redirect constructor tuzilsin
//  6. balonlar soni va o’rindiqlar soni uchun getter/setter yozilsin
//  7. main funksiyani ichida yuqoridagi constructorlardan foydalanib
//  bir nechta objectlar hosil qiling

void main(){
  Vehicle customVehicle = Vehicle(name: 'Custom', model: 'Zero', places: 3, tyre: 4);
  Vehicle truck = Vehicle.truck(model: 'X');
  Vehicle bus = Vehicle.bus(model: 'X');
  Vehicle sport = Vehicle.sport(model: 'X');
  Vehicle car = Vehicle.car(model: 'X');
}
class Vehicle{
  String name, model;
  int places, tyre;
  Vehicle({required this.name, required this.model, required this.places, required this.tyre});

  Vehicle.truck({required this.model, this.name = 'Truck', this.places=4, this.tyre=8});
  Vehicle.bus({required this.model, this.name = 'Bus', this.places=32, this.tyre=6});
  Vehicle.sport({required this.model, this.name = 'Sport', this.places=4, this.tyre=4});
  Vehicle.car({required this.model, this.name = 'Car', this.places=4, this.tyre=4});

  set setTyre(int number){
    if (number <= 0) {
     return;
    }
    tyre = number;
  }

  int get getTyre{
    return tyre;
  }
}