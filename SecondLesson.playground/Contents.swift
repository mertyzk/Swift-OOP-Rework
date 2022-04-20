import UIKit

class YemekTarifi {
    var yemekAdi : String
    var tarifAciklamasi : String
    var asciPuani : Int
    
    init(yemekAdi : String, tarifAciklamasi : String, asciPuani : Int) {
        self.yemekAdi = yemekAdi
        self.tarifAciklamasi = tarifAciklamasi
        
        if asciPuani <= 0 {
            self.asciPuani = 0
        } else if asciPuani > 10 {
            self.asciPuani = 10
        } else {
            self.asciPuani = asciPuani
        }
    }

    
    
    func yemekTarifiniGoster() {
        print("""
Yemek adı: \(yemekAdi)
Tarif açıklama: \(tarifAciklamasi)
Skor: \(asciPuani)
""")
    }
}

let menemen : YemekTarifi = YemekTarifi(yemekAdi: "Menemen", tarifAciklamasi: "Domates, soğan, biberleri kavur ve üzerine yumurta kır", asciPuani: 9)
let tavukIzgara : YemekTarifi = YemekTarifi(yemekAdi: "Tavuk Izgara", tarifAciklamasi: "Sosla marine edilmiş tavukları köz ateş üzerinde çevirerek pişir", asciPuani: 10)

print(menemen.tarifAciklamasi)
print(tavukIzgara.tarifAciklamasi)

class YemekTarifleriKitap{
    var kategoriler : [String]
    var tarifler : [YemekTarifi]
    init(tarifler : [YemekTarifi], kategoriler : [String]) {
        self.tarifler = tarifler
        self.kategoriler = kategoriler
    }
    
    
    func enBegenilenYemegiGoster(){
        var maxTarifIndex : Int  = 0 // varsayılan olarak en iyi tarifi ilk tarif olarak kabul ettik.
        for index in (0...(tarifler.count-1)){
            if tarifler[index].asciPuani > tarifler[maxTarifIndex].asciPuani{
                maxTarifIndex = index
            }
        }// for end
        print("##### AŞÇILARIMIZIN EN BEĞENDİĞİ YEMEK TARİFİ")
        tarifler[maxTarifIndex].yemekTarifiniGoster()
    }
}

let yemekler = [menemen,tavukIzgara]
let muthisYemekTarifleri : YemekTarifleriKitap = YemekTarifleriKitap(tarifler: yemekler, kategoriler: ["Hafif yemekler","Mangalda Sevenler"])
muthisYemekTarifleri.enBegenilenYemegiGoster()

class MobilUygulama {
    var uygulamaAdi : String
    var gelistiriciAdi : String
    var appStorePuani : Double
    var kategori : String
    var ucret : Double
    var ucretsizmi : Bool
    
    init(uygulamaAdi : String, gelistiriciAdi : String, appStorePuani : Double, kategori : String, ucret : Double) {
        self.uygulamaAdi = uygulamaAdi
        self.gelistiriciAdi = gelistiriciAdi
        self.appStorePuani = appStorePuani
        self.kategori = kategori
        if ucret > 0 {
            self.ucretsizmi = false
            self.ucret = ucret
        } else {
            self.ucretsizmi = true
            self.ucret = 0
        }
        
    }
}


let insta : MobilUygulama = MobilUygulama(uygulamaAdi: "Insta", gelistiriciAdi: "Face", appStorePuani: 4.7, kategori: "Sosyal Medya", ucret: -1.5)
let Nfs : MobilUygulama = MobilUygulama(uygulamaAdi: "Nfs", gelistiriciAdi: "EA", appStorePuani: 4.9, kategori: "Yarış", ucret: 4.5)


class AppStore {
    var uygulamalar : [MobilUygulama]
    
    init(uygulamalar : [MobilUygulama]) {
        self.uygulamalar = uygulamalar
    }
    
    func uygulamaYukle(uygulama : MobilUygulama) {
        
        if uygulama.appStorePuani < 0.5 {
            print("Uygulama puanı çok düşük eklenemiyor bu yüzden")
        } else {
            print("\(uygulama.uygulamaAdi) App Store'a yüklenmiştir.")
            uygulamalar.append(uygulama)
        }
    }
    
    func enGuzelUygulama() -> MobilUygulama {
        var maxIndex : Int = 0
        for index in (0...(uygulamalar.count-1)){
            if uygulamalar[index].appStorePuani > uygulamalar[maxIndex].appStorePuani{
                maxIndex = index
            }
        }
        
        return uygulamalar[maxIndex]
    }
    
    
    
}

let uygulamalar = [insta]
let storeApp = AppStore(uygulamalar: uygulamalar)
storeApp.uygulamaYukle(uygulama: Nfs)


let enIyiUygulama = storeApp.enGuzelUygulama()
print(enIyiUygulama.uygulamaAdi)
