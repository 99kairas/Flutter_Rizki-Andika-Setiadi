class Hewan {
  List<double>? beratBadan = [];

  void tambahBerat(double berat) {
    beratBadan?.add(berat);
  }
}

class Mobil {
  double kapasitasMuatan = 100; // Kapasitas maksimal
  double muatan = 0; // Mobil kosong tanpa berat hewan
  List<Hewan> daftarHewan = [];

  void tambahMuatan(Hewan hewan) {
    if (muatan + hewan.beratBadan!.reduce((value, element) => value + element) >
        kapasitasMuatan) {
      print('Tidak bisa menambah muatan lagi karena kapasitas penuh');
    } else {
      daftarHewan.add(hewan);
      muatan += hewan.beratBadan!.reduce((value, element) => value + element);
    }
  }
}

void main(List<String> args) {
  Hewan sapiJakarta = Hewan();
  Hewan kambingSurabaya = Hewan();
  sapiJakarta.tambahBerat(30);
  kambingSurabaya.tambahBerat(60);

  Mobil mobil = Mobil();
  mobil.tambahMuatan(sapiJakarta);
  mobil.tambahMuatan(kambingSurabaya);

  print('Muatan Hewan 1 : ${sapiJakarta.beratBadan}');
  print('Muatan Hewan 2 : ${kambingSurabaya.beratBadan}');
  print(mobil.muatan);
  mobil.tambahMuatan(kambingSurabaya);
}
