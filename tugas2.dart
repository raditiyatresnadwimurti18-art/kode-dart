
void main(){
 stdout.write("Masukan nilai UTS:");
 int nilai_uts = int.parse(stdin.readLineSync()!);
 stdout.write("Masukan nilai UAS:");
 int nilai_uas = int.parse(stdin.readLineSync()!);
 double rata_rata = (nilai_uts + nilai_uas) / 2;
 stdout.writeln("Rata-rata nilai: $rata_rata");
}