# Rangkuman Materi Finite State Machine

## Apa itu Finite State Machine <br>
Finite State Machine adalah mesin yang memiliki sejumlah state dan tiap state menunjukkan apa yang terjadi sebelumnya. <br>
Contohnya adaalh apabila terdapat tiga state yang menunjukkan kejadian dalam suatu proses. <br>
1. IDLE saat tidak terjadi proses. <br>
2. RUNNING saat proses sedang berjalan. <br>
3. ERROR saat proses gagal diselesaikan. <br>

Contoh Sukses : <br>
1. IDLE berubah menjadi RUNNING saat proses berjalan. <br>
2. RUNNING kembali menjadi IDLE saat proses telah selesai dilakukan. <br>

Contoh Gagal : <br>
1. IDLE berubah menjadi RUNNING saat proses berjalan. <br>
2. RUNNING kembali menjadi ERROR saat terjadi kegagalan. <br>
3. ERROR kembali menjadi IDLE. <br>

## Apa itu Unit Test <br>
1. Salah satu jenis pengujian yang ada pada perangkat lunak. <br>
2. Unit yang dimaksud umumnya adalah fungsi atau method. <br>
3. Pengujian dilakukan pada unit dalam perangkat lunak. <br>

### Tujuan Unit Test <br>
1. Memastikan fungsi dapat mengolah berbagai jenis input. <br>
2. Menjadi dokumentasi. <br>
3. Memastikan hasil dari suatu fungsi atau method sudah selesai. <br>

### Terdapat dua cara Unit Test <br>
1. Manual => Unit dijalankan dan dicek hasilnya secara manual. <br>
2. Automated => Menulis script yang dapat dijalankan berkali - kali menggunakan test runner. <br>