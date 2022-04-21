import UIKit

class Birey {
    var adi : String
    
    init(adi : String) {
        self.adi = adi
    }
    
    convenience init() {
        self.init(adi: "Ad yok")
    }

}

var birey1 : Birey = Birey()
birey1.adi = "Ahmet"
print(birey1.adi)

var birey2 : Birey = Birey()
print(birey2.adi)

class Kisi {
    var adi : String
    var soyadi : String
    var yas : Int
    var sehir : String
    
    convenience init() {
        self.init(adi: "Default AD", soyadi: "DEFAULT SOYAD", yas: -1, sehir: "DEFAULT SEHIR")
    }
    
    
    init(adi : String, soyadi : String, yas : Int, sehir : String) {
        self.adi = adi
        self.soyadi = soyadi
        self.yas = yas
        self.sehir = sehir
    }
}
