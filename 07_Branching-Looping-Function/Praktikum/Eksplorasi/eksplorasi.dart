import 'dart:io';

void main(List<String> args) {
  int cekBilangan = 0;

  stdout.write("Masukkan Bilangan : ");
  int bilanganPrima = int.parse(stdin.readLineSync()!);

  for(int a = 2; a <= bilanganPrima; a++){
    if(bilanganPrima % a == 0){
      cekBilangan++;
    }
  }
  if(cekBilangan == 1){
    print('$bilanganPrima adalah bilangan prima');
  }else{
    print('$bilanganPrima bukan bilangan prima');
  }
}