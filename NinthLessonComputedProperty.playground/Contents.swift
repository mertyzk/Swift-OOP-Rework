import UIKit

// Computed Property

class Kareler {
    
    var sayi : Double = 10
    var sayininKaresi : Double {
        get{
            // değer döndürme işlemi
            return pow(sayi, 2)
        }
        set{
           // değer atama işlem
            sayi = sqrt(newValue)
        }
    }
    
}

var k1 : Kareler = Kareler()
print(k1.sayi)
print(k1.sayininKaresi)

k1.sayi = 15
print(k1.sayi)
print(k1.sayininKaresi)

k1.sayininKaresi = 400
print(k1.sayi)

/*------------------------------------------------------------------------------------*/
/*------------------------------------------------------------------------------------*/
/*------------------------------------------------------------------------------------*/

class Daire {
    
    var yaricap : Int = 10
    var cap : Int{
        get{
            return yaricap * 2
        }
        set{
            yaricap = newValue / 2
        }
    }
    
}

var d1 : Daire = Daire()
print(d1.cap)
print(d1.yaricap)

d1.cap = 15
print(d1.cap)
print(d1.yaricap)

d1.yaricap = 30
print(d1.cap)
print(d1.yaricap)

/*------------------------------------------------------------------------------------*/
/*------------------------------------------------------------------------------------*/
/*------------------------------------------------------------------------------------*/

class Nokta {
    
    var x : Double
    var y : Double
    
    init(x : Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    init() {
        x = 0
        y = 0
    }
}

class Boyut {
    
    var genislik : Double
    var yukseklik : Double
    
    init(genislik : Double, yukseklik : Double) {
        self.genislik = genislik
        self.yukseklik = yukseklik
    }
    
    init() {
        genislik = 0
        yukseklik = 0
    }
}

class Dortgen {
    
    var baslangic : Nokta = Nokta()
    var boyut : Boyut = Boyut()
    init(baslangic : Nokta, boyut : Boyut) {
        self.baslangic = baslangic
        self.boyut = boyut
    }
    
    var merkez : Nokta {
        get{
            let merkezX = baslangic.x + (boyut.genislik / 2)
            let merkezY = baslangic.y + (boyut.yukseklik / 2)
            return Nokta(x: merkezX, y: merkezY)
            
        }set(yeniNokta){
            // baslangic.x = newValue.x // set içinde atama yapmazsan bu şekilde de kullanabilirsin.
            baslangic.x = yeniNokta.x - (boyut.genislik / 2)
            baslangic.y = yeniNokta.y - (boyut.yukseklik / 2)
            
            
        }
    }
    
}

var kare : Dortgen = Dortgen(baslangic: Nokta(x: 5, y: 5), boyut: Boyut(genislik: 20, yukseklik: 20))
print(kare.merkez.x)
print(kare.merkez.y)

kare.baslangic.x = 20
kare.baslangic.y = 50
print(kare.merkez.x)
print(kare.merkez.y)
