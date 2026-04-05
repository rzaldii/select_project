void main() {
  /// Variabel
  var age = 19; //bisa di ubah tipe datanya
  final firstName = 'Iqbal'; //immutable tapi bisa di set ulang
  const lastName = 'Rizaldi'; //immutable dan tidak bisa di set ulang

  final array1 = [2, 4, 8];
  const array2 = [2, 4, 8];

  array1[0] = 10; //bisa di ubah isinya
  // array2[0] = 10; //tidak bisa di ubah isinya


  /// Tipe data
  String nama1 = 'Iqbal';
  String nama2 = 'Rizaldi';
  var fullName = '${nama1} $nama2'; //pakai kurung kurawal boleh, tanpa kurung kurawal juga boleh
  int angka1 = 7;
  double angka2 = 7.5;
  bool isTrue = true;
  dynamic coba = 'Bisa di isi apa saja';
  coba = 10; //bisa di ubah tipe datanya
  int? coba1; //tipe data null

  print('$fullName');


  /// Konversi tipe data
  var inputString = '10';
  var inputInt = int.parse(inputString);
  var inputDouble = double.parse(inputString);

  var intToDouble = inputInt.toDouble();
  var doubleToInt = inputDouble.toInt();

  var intToString = inputInt.toString();
  var doubleToString = inputDouble.toString();


  /// Operator Logika
  /*
    ==  : sama dengan
    !=  : tidak sama dengan
    >   : lebih besar dari
    <   : lebih kecil dari
    >=  : lebih besar dari atau sama dengan
    <=  : lebih kecil dari atau sama dengan

    &&  : dan
    ||  : atau
    !   : negasi (tidak)
  */


  /// List
  List<int> numbers = [1, 2, 3, 4, 5]; //bisa palai ini
  var buah = <String>['Mangga', 'Apel', 'Pisang']; //bisa pakai ini juga
  buah.add('Jambu'); //menambah item ke list
  buah.removeAt(1); //menghapus item di index 1
  buah[2] = 'Durian'; //mengubah item di index 2
  print(buah);
  print('Jumlah buah: ${buah.length}'); //menghitung jumlah item di list


  /// Map
  var capitals = <String, String>{
    'Indonesia': 'DIY Yogyakarta',
    'Malaysia': 'Kuala Lumpur',
    'Singapura': 'Singapura'
  };

  capitals['Indonesia'] = 'Jakarta'; //menimpa
  capitals['Jepang'] = 'Tokyo';
  print('Ibu kota Jepang adalah ${capitals['Jepang']}');
  capitals.remove('Malaysia');
  print(capitals);

  /// If else
  var nilai = 75;
  var absen = 80;
  var indeksPrestasi = '';
  double ipk = 0;

  if (nilai >= 80 && absen >= 75) {
    indeksPrestasi = 'A';
    print('Indeks Prestasi = $indeksPrestasi');
  } else if (nilai >= 75 && absen >= 75) {
    indeksPrestasi = 'AB';
    print('Indeks Prestasi = $indeksPrestasi');
  } else if (nilai >= 70 && absen >= 75) {
    indeksPrestasi = 'B';
    print('Indeks Prestasi = $indeksPrestasi');
  } else if (nilai >= 65 && absen >= 75) {
    indeksPrestasi = 'BC';
    print('Indeks Prestasi = $indeksPrestasi');
  } else if (nilai >= 60 && absen >= 75) {
    indeksPrestasi = 'C';
    print('Indeks Prestasi = $indeksPrestasi');
  } else {
    indeksPrestasi = 'D';
    print('Maaf, kamu tidak lulus');
  }


  /// Switch case
  switch (indeksPrestasi) {
    case 'A':
      ipk = 4.0;
      print('IPK = $ipk');
      break;
    case 'AB':
      ipk = 3.5;
      print('IPK = $ipk');
      break;
    case 'B':
      ipk = 3.0;
      print('IPK = $ipk');
      break;
    case 'BC':
      ipk = 2.5;
      print('IPK = $ipk');
      break;
    case 'C':
      ipk = 2.0;
      print('IPK = $ipk');
      break;
    case 'D':
      ipk = 1.0;
      print('IPK = $ipk');
      break;
    default :
      print('IPK tidak ditemukan');

  }


  /// Ternary Operator (versi simpel dari if else)
  var ucapan = ipk >= 3.5 ? 'Congratss kamu lulus cumlaude' : 'Kamu lulus standard';
  print(ucapan);


  /// Default Value
  String? guest;
  var guestName = guest ?? 'Guest';


  /// For Loop
  //versi 1
  var counter = 1;
  for(; counter <= 3 ;){
    print('Ini counter ke-$counter');
    
    counter++;
  }
  //versi 2 (lebih simpel)
  for(var angka = 20; angka < 30; angka++){
    if (angka % 2 == 0){
      continue;
    }
    print('Ini angka ganjil: $angka');
  }


  /// For in
  var mobilAyah = <String>['cery', 'atoz', 'xenia', 'datsun','x-pander', 'brio', 'avanza'];
  print('Daftar mobil yg pernah dimiliki ayah:');
  for (var mobil in mobilAyah){
    print('- $mobil');
  }

  /// While Loop
  var nomor = 7;
  while(true){
    if(nomor > 12){
      break;
    } else if(nomor == 8){
      print('Dorrr');
    } else {
      print('Ini nomor ke-$nomor');
    }
    nomor++;
  }


  /// Do while loop
  var bilangan = 13;
  do {
    print('Ini bilagan ke-$bilangan');
    counter++;
  } while (bilangan <= 9);


  /// Test function
  motivationById(2);
  print(sum([5000, 8000, 12500]));
  print(factorialLoop(6));
}



/// Function
// With parameter
void motivationById(int id) {
  var listMotivation = <String>['semangatt belajar!!' ,'jangan gampang nyerah!!', 'banggain orang tua!!'];

  print('Motivasi hari ini: ${listMotivation[id]}');
}

// Return value
double sum(List<double> harga) {
  double total = 0;
  for (var value in harga){
    total += value;
  }
  return total;
}

// Factorial
int factorialLoop(int number){
  var result = 1;

  for (var i = 1; i <= number; i++){
    result *= i;
  }

  return result;
}