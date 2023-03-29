# Rangkuman Materi State Management Provider

<details open>
<summary>

## Pengertian State

</summary>
State adalah data yang dapat dibaca saat pembuatan sebuah widget serta dapat berubah saat widget sedang aktif. State hanya dimiliki oleh StatefulWidget saja. <br>

### Kenapa memerlukan Global State? <br>
Agar antara widget dapat memanfaatkan state yang sama dengan mudah. State daoat dibuat sebagai property dari class dan dapat digunakan pada widget saat build. Contoh : <br>

```
// Property
var number = 0;

// Build
Text('$number');
```

Cara mengubah statenya adalah dengan mengunakan method setState : <br>

```
ElevatedButton(
    child: const Text('Tambah'),
    onPressed: (){
        setState((){
            number = number + 1;
        });
    },
);
```

</details>


<details>
<summary>

## Global State

</summary>

Global state artinya state yang dapat digunakan pada seluruh widget. Untuk Provider sendiri adalah sebuah state management dan perlu diinstall agar dapat digunakan, untuk instalasinya adalah menambahkan package provider di dependencies dibagian file pubspec.yaml. Cara penggunaannya : <br>

```
class Contact with ChangeNotifier{
    List<Map<String, String>> _contacts = [];

    List<Map<String, String>> get contacts => _contacts;

    void add(Map<String, String> contact){
        _contacts.add(contact);
        notifyListener();
    }
}
```

Setelah menambahkan class dengan Change Notifier jangan lupa menambahkan MultiProvider setelah runApp di main.dart dan cara menggunakan state dari Provider adalah dengan cara menyimpan provider dalam variabel dan mengambil data dari provider melalui getter : <br>

```
final contactProvider = Provider.of<contact_store.Contact>(context);
```

</details>