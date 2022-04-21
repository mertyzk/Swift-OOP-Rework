import UIKit

// Inheritence

struct DersNot {
    var dersAdi : String
    var harfNot : Character
    var sayisalNot : Int
    var dersKredi : Int
}

class Kisi {
    var adi : String
    var soyadi : String
    var dogumYili : Int
    
    init(adi : String, soyadi : String, dogumYili : Int) {
        self.adi = adi
        self.soyadi = soyadi
        self.dogumYili = dogumYili
    }
    
}

class Ogrenci : Kisi {
    
    var dersler : [DersNot] = []
    
    func notKaydet (ders : DersNot) {
        dersler.append(ders)
    }
    
    func dersListele() {
        for ders in dersler {
            print("DERS ADI: \(ders.dersAdi)")
            print("DERS HARF NOTU: \(ders.harfNot)")
            print("DERS KREDİSİ: \(ders.dersKredi)")
            print("DERS SAYISAL NOT: \(ders.sayisalNot)")
            print("----------------------------------------")
        }
    }
    
}

let kisi1 = Kisi(adi: "ahmet", soyadi: "Soyad", dogumYili: 1994)
let ogrenci1 = Ogrenci(adi: "Jane", soyadi: "Kane", dogumYili: 1995)

print(ogrenci1.adi)
print(ogrenci1.dersler)

let ders1 = DersNot(dersAdi: "Tarih", harfNot: "A", sayisalNot: 75, dersKredi: 4)
ogrenci1.notKaydet(ders: ders1)

ogrenci1.dersListele()
