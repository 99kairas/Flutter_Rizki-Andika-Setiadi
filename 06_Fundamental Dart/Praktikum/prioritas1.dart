void main() {
  // RIZKI ANDIKA SETIADI
  // PRIORITAS 1
  print("PRIORITAS 1");
  // DEKLARASI VARIABEL
  double kelilingPersegi,
      luasPersegi,
      kelilingPersegiPanjang,
      luasPersegiPanjang,
      panjang = 15.5,
      lebar = 10,
      sisi = 5;
  // KELILING PERSEGI
  kelilingPersegi = 4 * sisi;
  print("Keliling Perseginya adalah : ${kelilingPersegi}");

  // LUAS PERSEGI
  luasPersegi = sisi * sisi;
  print("Luas Perseginya adalah : ${luasPersegi}");

  // KELILING PERSEGI PANJANG
  kelilingPersegiPanjang = 2 * (panjang + lebar);
  print("Keliling Persegi Panjangnya adalah : ${kelilingPersegiPanjang}");

  // LUAS PERSEGI PANJANG
  luasPersegiPanjang = panjang * lebar;
  print("Luas Persegi Panjangnya adalah : ${luasPersegiPanjang}");
}
