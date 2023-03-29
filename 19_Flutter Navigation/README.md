# Rangkuman Materi Flutter Navigation

<details open>
<summary>

## Apa itu Navigation

</summary>

Navigation adalah bagaimana user dapat berpindah dari halaman satu ke halaman lain. <br>

</details>

<details>
<summary>

## Navigation Dasar

</summary>

Perpindahan halaman mengggunakan Navigator.push() dan untuk kembali ke halaman sebelumnya menggunakan Navigator.pop() <br>

</details>

<details>
<summary>

## Navigation dengan Named Routes

</summary>

Setiap halaman memiliki alamat yang disebut route, untuk perpindahan halaman menggunakan Navigator.pushNamed() dan untuk kembali ke halaman sebelumnya menggunakan Navigator.pop().
Untuk menggunakan Route kita harus mendaftarkan terlebih dahulu pada MaterialApp. Cara penggunaannya : <br>

```
MaterialApp(
    // Menentukan halaman yang pertama kali dibuka
    initialRoute: '/',

    // Daftar halaman yang dapat dibuka
    routes: {
        '/': (_) => const HomeScreen(),
        '/about': (_) => const AboutScreen(),
    },
);
```

Lalu untuk perpindahan halamannya bisa menggunakan : <br>

```
ElevatedButton(
    child: Text('Go to About Page'),
    onPressed: () {
        Navigator.of(context).pushNamed('/about');
    },
);
```

Untuk mengirim data ke halaman baru diperlukan arguments tambahan seperti ini : <br>

```
// di Page lain
class AboutScreen extends StatelessWidget{
    @override
    Widget build(BuildContext context){

        final parameter = ModalRoute.of(context)!.settings.arguments as String;

        return ...;
    }

}


// di Page Utama
ElevatedButton(
    child: Text('Go to About Page'),
    onPressed: () {
        Navigator.of(context).pushNamed(
            '/about',
            arguments: 'Hore',
            );
    },
);
```

</details>