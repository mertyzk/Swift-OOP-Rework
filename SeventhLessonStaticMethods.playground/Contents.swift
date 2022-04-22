import UIKit

//Static Kavramı ve Static Metod


class MatematikselIslemler {
    
    var nesneAdi : String
    
    init(nesneAdi : String) {
        self.nesneAdi = nesneAdi
    }
    
    func topla(sayi1 : Double, sayi2: Double) -> Double {
        return sayi1 + sayi2
    }
    
    func carp(sayi1 : Double, sayi2: Double) -> Double {
        return sayi1 * sayi2
    }
    
    func dikdortgenAlanHesapla(kenar1 : Double, kenar2: Double) -> Double {
        let dikdortgenAlani : Double = carp(sayi1: kenar1, sayi2: kenar2)
        return dikdortgenAlani
    }
    
    func daireAlanHesapla(yaricap : Double) -> Double{
        let daireAlani : Double = carp(sayi1: 2.0, sayi2: Double.pi)*carp(sayi1: yaricap, sayi2: yaricap) // 2 * pi * r * r
        return daireAlani
    }
    
    static func rastgeleSayiUret(altDeger : Int, ustDeger : Int) -> Int {
        let rastgeleSayi : Int = Int.random(in: altDeger ... ustDeger)
        //print("\(nesneAdi) nesnesi tarafından üretildi")
        return rastgeleSayi
    }
}

//var n1 : MatematikselIslemler = MatematikselIslemler(nesneAdi: "n1")
//print(n1.rastgeleSayiUret(altDeger: 20, ustDeger: 30))
//var n2 : MatematikselIslemler = MatematikselIslemler(nesneAdi: "n2")
//print(n2.rastgeleSayiUret(altDeger: 20, ustDeger: 30))

print(MatematikselIslemler.rastgeleSayiUret(altDeger: 10, ustDeger: 20))
