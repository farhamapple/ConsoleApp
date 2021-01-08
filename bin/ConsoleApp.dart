import 'dart:io';

void main(List<String> arguments) {
  print('Masukkan Angka Dibawah ini :');
  String input = stdin.readLineSync(); // Bilangan String
  int number = int.tryParse(input); // Tampilkan Number
  print(number);
}
