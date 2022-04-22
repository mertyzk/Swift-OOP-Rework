import UIKit

// Protection Level

class Birey {
    //internal : default protection level
    private var tcKimlikNo : String?
    private var _adiSoyadi : String?
    private var _dogumYili : Int?
    private var _cepTel : String?
    
    init(adiSoyadi : String, dogumYili : Int, cepTel : String) {
        self.adiSoyadi = adiSoyadi
        self.dogumYili = dogumYili
        self.cepTel = cepTel
    }
    
    func kendiniTanit(){
        
        print("-----------------------------------")
        print("Adı soyadı: \(adiSoyadi)\nYaşı: \(2022-dogumYili)\nCep telefonu: \(cepTel)")
        
    }
    
    var adiSoyadi : String {
        get{
            return _adiSoyadi!.uppercased()
        }
        set(yeniAdi){
            if yeniAdi.count > 0 {
                _adiSoyadi = yeniAdi
            }
            
        }
    }
    
    var dogumYili : Int {
        get{
            return _dogumYili!
        }
        set(yeniDogumYili){
            if yeniDogumYili > 2022 || yeniDogumYili < 1900 {
                
            } else {
                _dogumYili = yeniDogumYili
            }
        }
    }
    
    var cepTel : String{
        get{
            if (2022 - dogumYili) >= 18{
                return _cepTel!
            } else {
                return "***********"
            }
        }
        set{
            if newValue.count == 11 {
                _cepTel = newValue
            } else {
                print("Girdiğiniz numara 11 haneli değil. Girdiğiniz numaradaki hane sayısı: \(newValue.count) kadardır. Lütfen doğru bir değer giriniz")
            }
        }
    }
    
    var yasi : Int {
        get{
            return (2022 - dogumYili)
        }
    }
    
    
    
    
    
    
}

var b1 : Birey = Birey(adiSoyadi: "Ali", dogumYili: 1990, cepTel:"12312311212")
b1.adiSoyadi = "asdad Kaya"
b1.kendiniTanit()

print(b1.yasi)

class Personel : Birey{
    
    var departmani : String
    var gorevi : String
    var maasi : Int
    var tecrube : Int
    var iseBasladigiYil : Int
    
    init(adiSoyadi : String, dogumYili : Int, cepTel : String, departmani : String, gorevi : String, maasi : Int, tecrube : Int, iseBasladigiYil : Int) {
        self.departmani = departmani
        self.gorevi = gorevi
        self.maasi = maasi
        self.tecrube = tecrube
        self.iseBasladigiYil = iseBasladigiYil
        super.init(adiSoyadi: adiSoyadi, dogumYili: dogumYili, cepTel: cepTel)
    }
    
}
