# Rangkuman Materi REST API - JSON

<details open>
<summary>

## REST API

</summary>

REST API (Representational State Transfer Application Programming Interface) adalah Arsitektural yang memisahkan tampilan dengan proses bisnis dan bagian tampilan dengan proses bisnis berkirim data melalui HTTP Request. <br>

</details>

<details>
<summary>

## HTTP

</summary>

Protokol yang digunakan untuk berkirim data pada internet dan biasanya data tersebut berbentuk media web. Pola Komunikasi di HTTP adalah Client mengirim request dan server akan mengolah serta membalas dengan memberikan response. <br>
### Struktur Request : <br>
1. URL => Alamat halaman yang akan diakses. <br>
2. Method (GET, POST, PUT, DELETE) => Menunjukkan aksi yang diinginkan. <br>
3. Header => Informasi tambahan terkait request yang dikirimkan. <br>
4. Body => Data yang disertakan bersama request. <br>

### Struktur Response : <br>
1. Status Code => Kode yang mewakili response entah itu sukses maupun gagal. <br>
2. Header => Informasi tambahan terkait response yang diberikan. <br>
3. Body => Data yang disertakan bersama response. <br>

</details>

<details>
<summary>

## Serialisasi JSON

</summary>

JSON adalah Javascript Object Notation dan umum digunakan pada REST API. <br>
1. Mengubah struktur data ke bentuk JSON disebut dengan SERIALISASI JSON. Menggunakan fungsi jsonEncode dari package dart:convert. <br>
MAP/LIST => SERIALISASI => JSON. <br>
2. Mengubah bentuk JSON ke struktur data disebut dengan DESERIALISASI JSON. Menggunakan fungsi jsonDecode daro package dart:convert. <br>
JSON => DESERIALISASI => MAP/LIST. <br>

</details>