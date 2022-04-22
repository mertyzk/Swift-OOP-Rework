import UIKit

class Kisi {
    var adi : String
    var soyadi : String
    var yasi : Int
    static var kisiSayisi : Int = 0
    
    init(adi : String, soyadi : String, yasi : Int) {
        self.adi = adi
        self.soyadi = soyadi
        self.yasi = yasi
        Kisi.kisiSayisi += 1 // Her newlendiğinde kişi sayısı 1 artacak.
    }
    
}

class KanaryaSevenler {
    
    static var genelBaskan : Kisi = Kisi(adi: "Ahmet", soyadi: "Kaya", yasi: 20)
    static var maxUye : Int = 15
    
    var uyeler : [Kisi]
    
    init() {
        uyeler = [Kisi]() // Kisi tipindeki uyeler degiskenini bos bir dizi olarak baslattik
    }
    
    func yeniUye(kisi : Kisi){
        if kisi.yasi<18{
            print("18 yaşından küçükler kayıt olamaz")
        }else{
            print("Kayıt başarılıdır")
            uyeler.append(kisi)
        }
    }
    
}
print(Kisi.kisiSayisi) //0
var k1 : Kisi = Kisi(adi: "Kaan", soyadi: "Can", yasi: 55)
print(Kisi.kisiSayisi) //1
var k2 : Kisi = Kisi(adi: "Ferit", soyadi: "Men", yasi: 25)
print(Kisi.kisiSayisi) //2

var dernek1 : KanaryaSevenler = KanaryaSevenler()

print(KanaryaSevenler.genelBaskan.adi)


