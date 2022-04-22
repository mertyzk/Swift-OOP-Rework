import UIKit

// Property Observer

class Pozitif {
    
    var pozitifDeger : Int = 0 {
        
        willSet(yeniDeger){
            // Değer atanmadan önce çalışır. Bu kod bloğu çalıştıktan sonra değer ataması yapılır.
            print("Değişken değeri  \(pozitifDeger) değerinden \(yeniDeger) değerine güncellenecektir")
            /*if yeniDeger<0{
                pozitifDeger = 0 // bu alanı yazmana gerek yok
            }*/
            
        }
        didSet(eskiDeger){
            // Değer atandıktan sonra çalışır.
            
            if pozitifDeger<0 {
                pozitifDeger = eskiDeger
                print("Negatif değer girilmemelidir")
            }else{
                print("Değişken değeri  \(eskiDeger) değerinden \(pozitifDeger) değerine değerine güncellendi")
            }
            
            
            
        }
    }
}

var d1: Pozitif = Pozitif()
d1.pozitifDeger = 15
print(d1.pozitifDeger)

/*---------------------------------------------------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------------------------------------------------*/

class Mesaj {
    
    var gonderilecekMesaj : String = "Hello World"{
        willSet{
            print("Gönderilecek mesaj \(gonderilecekMesaj) değerinden \(newValue) değerine güncellenecek.")
        }
        didSet{
            if gonderilecekMesaj.count == 0{
                gonderilecekMesaj = oldValue
                print("!!!! UYARI !!! Mesaj boş olamaz. Mesaj değeri değiştirilmedi")
            }else{
                msjKarakterSayisi = gonderilecekMesaj.count
                degisimSayisi += 1
                print("Gönderilecek mesaj \(oldValue) değerinden \(gonderilecekMesaj) değerine güncellenmiştir.")
            }

        }
    }
    
    var msjKarakterSayisi : Int = 9
    var degisimSayisi : Int = 0
    
    func bilgileriGoster(){
        print("----------------------")
        print("Mesaj değeri: \(gonderilecekMesaj)\nKarakter Sayısı:\(msjKarakterSayisi)\nDeğişim Sayısı:\(degisimSayisi)")
    }
}

var m1 : Mesaj = Mesaj()
m1.bilgileriGoster()

m1.gonderilecekMesaj = "Yeni Mesaj"
m1.bilgileriGoster()

m1.gonderilecekMesaj = ""
m1.bilgileriGoster()


var adim : String = "Mert" {
    willSet{
        print("Adınız \(adim) değerinden \(newValue) olarak günccellenmek üzere")
    }
    didSet{
        
        print("Adınız \(oldValue) değerinden \(adim) değerine güncellenmiştir.")
        
    }
}

adim = "ahmet"
print(adim)
