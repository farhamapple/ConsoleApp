import 'dart:io';

// Parameter Mengembalikan Nilai
double luas_segiempat(double panjang, double lebar){
  double hasil;
  hasil = panjang * lebar;

  return hasil;
}

// Parameter tidak mengembalikan Nilai
void sapa_penonton(){
  print('Halo Penonton');
}

// Named Parameter ( Named Parameters )
// Gunakan {} untuk membuat optional - named parameters;
String say(String from, String message, {String to, String appName}){

  return from + " say " + message +  ((to != null) ? " to " + to : "") +  ((appName != null) ? "via " + appName: "");
}

// Optional Parameter ( Positional Parameter )
// Gunakan [] untuk membuat optional - positional parameters;
// String ( String from, String message, [String to, String appName]){ .. }
String say_postional(String from, String message, [String to, String appName]){

  return from + " say " + message +  ((to != null) ? " to " + to : "") +  ((appName != null) ? "via " + appName: "");
}

// Default Parameter Values
// Gunakan = untuk memberikan ilai default pada optional parameter. jika optional parameter tidak memberikan nilai default, maka defaultnya adalah null.
// String ( String from, String message, [String to="Somebody", String appName="chat App"]){ .. }
String say_postional_default_parameter(String from, String message, [String to, String  appName = "Whatsapp"]){

  return from + " say " + message +  ((to != null) ? " to " + to : "") +  ((appName != null) ? " via " + appName: "");
}

// Arrow Syntax / Lambda Expression / Fat Arrow Expression
// Gunakan => untuk menyingkat sebuah fungsio yang mengembalikan nilai menjadi hanya 1 baris perintah;
//Contoh:
// int add(int number_1, int number_2) => number 1 + number 2;
// Perintah yang ada di antara => dan ; hanya boleh berupa expression ( perintah/kode program yang memiliki nilai)
double luas_segiempat_arrow_function(double panjang, double lebar) => panjang * lebar;

// Function adalah First-class object
/*
- Fungsi dapat disimpan dalam sebuah variable/ identifier;
- Fungsi dapat dimasukkan sebagai parameter;
- Fungsi dapat dijadikan sebagai nilai kembalian;

  Function f;
  f = luas_segiempat;
  print(f(6.0, 3.0))
 */

// Anonymous Function
/*
fungsi yang tidak memiliki nama.

contoh:
int doMathOperation( int number1, int number2, Function mathFunction){
  return mathFunction(number1, number2);
}
 */
int doMathOperation( int number1, int number2, Function(int, int) operator){
  return operator(number1, number2);
}



void main(List<String> arguments) {

  /* Latihan
  print('Masukkan Angka Dibawah ini :');
  String input = stdin.readLineSync(); // Bilangan String
  int number = int.tryParse(input); // Tampilkan Number

  if(number > 0){
    print('positif');
  }else{
    print('negatif');
  }
  */
  //print(number);

  /* Arit Metika
  double p, l, luas;

  print('Masukkan Panjang :');
  p = double.tryParse(stdin.readLineSync());
  print('Masukkan Lebar :');
  l = double.tryParse(stdin.readLineSync());
  print('Luas adalah :');
  luas = luas_segiempat(p, l);
  print(luas);

  sapa_penonton();
   */

  // Optional Parameter
  print(say("Jony", "Hello", to: "Farham", appName: "Whatsapp"));
  print(say_postional("Jony", "Hello",  "Farham"));
  print(say_postional("Jony", "Hello",  "", "Whatsapp"));
  print(say_postional_default_parameter("Jony", "Hello",  "Farham"));

  print(luas_segiempat_arrow_function(12, 10));
  print("============================");
  Function f;
  f = luas_segiempat;
  print(f(6.0, 3.0));
  print("============================");
  print(doMathOperation(1, 2, (a, b) => a * b));
  print("============================");
  List<int> myList = [];
  List<int> list = [1, 2, 3];

  for(int index = 0; index < list.length; index += 1){
    print(list[index]);
  }
  print("============================");
  for(int bilangan in list){
    print(bilangan);
  }
  print("============================");
  list.forEach((bilangan) {
    print(bilangan);
  });

  print("============================");
  myList.add(10);
  myList.addAll(list);
  myList.insert(1, 20);
  myList.insertAll(3, [30, 40, 20]);
  // myList.remove(20);
  // myList.removeRange(1, 4);
  //myList.removeWhere((number) => number % 2 != 0);
  if(myList.contains(10)){
    print('ada No 10');
  }
  list = myList.sublist(4);
  myList.sort((a, b) => b - a);

  if(myList.every((number) => number % 2 != 0)){
    print('Semua Ganjil');
  }else{
    print('Tidak semua ganjil');
  }

  list.forEach((bilangan) {
    print(bilangan);
  });

  print("============================");
  List<int> myList2 = [1, 1, 4, 5, 6,7, 5];
  Set<int> s;
  s = myList2.toSet();

  s.forEach((bilangan) {
    print(bilangan);
  });

  print("============================");
  List<String> listString = [];

  myList2.forEach((bilangan) {
     listString.add("Angka " + bilangan.toString());
  });

  myList2.map((bilangan) => "Angka from Map : "+ bilangan.toString());

  listString.forEach((str) {
      print(str);
  });
}
