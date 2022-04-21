import UIKit

class Personel {
    
    var adi : String
    var soyadi : String
    var yas : Int
    var departman : String
    var maas : Int
    
    init(adi : String, soyadi : String, departman : String, maas : Int, yas : Int) {
        self.adi = adi
        self.soyadi = soyadi
        self.departman = departman
        self.maas = maas
        self.yas = yas
    }
    
    func bilgileriGoster(){
        print("""
------------------------------------
Adı soyadı: \(adi+" "+soyadi)
Yaşı: \(yas)
Departman: \(departman)
Maaş: \(maas)
""")
    }
}

class Yonetici: Personel {
    
    var gorevi : String
    
    init(adi : String, soyadi : String, departman : String, maas : Int, gorevi : String, yas : Int) {
        
        self.gorevi = gorevi
        super.init(adi: adi, soyadi: soyadi, departman: departman, maas: maas, yas: yas)

    }
    
    override func bilgileriGoster(){
        print("""
------------------------------------
Adı soyadı: \(adi+" "+soyadi)
Yaşı: \(yas)
Departman: \(departman)
Maaş: \(maas)
Görevi: \(gorevi)
""")
    }
    
    
    
}

let person1 : Personel = Personel(adi: "Serhat", soyadi: "Kerem", departman: "Yazılım", maas: 12000, yas: 33)
person1.bilgileriGoster()

let yonetici1 : Yonetici = Yonetici(adi: "Ali", soyadi: "Kemal", departman: "HR", maas: 7500, gorevi: "mudur", yas: 30)
yonetici1.bilgileriGoster()
