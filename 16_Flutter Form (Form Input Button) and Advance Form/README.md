# Rangkuman Materi Flutter Form dan Advance Form

<details open>
<summary>

## Form

</summary>
Form digunakan untuk menerima isian data dari pengguna dan isian data yang diisi dapat lebih dari satu data. Untuk membuat Form harus menggunakan StatefulWidget dan keadaan form akan disimpan menggunakan GlobalKey<FormState>. Contoh penggunaannya : <br>

```
// Property
var formKey = Globalkey<FormState>();

// Method Build
Form(
    key: formKey,
    child: inputWidgets,
);
```

</details>

<details>
<summary>

## Input

</summary>

### TextField <br>

Textfield biasanya menerima isian data dari pengguna dan isian data dapat lebih dari satu. Untuk membuat TextField kita harus menggunakan TextEditingController karena datanya akan diambil dari sana dan isian data berupa teks. Contoh penggunaannya : <br>

```
var inputController = TextEditingController();

TextField(
    controller: inputController,
);
```

### Radio <br>
Radio adalah input yang dapat memberi opsi kepada pengguna dan pengguna hanya dapat memilih satu opsi saja. Dalam membuat radio, kita harus menggunakan properti dengan tipe data yang sesuai dengan value pada radio dan fungsinya akan berubah ketika onChanged dipanggil. Contoh penggunaannya adalah : <br>

```
// Property
var radioValue = '';

// Method Build
Radio<String>(
    value: 'Laki - Laki',
    groupValue: radioValue,
    onChanged: (String? value){
        setState((){
            radioValue = value ?? '';
            },
        );
        title: 'Laki - Laki',
    },
);
```

### Checkbox <br>
Widget checkbox dapat memberi opsi/pilihan kepada pengguna dan pengguna dapat memilih beberapa opsi. Ketika membuat checkbox kita membutuhkan properti bertipe data boolean, untuk penggunannya adalah : <br>

```
//Properti
var checkValue = false;

// Build
Checkbox(
    value: checkValue,
    onChanged: (bool? value){
        setState((){
            checkValue = value ?? false;
            },
        );
        title: const Text('Setuju / Tidak Setuju'),
    },
);
```

### Dropdown Button <br>
Dimana widget ini akan memberikan opsi pada user, dropdown ini hanya dapat memilih satu opsi saja dan opsi tidak ditampilkan di awal, hanya tampil jika ditekan/dipilih. Dalam membuat Dropdown Button data diambil menggunakan properti dengan tipe data yang sesuai dengan value pada DropdownMenuItem. Contoh penggunaannya : <br>

```
// Properti
var dropdownValue = 0;

// Build
DropdownButton(
    value: dropdownValue,
    onChanged: (int? value){
        setState((){
            dropdownValue = value ?? 0;
        });
    },
    items: const [
        DropdownMenuItem(
            value: 0,
            child: Text('Pilih ... '),
        ),
        DropdownMenuItem(
            value: 1,
            child: Text('Satu'),
        ),
        DropdownMenuItem(
            value: 2,
            child: Text('Dua'),
        ),
    ],
);
```

</details>

<details>
<summary>

## Button

</summary>

Bersifat seperti tombol dan dapat melakukan sesuatu saat kita/user tekan. <br>

### ElevatedButton <br>
ElevatedButton sendiri adalah sebuah tombol yang timbul dan jika ditekan maka akan menjalankan onPressed. Contoh penggunaannya adalah : <br>

```
ElevatedButton(
    child: const Text('Submit');
    onPressed: (){},
);
```

### IconButton <br>
Kita membutuhkan properti Icon untuk menggunakan widget IconButton ini. IconButton adalah tombol yang hanya menampilkan icon dan jika ditekan akan menjalankan perintah onPressed juga seperti ElevatedButton. Contoh penggunaannya adalah : <br>

```
IconButton(
    icon: Icon(Icons.add),
    onPressed: (){},
);
```

</details>
