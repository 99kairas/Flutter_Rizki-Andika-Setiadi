# Rangkuman Materi Flutter Form dan Advance Form

# Form <br>

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

# Advance Form

<details>
<summary>

## Date Picker

</summary>
Widget dimana user bisa memasukkan tanggal entah itu tanggal kelahiran, waktu pemesanan tiket, waktu reservasi restoran, jadwal meeting dan lain - lain. Cara membuat Date Picker : <br>

1. Menggunakan fungsi bawaan flutter showDatePicker <br>
2. Fungsi showDatePicker memiliki tipe data future <br>
3. Menampilkan dialog material design date picker <br>
Basic Codenya adalah : <br>

```
final selectDate = await showDatePicker(
    context: context,
    initialDate: currentDate,
    firstDate: DateTime(1990),
    lastDate: DateTime(currentDate.year + 5),
);
```

4. Menambahkan packages intl di pubspec.yaml <br>
5. Mempersiapkan variabel seperti : <br>

```
DateTime _dueDate = DateTime.now();
final currentDate = DateTime.now();
```

6. Menambahkan fungsi showDatePicker di dalam onPressed : <br>

```
onPressed: () async {
        final selectDate = await showDatePicker(
            context: context,
            initialDate: currentDate,
            firstDate: DateTime(1990),
            lastDate: DateTime(currentDate.year + 5),
    ),
    setState((){
        if(selectDate != null){
            _dueDate = selectDate;
        }
    });
};
```

</details>

<details>
<summary>

## Color Picker

</summary>

Widget ini digunakan agar user bisa memilih color dan penggunaan color picker bisa digunakan untuk berbagai macam kondisi. Berikut adalah cara membuat Color Picker : <br>
1. Menggunakan packages flutter_colorpicker yang bisa diambil dari pub.dev <br>
2. Sebelum digunakan, tambahkan packages tersebut di pubspec.yaml <br>
3. Mempersiapkan variabel : <br>

```
Color _currentColor = Colors.orange;
```

4. Membangun UI nya dengan cara membuat Widget : <br>

```
Widget buildColorPicker(BuildContext context){
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            const Text('Color'),
            const SizedBox(height: 10),
            Container(
                height: 100,
                width: double.infinity,
                color: _currentColor,
            ),
            const SizedBox(height: 10),
            Center(
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(_currentColor),
                    ),
                    child: const Text('Pick Color'),
                    onPressed: () {},
                ),
            ),
        ],
    );
}
```

5. Menambahkan fungsi showDialog di dalam onPressed dengan return widget AlertDialog <br>

```
onPressed: () {
    showDialog(
        context: context,
        builder: (context) {
            return AlertDialog(
                title: const Text('Pick Your Color');
            ),
            child: const Text('Save'),
        },
    );
},
```

6. Jangan lupa untuk import packages flutter_colorpicker tersebut ke dalam file dart. <br>
7. Membuat kode untuk penggunaan packages flutter_colorpicker <br>
8. Packages flutter_colorpicker memiliki custom widget yang dapat digunakan, seperti BlockPicker, ColorPicker dan SlidePicker. <br>

</details>

<details>
<summary>

## File Picker

</summary>

Kemampuan widget untuk mengakses storage dan memilih serta membuka file. Cara membuat file picker : <br>
1. Menggunakan packages file_picker dan open_file <br>
2. Jangan lupa untuk menambahkan packages tersebut ke dalam pubspec.yaml dan mengimport packagesnya di dalam file dart. <br>

</details>
