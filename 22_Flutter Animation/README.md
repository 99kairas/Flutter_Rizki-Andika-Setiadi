# Rangkuman Materi Flutter Animation

<details open>
<summary>

## Animation

</summary>

### Deskripsi <br>

Animasi bisa membuat aplikasi terlihat lebih 'hidup' karena terdapat widget yang bisa bergerak sehingga menambah daya tarik. Animasi sendiri adalah pergerakan dari kondisi A ke kondisi B.

</details>

<details>
<summary>

## Implicit Animation

</summary>

adalah versi animasi dari widget yang sudah ada. Jika melakukan pergerakan tanpa animasi maka akan terlihat kaku namun apabila menggunakan animation, widget menjadi lebih hidup dan nyaman dilihat. Contoh <br>

```
bool isBig = false;

AnimatedContainer(
    width: isBig ? 200 : 100;
    height: isBig ? 200 : 100;
    color: Colors.red,
    duration: const Duration(miliseconds: 300),
);
```

</details>

<details>
<summary>

## Transition

</summary>

Animasi yang terjadi saat perpindahan halaman dan dilakukan pada bagian Navigator.push(). Cara melakukan transition : <br>

```
Navigator.of(context).push(
    PageRouterBuilder(
        pageBuilder: (context, animation, secondaryAnimation){
            return const AboutScreen();
        },

        transitionBuilder((context, animation, secondaryAnimation, child){
            final tween = Tween(begin: const Offset(0, .5),
            end: Offset.zero);

                return SlideTransition(
                    position: animation.drive(tween),
                    child: child,
                );
            },
        ),
    ),
);
```
</details>

<details>
<summary>

## Transition Umum

</summary>

Transition umum yang sering digunakan diantaranya adalah : <br>
1. FadeTransition yang merupakan halaman muncul dengan efek redup menuju ke tampak jelas secara penuh. Contoh penggunaannya : <br>

```
final tween = Tween(begin: 0.0, end: 1.0);
return FadeTransition(
    opacitiy: animation.drive(tween),
    child: child,
);
```

2. ScaleTransition yang merupakan halaman muncul dengan efek berubah ukuran dari tidak penuh menuju tampil keseluruhan. Contoh penggunaannya : <br>

```
final tween = Tween(begin: 0.0, end: 1.0);
return ScaleTransition(
    opacitiy: animation.drive(tween),
    child: child,
);
```

</details>