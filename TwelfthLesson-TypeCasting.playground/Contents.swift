import UIKit

// Type Casting

class Media{
    
    var adi : String
    init(adi : String) {
        self.adi = adi
    }
    
}

class Kitap : Media {
    // kitap sınıfından bir nesne üretecek olursak, kitap bir medyadır. upcasting.
    var yazari : String
    var baskiYili : Int
    init(yazari : String, baskiYili : Int, adi : String){
        self.yazari = yazari
        self.baskiYili = baskiYili
        super.init(adi: adi)
    }
}

class Film : Media {
    
    var yonetmeni : String
    var odullu : Bool
    init(yonetmeni : String, odullu : Bool, adi : String){
        self.yonetmeni = yonetmeni
        self.odullu = odullu
        super.init(adi: adi)
    }

}

let arsivim : [Media] = [
    // UPCASTING
Film(yonetmeni: "Stanley", odullu: true, adi: "The shining"),
Kitap(yazari: "Yaşar", baskiYili: 1965, adi: "İnce Memed"),
Film(yonetmeni: "Steven", odullu: true, adi: "Catch me if you can"),
Kitap(yazari: "Boris", baskiYili: 1960, adi: "Doktor Jivago")
]

var sayilar : (kitapSayisi : Int, filmSayisi : Int) = (0,0)

// SADECE TİP KONTROLÜ

for medya in arsivim {
    
    if medya is Film{
        sayilar.filmSayisi += 1
    } else if medya is Kitap {
        sayilar.kitapSayisi += 1
    }
}

print("Arşivde \(sayilar.filmSayisi) tane Film ve \(sayilar.kitapSayisi) tane kitap yer almaktadır.")

// DOWNCASTING YAPALIM

for medya in arsivim{
    if let film = medya as? Film{
        // Medya to Film yapmaya çalışıyoruz.
        print("\(film.adi) filmi yönetmeni \(film.yonetmeni)")
    } else if let kitap = medya as? Kitap{
        // Medya to Kitap yapmaya çalışıyoruz.
        print("\(kitap.adi) kitabının yazarı \(kitap.yazari)")
    }
}


var degerler : [Any] = [Any]()
degerler.append(2)
degerler.append(3.0)
degerler.append(34)
degerler.append(6.2)
degerler.append("Hello")
degerler.append((10,20))
degerler.append(Film(yonetmeni: "Ertem Eğilmez", odullu: true, adi: "HABABAM SINIFI"))
print("--------------------------------------------------------------------------------------")

for deger in degerler{
    
    switch deger {
    case 2 as Int : print("Tam sayı olan 2")
    case 3.0 as Double : print("Double olan 3.0")
    case let tamSayi as Int : print("Bu değer tam sayıdır: \(tamSayi)")
    case let ondalikli as Double : print("Bu değer ondalıklıdır: \(ondalikli)")
    case let kelime as String : print("Bu bir metindir: \(kelime)")
    case let (deger1,deger2) as (Int,Int) : print("Değerler: (\(deger1)),\(deger2))")
    case let film as Film : print("\(film.adi) Filminin yönetmeni : \(film.yonetmeni)")
        
        
    default : print("Bilinmeyen tipte bir değer gelmiştir.")
    }
    
}
