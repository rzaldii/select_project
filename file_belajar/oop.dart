class Car {
  String name = "Car";
  String? merk;
  double maxSpeed = 0;
  final int numberOfWheels = 4;

  //method
  void carInfo() {
    print('========= Your Car ==========');
    print('Name            : $name');
    print('Merk            : $merk');
    print('Max Speed       : $maxSpeed km/h');
    print('Number of wheel : $numberOfWheels');
    
  }

  void goingOn(String destination, double speed) {
    print('I will go to $destination, driving $merk $name with car\'s speed: $speed km/h');
  }
}

// nambah method ke kelas yg sudah ada (tanpa mengubah isinya)
extension ShowMerk on Car {

  void getMerk() {
    print('Your car\'s merk is $merk');
  }

}


/// Constructor
class Reptile {
  String? name;
  int? numberOfLegs;
  final String howToWalk = 'Crawling';

  Reptile(int numberOfLegs, [String name = 'Reptile']) {
    this.name = name;
    this.numberOfLegs = numberOfLegs;
  }

  void getInfo() {
    print('========= Reptile\'s Data =========');
    print('Name           : $name');
    print('Number of Legs : $numberOfLegs');
    print('How to walk    : $howToWalk');
  }
}


void main() {

  var car1 = Car();
  print(car1);
  // pilih atas atau bawah
  Car car2 = Car();
  print(car2);

  var car3 = Car();
  car3.name = 'Avanza';
  car3.merk = 'Toyota';
  car3.maxSpeed = 120;

  car3.carInfo();
  car3.goingOn('Roxy Square', 50);
  car3.getMerk();

  ///
  var reptile1 = Reptile(0, 'Snake');
  reptile1.getInfo();
  
  var reptile2 = Reptile(4, 'Crocodile');
  reptile2.getInfo();
}

