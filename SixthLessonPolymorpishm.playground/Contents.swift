import UIKit

class GeometrikSekiller {
    
    var genelAdi : String
    init(genelAdi : String) {
        self.genelAdi = genelAdi
    }
    
    func alanHesapla() -> Double {
        return 0.0
    }
    
    func cevrehesapla() -> Double {
        return 0.0
    }
}

class Dikdortgen: GeometrikSekiller {
    var kenar1 : Double
    var kenar2 : Double
    
    init(kenar1 : Double, kenar2 : Double){
        self.kenar1 = kenar1
        self.kenar2 = kenar2
        super.init(genelAdi: "Dikdortgen")
    }
    
    override func alanHesapla() -> Double {
        return kenar1*kenar2
    }
    
    override func cevrehesapla() -> Double {
        return 2*(kenar1+kenar2)
    }
}

class Kare: Dikdortgen{
    
    init(kenar1 : Double) {
        super.init(kenar1: kenar1, kenar2: kenar1) // burada henüz genel adı dikdortgen oldu
        self.genelAdi = "Kare"
        //super.genelAdi = "Kare" // Yukarıdakiyle aynı işlevde
    }
}

class Daire: GeometrikSekiller{
    
    var yaricap : Double
    
    init(yaricap : Double){
        self.yaricap = yaricap
        super.init(genelAdi: "Daire")
    }
    
    override func alanHesapla() -> Double {
        return Double.pi*yaricap*yaricap
        // return Double.pi*pow(yaricap,2)
    }
    
    override func cevrehesapla() -> Double {
        return 2*Double.pi*yaricap
    }
}

var d1 : Dikdortgen = Dikdortgen(kenar1: 15, kenar2: 20)
print(d1.alanHesapla())
print(d1.cevrehesapla())
print(d1.genelAdi)
print(d1.kenar1)
print(d1.kenar2)

print("#############################################")

var k1 : Kare = Kare(kenar1: 10)
print(k1.alanHesapla())
print(k1.cevrehesapla())
print(k1.genelAdi)
print(k1.kenar1)
print(k1.kenar2)

print("#############################################")
