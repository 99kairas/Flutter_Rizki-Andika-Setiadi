# Rangkuman Materi Dialog dan Bottom Sheet

<details open>
<summary>

## Alert Dialog

</summary>

Untuk tampilan Android dan berasal dari material design yang berfungsi sebagai informasi pengguna tentang situasi tertentu. Alert Dialog ini juga bisa digunakan untuk mendapatkan input dari user dan membutuhkan helper method showDialog. Cara membuat : <br>

```
showDialog(
    context: context,
    builder: (context) => DialogSheet(
    image: image,
    name: name,
));
```

</details>

<details>
<summary>

## Bottom Sheet

</summary>

Seperti dialog tetapi muncul dari bawah layar aplikasi dan untuk menggunakan fungsi ini bisa menggunakan showModalBottomSheet. Widget ini membutuhkan dua properti, yaitu context dan juga builder. Cara membuat : <br>

```
showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
        context: context,
    builder: (context) => BottomSheetComponent(
    image: items[index].image, name: items[index].name),
);
```

</details>