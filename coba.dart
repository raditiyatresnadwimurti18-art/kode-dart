import 'dart:io';

void main() {
  int uts = 0;
  int uas = 0;
  double kehadiran = 0;

  stdout.write("masukan nilai UTS: ");
  try {
    uts = int.parse(stdin.readLineSync()!);
  } catch (e) {
    print("Input UTS harus berupa angka!");
    return;
  }
  stdout.write("masukan nilai UAS: ");
  try {
    uas = int.parse(stdin.readLineSync()!);
  } catch (e) {
    print("Input UAS harus berupa angka!");
    return;
  }
  stdout.write("masukan nilai kehadiran (dalam %): ");
  try {
    kehadiran = double.parse(stdin.readLineSync()!);
  } catch (e) {
    print("Input kehadiran harus berupa angka!");
    return;
  }

  bool Luts = uts >= 60;
  bool Luas = uas >= 60;
  bool Lkehadiran = kehadiran >= 75;
  print("Nilai UTS: $uts -> ${Luts ? "Lulus" : "Tidak Lulus"}");
  print("Nilai UAS: $uas -> ${Luas ? "Lulus" : "Tidak Lulus"}");
  print("Kehadiran: $kehadiran% -> ${Lkehadiran ? "Lulus" : "Tidak Lulus"}");
  if (Luts && Luas && Lkehadiran) {
    print("Status Akhir: Lulus");
  } else {
    print("Status Akhir: Tidak Lulus");
  }
}
