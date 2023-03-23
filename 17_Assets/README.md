# Rangkuman Materi Assets

Assets
Assets adalah file yang dibundled dan di deployed bersamaan dengan aplikasi, untuk tipe - tipe assets diantaranya ada static data (JSON files), icons, images dan font file (ttf). Untuk menentukan assets kita bisa menggunakan : <br>
1. Fluter menggunakan pubspec.yaml <br>
2. Pubspec.yaml letaknya pada root project, yang berfungsi untuk mengidentifikasi assets yang dibutuhkan aplikasi <br>
3. Gunakan karakter "/" untuk memasukkan semua assets dibawah satu directory name. Contoh : <br>

```
assets:
    - assets/my_icon.png
    - assets/background.jpg
```

atau 

```
assets:
    - assets/
```

Jadi untuk yang pertama itu terdapat di folder assets dan di dalam folder assets terdapat file yang namanya my_icon.png dan juga background.jpg. Lalu untuk yang kedua, itu hanya mengakses ke dalam folder assetsnya (lebih efektif menggunakan yang kedua). <br>

Image
Penggunaan image atau gambar akan membuat tampilan aplikasi yang dibuat menjadi lebih menarik, Flutter mendukung format gambar seperti JPEG, WebP, GIF, Animated Web/GIF, PNG, BMP dan juga WBMP. Untuk menampilkan gambar di aplikasi kita bisa dari project asset maupun dari internet. Untuk loading images dibutuhkan widget Image dan membutuhkan properti image dengan class AssetImage(). Contoh : <br>

```
body: Column(
    children: [
        Image(image: AssetImage('assets/background.jpg'),),
        Image(image: AssetImage('assets/my_icon.png'),),
    ],
),
```

Kita juga dapat meloading images dengan menggunakan method Image.asset yang mana nantinya kita bisa mendapatkan image yang sudah ditambahkan ke dalam project. Lalu menggunakan method Image.network, yang fungsinya mendapatkan data image melalui internet dengan menggunakan string urlnya. Perbedaan Image.asset akan membuat code yang kita buat menjadi clean sedangkan untuk AssetImage akan membuat project kita mudah dijalankan (CPU friendly). <br>

Font
Penggunaan font dengan style tertentu akan menjadi keunikan pada aplikasi, untuk penentuan font yang mau dipakai biasanya ditentukan oleh UI designer. Lalu penerapan font menggunakan custom font atau bisa dari package. <br>
### Custom Font <br>
1. Cari dan download font, contohnya fonts.google.com
2. Lalu cari font yang ingin digunakan, contohnya roboto atau rowdies
3. Download font family nya
4. Import file .ttf
5. Daftarkan font di pubspec.yaml : <br>

```
fonts:
    - family: Rowdies
      fonts:
        - asset: fonts/Rowdies-Bold.ttf
        - asset: fonts/Rowdies-Regular.ttf
        - asset: fonts/Rowdies-Light.ttf
```

6. Atur font sebagai default dari theme: ThemeData(fontFamily: 'Rowdies'), bisa juga digunakan di spesifik widget. <br> 

### Font dari Package <br>
1. Tambahkan package google_fonts di dependencies
2. Import package di file dart
3. Gunakan font dengan memanggil GooglFonts.namaFont(), sebelum digunakan jangan lupa untuk import package google fonts terlebih dahulu.

