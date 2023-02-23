import 'dart:io';

void PiramidaBintang() {
  // RIZKI ANDIKA SETIADI
  for (var a = 0; a <= 8; a++) {
    for (var b = 7; b >= a; b--) {
      stdout.write(" ");
    }
    for (var c = 1; c <= a; c++) {
      stdout.write("*");
    }
    for (var d = 1; d <= a - 1; d++) {
      stdout.write("*");
    }
    stdout.write("\n");
  }
}

void PolaJamPasir(int tinggiJam) {
  for (var i = 0; i <= (tinggiJam - 1); i++) {
    for (var j = 1; j <= i; j++) {
      stdout.write(" ");
    }
    for (var k = 0; k >= (i - tinggiJam + 1); k--) {
      stdout.write("0 ");
    }
    stdout.write("\n");
  }

  for (var a = 0; a < tinggiJam; a++) {
    for (var b = 1; b < tinggiJam - a; b++) {
      stdout.write(" ");
    }
    for (var b = 0; b < (a + 1); b++) {
      stdout.write("0 ");
    }
    stdout.write("\n");
  }
}

void Faktorial(int bilanganBulat) {
  double faktorial = 1;
  if (bilanganBulat < 0) {
    print("$bilanganBulat bukan Bilangan Bulat");
  } else {
    for (var i = 1; i <= bilanganBulat; i++) {
      faktorial *= i;
      faktorial.toString();
    }
    print("Faktorial dari $bilanganBulat adalah : $faktorial");
  }
}

void LuasLingkaran(int jariJari) {
  final phi = 3.14;
  double luasLingkaran = phi * jariJari * jariJari;
  print("Luas Lingakran dengan jari - jari $jariJari adalah $luasLingkaran");
}

void main(List<String> args) {
  // RIZKI ANDIKA SETIADI
  // PRIORITAS 2
  // NO 1
  print("NO 1");
  PiramidaBintang();

  // NO 2
  print("\nNO 2\n");
  PolaJamPasir(6);

  // NO 3
  print("\nNO 3");
  Faktorial(-1);
  Faktorial(10);
  Faktorial(40);
  Faktorial(50);

  // TUGAS FUNCTION
  print("\nTUGAS FUNCTION");
  LuasLingkaran(7);
  LuasLingkaran(14);
}
