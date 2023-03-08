# Rangkuman Materia Platform Widget

Rangkuman ini ditujukan agar dapat memanfaatkan widget dengan gaya berbeda pada sistem operasi Android dan iOS. <br>

<details open>
<summary>

## Material App

</summary>
Material App adalah widget dasar yang mengemas seluruh widget dalam aplikasi, widget ini digunakan di sistem operasi Android dan untuk menggunakannya kita memerlukan library dengan cara import dari package:flutter/material.dart. <br>

### Struktur <br>
Untuk widget yang akan dibuka ketika pertama kali dijalankan akan diletakkan pada bagian home. Contoh : <br>

```
MaterialApp(
    theme: ThemeData.dark(),        // Berfungsi mengatur tema di aplikasi yang dibuat
    home: const HomePage(),         // Akan mengalihkan ke halaman utama
);
```

Mengatur halaman juga bisa diterapkan dengan menggunakan routes dan initialRoute, contohnya : <br>

```
MaterialApp(
    theme: ThemeData.dark(),        // Berfungsi mengatur tema di aplikasi yang dibuat
    initialRouteL 'home',           // Route Utama
    routes: {
        'home': (_) => const HomePage(),        // Mendaftarkan halaman pada routes
    },
);
```

## Scaffold <br>
Scaffold adalah widgt dasar untuk membangun sebuah halaman pada MaterialApp. <br>

### Struktur <br>
Membentuk tata letak dasar pada sebuah halaman yang ditulis melalui properti - properti. Contoh : <br>

```
Scaffold(
    appBar: AppBar(....),       // Bar menu yang ada di bagian halaman atas
    drawer: Drawer(....),       // Menu bagian samping halaman
    body: ....,                 // Bagian utama halaman
    bottomNavigationBar: BottomNavigationBar(....),     // Menu bagian bawah halaman
);
```

</details>

<details>
<summary>

## Cupertino App

</summary>
CupertinoApp adalah widget dasar yang mengemas seluruh widget di dalam aplikasi, widget ini digunakan pada sistem iOS dan untuk menggunakan widget CupertinoApp kita harus menggunakan library dan memanggilnya dengan cara import package:flutter/cupertino.dart. <br>

### Struktur <br>
Berbeda halnya dengan theme dark yang ada di MaterialApp (Android), di iOS (CupertinoApp) kita tidak bisa menggunakan tema gelap karena di library tidak tersedia. Jadi kita harus membuat variabel sendiri untuk menyimpan tema tersebut. Contoh : <br>

```
final _themeDark = const CupertinoThemeData.raw(
    Brigthness.dark,
    null,
    null,
    null,
    null,
    null,
);
```

Lalu widget yang pertama kali dibuka sama seperti di MaterialApp yaitu terletak di properti home. Contoh : <br>

```
CupertinoApp(
    theme: _themeDark,      // Tema yang sudah dibuat di bagian atas tadi
    home: const HomePage(), // Halaman utama
);
```

## CupertinoPageScaffold <br>
CupertinoPageScaffold adalah widget dasar untuk membangun sebuah halaman pada CupertinoApp, di MaterialApp kita menggunakan Scaffold sedangkan di CupertinoApp kita menggunakan CupertinoPageScaffold. <br>

### Struktur <br>
Membentuk tata letak dasar sebuah halaman yang ditulis melalui properti - properti. Contoh : <br>

```
CupertinoPageScaffold(
    navigationBar: CupertinoNavigationBar(...),     // Bar menu bagian atas halaman
    child: ...                                      // Bagian halaman utama
);
```

</details>