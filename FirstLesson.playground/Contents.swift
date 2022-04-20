import UIKit

class Kisi{
    
    var adi : String
    var soyadi : String
    var yasi : Int
    var sehir : String
    var arabasi : Araba?
    
    init(adi : String, soyadi : String, yasi : Int, sehir: String) {
        self.adi = adi
        self.soyadi = soyadi
        self.yasi = yasi
        self.sehir = sehir
    }
}

class Araba{
    var tipi : String?
    var model : Int?
    var fiyati : Double?
    var km : Int?
    var sahibi : Kisi?
    
    init() {
        print("Boş bir araba oluşturuldu // boş init")
    }
    
    init(tipi : String, model : Int, fiyati : Double, km : Int, sahibi : Kisi) {
        self.tipi = tipi
        self.model = model
        self.fiyati = fiyati
        self.km = km
        self.sahibi = sahibi
        sahibi.arabasi = self
    }
}

var kisi1 : Kisi = Kisi(adi: "Name", soyadi: "Surname", yasi: 25, sehir: "City")
print(kisi1.adi)

var araba1 : Araba = Araba()
print(kisi1.arabasi?.fiyati) // daha önce k1'e araba atanmadığı için "nil" ifadesini göreceğiz.
var araba2 : Araba = Araba(tipi: "Jip", model: 2022, fiyati: 1500000, km: 0, sahibi: kisi1)
print(kisi1.arabasi?.fiyati) // arabanın fiyatını gördük. burada araba2 tanımlanırken sahibi : kisi1 ile yukarıdaki araba class'ı içindek init'te yer alan sahibi, aynı bellek bölgesini gösteriyor.
//herhangi bir adres göndermediğimiz halde bu şekilde oluyor.
