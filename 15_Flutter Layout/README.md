# Rangkuman Materi Flutter Layout

<details open>
<summary>

## Apa itu Layout?

</summary>
Layout digunakan untuk mengatur tata letak material seperti image, text dan lain lain. Layout berbentuk widget yang mengatur widget di dalamnya. <br>

</details>

<details>
<summary>

## Single-Child Layout

</summary>
Sesuai namanya widget ini hanya dapat memiliki satu child saja seperti Container, SizedBox, Center, SingleChildScrollView dan lain - lain. <br>

### Container <br>
Membuat sebuah box dan dapat dibungkus oleh widget lain, Box memiliki margin, padding dan juga border. Margin adalah jarak antara Container dengan bagian luar Container, Padding merupakan jarak antara child dengan Container (margin diluar sedangkan padding didalam). Cara penggunaan : <br>

```
Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        border: Border.all(),
    ),
    child: Text('Hallo'),
);
```

### Center <br>
Widget yang digunakan untuk membuat sebuah box dan bisa dibungkus oleh widget lain. Dapat mengikuti lebar dan tinggi ruang di luarnya serta meletakkan widget berada dibagian tengah. Contoh penggunaannya : <br>

```
Center(
    child: Text('Hallo'),       // OUTPUT HALO AKAN DI TENGAH TENGAH
);
```

### SizedBox <br>
Widget yang digunakan untuk membuat sebuah box dan bisa dibungkus oleh widget lain. Box dapat diatur lebar dan tingginya, sizedbox ini lebih sederhana dari Container. SizedBox hanya memiliki beberapa properti seperti child, width, height dan key. Contoh penggunannya : <br>

```
SizedBox(
    width: 100,
    height: 150,
    child: Text('Halo'),
);
```

</details>

<details>
<summary>

## Multi-Child Layout 

</summary>
Digunakan apabila kita ingin menggunakan widget lebih dari satu dan menggunakan properti children. <br>

### Column <br>
Mengatur widgets secara vertikal. Cara penggunaannya : <br>

```
Column(
    children: [
        Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(),
            ),
            child: Text('Hallo'),
        ),
        Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(),
            ),
            child: Text('Hallo'),
        ),
    ],
);
```

Maka akan menghasilkan output secara vertikal (ke bawah).<br>

### Row <br>
Mengatur widgets secara horizontal. Cara penggunaannya sama seperti Column : <br>

```
Row(
    children: [
        Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(),
            ),
            child: Text('Hallo'),
        ),
        Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(),
            ),
            child: Text('Hallo'),
        ),
    ],
);
```

Maka outputnya akan secara horizontal (ke samping). <br>

### ListView <br>
Berbeda dengan Column dan juga Row, widget ini bisa mengatur widgets dalam bentuk list sehingga memiliki kemampuan scroll apabila children yang dimiliki sudah melebihi batas. Contoh penggunannya : <br>

```
ListView(
    children: [
        Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(),
            ),
            child: Text('Hallo'),
        ),
    ],
);
```

### GridView <br>
Dapat mengatur widgets childrennya dalam bentuk galeri, kita bisa menggunakan GridView.count untuk mengatur jumlah yang ingin diterapkan. Contoh penggunannya : <br>

```
GridView.count(
    crossAxisCount: 4,                  // BERFUNGSI UNTUK MENGATUR BERAPA BANYAK VIEW YANG DITAMPILKAN DALAM SATU BARIS
    children: [
        Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(),
            ),
            child: Text('Hallo'),
        ),
        Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(),
            ),
            child: Text('Hallo'),
        ),
    ],
);
```

</details>