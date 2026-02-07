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
  bool rata = (uts + uas) / 2 >= 70;
  bool Lkehadiran = kehadiran >= 75;
  bool lulus = rata && Lkehadiran && Luts && Luas;
  print("Nilai UTS: $uts -> ${Luts ? "Lulus" : "Tidak Lulus"}");
  print("Nilai UAS: $uas -> ${Luas ? "Lulus" : "Tidak Lulus"}");
  print("Rata-rata: ${(uts + uas) / 2} -> ${rata ? "Lulus" : "Tidak Lulus"}");
  print("Kehadiran: $kehadiran% -> ${Lkehadiran ? "Lulus" : "Tidak Lulus"}");
  print("\n");
  if (lulus) {
    print("Selamat anda lulus di semua bidang.");
  } else {
    print(
      "Salah satu nilai anda tidak memenuhi syarat kelulusan.Coba lagi semester depan.",
    );
  }
}
