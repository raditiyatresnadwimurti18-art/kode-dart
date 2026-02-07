import 'dart:io';

void main() {
  // 1. Mengambil input nilai UTS
  stdout.write("Masukkan nilai UTS: ");
  String? inputUts = stdin.readLineSync();
  double uts = double.parse(inputUts ?? '0');

  // 2. Mengambil input nilai UAS
  stdout.write("Masukkan nilai UAS: ");
  String? inputUas = stdin.readLineSync();
  double uas = double.parse(inputUas ?? '0');

  // 3. Menghitung rata-rata
  double rataRata = (uts + uas) / 2;

  print("\nNilai UTS: $uts");
  print("Nilai UAS: $uas");
  print("Rata-rata: $rataRata");
}
