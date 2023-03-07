# Rangkuman Maeri Flutter Command Line Interface (CLI) dan Flutter Package Management

<details open>
<summary>

## Flutter CLI

</summary>
Flutter CLI adalah sebuah alat yang digunakan untuk berinteraksi dengan Flutter SDK (Software Development Kit) dan perintahnya dijalankan dalam terminal. <br>
Perintah Penting yang ada di Flutter CLI <br>

###  Flutter Doctor <br>
Perintah yang digunakan untuk mendapatkan informasi tentang software apa saja yang kita butuhkan untuk menjalankan Flutter, bisa juga digunakan untuk melihat software apa saja yang belum terinstall. <br>

### Flutter Create <br>
Perintah ini digunakan untuk membuat projek di Flutter. Cara penggunaannya : <br>

```
flutter create <APP_NAME>
```

### Flutter Run <br>
Perintah yang digunakan untuk menjalankan projek Flutter di device yang tersedia. Contoh : <br>

```
flutter run <DART_FILE>
```

### Flutter Emulator <br>
Perintah ini digunakan untuk melihat emulator apa saja yang terinstall di pc kita. Contoh : <br>

```
flutter emulators
Digunakan untuk melihat daftar emulaotr yang terinstall

flutter emulators --launch <EMULATOR_ID>
Digunakan untuk menjalankan emulator

flutter emulators --create[--name namaEmulator]
Digunakan untuk membuat emulator baru
```

### Flutter Channel <br>
Berfungsi untuk melihat Flutter yang digunakan adalah Flutter yang sudah stabil atau masih beta atau master. Contoh : <br>

```
flutter channel
```

### Flutter Pub <br>
Perintah untuk mendapatkan package Flutter. <br>

```
flutter pub add <package_name>
Digunakan untuk menambahkan packages ke dependencies yang ada di pubspec.yaml

flutter pub get
Digunakan untuk mendownload semua packages atau dependencies yang ada di pubspec.yaml
```

### Flutter Build <br>
Perintah untuk membuild aplikasi dalam bentuk APK (Android), IPA(iOS), Web dan lain - lain. Fitur ini digunakan untuk keprluan deploy atau publish ke AppStore, PlayStore dan lain - lain. Contoh : <br>

```
flutter build <DIRECTORY>
flutter build apk
```

### Flutter Clean <br>
Perintah yang digunakan untuk membersihkan sampah - sampah yang tidak diperlukan di dalam projek Flutter. Flutter clean ini disarankan ketika selesai melakukan revisi pada aplikasi kita agar tidak menimbulkan bug/issue kedepannya. Contoh : <br>

```
flutter clean
```

</details>

<details>
<summary>

## Packages Management

</summary>
Flutter mendukung sharing packages dan packages management bisa menggunakan packages yang dibuat developers lain. Fitur ini dapat mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau from scratch, untuk mendapatkan packages kita bisa mengakses website pub.dev. <br>

### Bagaimana cara menambahkan packages? <br>

1. Cari package di pub.dev <br>
2. Copy baris dependencies yang ada di bagian installing <br>
3. Buka pubspec.yaml <br>
4. Paste barisnya dibawah dependencies pubspec.yaml <br>
5. Run flutter pub get di terminal <br>
6. Import package di file dart agar bisa digunakan <br>
7. Stop atau restart aplikasi jika dibutuhkan <br>

### Instalasi Flutter dan Tools <br>

#### System Requirements <br>
- Sistem opearsi Windows 7SP1 or later (64-bit) <br>
- Space kosong sebesar 1.64GB (Belum termasuk space tool lainnya) <br>
- Tools pendukung Windows Powershell 5.0 dan Git for Windows <br>
- RAM 8 GB (Rekomendasi 16 GB) <br>
- SSD 120 GB(Rekomendasi untuk menjalankan emulator Android Studio) <br>

#### Install Flutter SDK <br>
- Download Flutter SDK <br>
- Extract ZIP file hasil download di C:\src\ <br>
- Update path <br>
- Pergi ke Environment Variables <br>
- Pilih Path yang di User variables <br>
- Tambahkan lokasi flutter\bin <br>
- Tekan OK <br>
- Jalankan perintah flutter di terminal untuk mengecek apakah flutter sudah terinstall <br>
- Jalankan perintah flutter doctor di terminal <br>

Setelah menginstall Flutter, jangan lupa untuk mendownload dan menginstall SDK dari Android Studio agar bisa menjalankan emulatornya. Namun apabila tidak menggunakan emulator untuk menjalankan projeknya, bisa gunakan web browser juga.

</details>