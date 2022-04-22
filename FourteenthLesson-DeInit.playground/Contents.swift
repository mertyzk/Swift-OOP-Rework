import UIKit

var deger : Int = 10

class A {
    
    init() {
        deger = 15
        print("A sınıfından yeni bir nesne türetildi")
    }
    
    deinit {
        print("A sınıfından türetilen bir nesne hafızadan silindi")
        deger = -1
    }
    
}

print(deger) // 10 yazması gerekli
var n1 : A? = A() // init çalışacaktır
print(deger) // 15 gelmesi gerekir
n1 = nil // de init çalışacaktır
print(deger) // -1 gelmeli

class Kumbara {
    
    static var bakiye : Int = 1000
    static func paraCek(cMiktar : Int) -> Int{
        
        guard cMiktar > 0 else{
            print("Girilen miktar hatalıdır")
            return -1
        }
        
        // guarddan geçtiyse cMiktar > 0 demektir
        
        if cMiktar > bakiye{
            print("O kadar bakiye yok")
            return -1
            
        } else if cMiktar == bakiye{
            print("Tüm parayı çektiniz")
            bakiye -= cMiktar
            return cMiktar
        } else {
            bakiye -= cMiktar
            print("Kumbaradan \(cMiktar) çekildi.")
            return cMiktar
        }
        
    }
    
    static func paraYukle(yMiktar : Int){
        
        guard yMiktar > 0 else {
            print("Yüklenecek tutar uygun değil")
            return
        }
        
        bakiye += yMiktar
        
        
    }
}

class AileBireyi {
    
    var cebindekiPara : Int
    init(para : Int){
        // Aile bireyi sınıfından yeni bir nesne üretildiğinde kumbaradan para çekecek
        
        cebindekiPara = Kumbara.paraCek(cMiktar: para)
        print("Aileye \(self.cebindekiPara) TL para ile yeni biri katıldı")
    }
    
    func paraAl(miktar : Int){
        cebindekiPara += Kumbara.paraCek(cMiktar: miktar)
    }
    
    deinit{
        print("Aile bireyi öldü. Bireyin cebindeki \(self.cebindekiPara) TL para kumbaraya eklendi")
        Kumbara.paraYukle(yMiktar: cebindekiPara)
    }
    
    
}

print("-----------------------------------------------------")
var birey1 : AileBireyi? = AileBireyi(para: 100)
print("Kumbarada \(Kumbara.bakiye) TL para var")

birey1?.paraAl(miktar: 200) // 200 TL çektik
print("Bireyin cebinde \(birey1!.cebindekiPara) parası var")
birey1 = nil // birey 1 hafızadan silinecek (yer kaplamayacak)
print("Kumbarada \(Kumbara.bakiye) TL para var.")

if birey1 == nil {
    var birey2 : AileBireyi = AileBireyi(para: 200)
    birey2.paraAl(miktar: 300) // kumbaradan 300 tl alındı
}
print("if bloğu dışındayız")
