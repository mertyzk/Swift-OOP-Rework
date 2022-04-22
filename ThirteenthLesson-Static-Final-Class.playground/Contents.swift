import UIKit

class Calisan {
    
    var adiSoyadi : String
    var departman : String
    var baslangicYili : Int
    
    init(adiSoyadi : String, departman : String, baslangicYili : Int) {
        self.adiSoyadi = adiSoyadi
        self.departman = departman
        self.baslangicYili = baslangicYili
        Calisan.calisanSayisi += 1 // static propertylere class adı . ile erişilir. row 23 static var
    }
    
    // computed property
    var tecrube : Int {
        get{
            return 2022 - baslangicYili
        }
    }
    
    static var calisanSayisi : Int = 0
    static var ekGiderler : Int = 0
    
    static var aylikGider : Int{
        get{
            return (calisanSayisi * 5000) + ekGiderler // property'ler static olduğu için calisansayisi ve ekgiderlere direkt erişebildik. class + . yapmamıza gerek kalmadı.
        }
        set{
            let fark = newValue - aylikGider
            if fark > 0 {
                ekGiderler = fark
            }
        }
    }
    
    static func calisanVerileri(){
        print("----------------------------")
        print("Toplam Çalışan Sayısı: \(calisanSayisi)\nAylık gider toplam: \(aylikGider)\nEk Giderler: \(ekGiderler)")
    }
    
    class func calisanVerileriClassFunc(){
        print("----------------------------")
        print("KOPYA ÇALIŞAN VERİLERİ")
        print("Toplam Çalışan Sayısı: \(calisanSayisi)\nAylık gider toplam: \(aylikGider)\nEk Giderler: \(ekGiderler)")
    }
    
    final func calisanBilgileriniGoster(){
        print("----------------------------")
        print("ÇALIŞAN BİLGİLERİNİ GÖSTER FUNC")
        print("Adı soyadı: \(adiSoyadi)\nDepartmanı: \(departman)")
    }
    
}

var c1 : Calisan = Calisan(adiSoyadi: "Ahmet", departman: "HR", baslangicYili: 2015)
print("Çalışan Tecrübesi: \(c1.tecrube) yıldır")
Calisan.calisanVerileri()

Calisan.aylikGider = 3000
Calisan.calisanVerileri()

Calisan.aylikGider = 7000
Calisan.calisanVerileri()

Calisan.calisanVerileriClassFunc()


c1.calisanBilgileriniGoster()

/* STATIC VE CLASS ARASINDAKİ FARK */

class Yonetici : Calisan {
    
    var pozisyonu : String
    static var maas : Int = 8000
    
    init(adiSoyadi : String, departman : String, baslangicYili : Int, pozisyonu : String) {
        self.pozisyonu = pozisyonu
        super.init(adiSoyadi: adiSoyadi, departman: departman, baslangicYili: baslangicYili)
    }
    
    // static func calisanVerileri() gelmedi. çünkü static ile oluşturulan bir metod ya da property, kalıtım alan sınıfta override edilemez.
    
    override class func calisanVerileriClassFunc() {
        print("----------------------------")
        print("YÖNETİCİ VERİLERİ")
        print("Toplam Çalışan Sayısı: \(calisanSayisi)\nAylık gider toplam: \(aylikGider)\nEk Giderler: \(ekGiderler)")
    }
    
    override func calisanBilgileriniGoster() {
        print("----------------------------")
        print("YÖNETİCİ BİLGİLERİNİ GÖSTER FUNC")
        print("Adı soyadı: \(adiSoyadi)\nDepartmanı: \(departman)")
    }
}

var y1 : Yonetici = Yonetici(adiSoyadi: "Kerem", departman: "Satış", baslangicYili: 2015, pozisyonu: "Genel müdür")
Yonetici.calisanVerileri()
Yonetici.calisanVerileriClassFunc()

y1.calisanBilgileriniGoster()
