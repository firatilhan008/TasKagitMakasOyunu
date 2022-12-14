//
//  ViewController.swift
//  TasKagitMakas
//
//  Created by Fırat İlhan on 14.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sonucLabel: UILabel!
    
    @IBOutlet weak var secimOyuncu: UIImageView!
    
    @IBOutlet weak var secimComputer: UIImageView!
    
    @IBOutlet weak var secimTas: UIButton!
    @IBOutlet weak var secimKagit: UIButton!
    @IBOutlet weak var secimMakas: UIButton!
    let resimlerPC = [UIImage(named: "tas"), UIImage(named: "kagit"), UIImage(named: "makas"), ]
    
    
    @IBOutlet weak var secimOyuncuLabel: UILabel!
    
    @IBOutlet weak var secimComputerLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        secimOyuncuLabel.isHidden = true
        secimComputerLabel.isHidden = true
    }


    
    
    @IBAction func sonucGor(_ sender: Any) {
        
       
       secimOyuncu.isHidden = false
        
        let rastgelePc = Int(arc4random_uniform(3))
        secimComputer.image = resimlerPC[rastgelePc]
        
        
         if (secimOyuncu.image == UIImage(named: "tas")) && (secimComputer.image == UIImage(named: "tas")){
             sonucLabel.text = "Sonuç Berabere"
             secimOyuncuLabel.isHidden = false
             secimComputerLabel.isHidden = false
             secimComputer.isHidden = false

         } else if (secimOyuncu.image == UIImage(named: "tas")) && (secimComputer.image == UIImage(named: "kagit")) {
             sonucLabel.text = "Bilgisayar kazandı."
             secimOyuncuLabel.isHidden = false
             secimComputerLabel.isHidden = false
             secimComputer.isHidden = false

         } else if (secimOyuncu.image == UIImage(named: "tas")) && (secimComputer.image == UIImage(named: "makas")) {
             sonucLabel.text = "Siz kazandınız"
             secimOyuncuLabel.isHidden = false
             secimComputerLabel.isHidden = false
             secimComputer.isHidden = false

         } else if (secimOyuncu.image == UIImage(named: "kagit")) && (secimComputer.image == UIImage(named: "tas")) {
             sonucLabel.text = "Siz kazandınız"
             secimOyuncuLabel.isHidden = false
             secimComputerLabel.isHidden = false
             secimComputer.isHidden = false

         }  else if (secimOyuncu.image == UIImage(named: "kagit")) && (secimComputer.image == UIImage(named: "kagit")) {
             sonucLabel.text = "Sonuç Berabere"
             secimOyuncuLabel.isHidden = false
             secimComputerLabel.isHidden = false
             secimComputer.isHidden = false

         }  else if (secimOyuncu.image == UIImage(named: "kagit")) && (secimComputer.image == UIImage(named: "makas")) {
             sonucLabel.text = "Bilgisayar kazandı"
             secimOyuncuLabel.isHidden = false
             secimComputerLabel.isHidden = false
             secimComputer.isHidden = false

         } else if (secimOyuncu.image == UIImage(named: "makas")) && (secimComputer.image == UIImage(named: "tas")) {
             sonucLabel.text = "Bilgisayar kazandı"
             secimOyuncuLabel.isHidden = false
             secimComputerLabel.isHidden = false
             secimComputer.isHidden = false

         }  else if (secimOyuncu.image == UIImage(named: "makas")) && (secimComputer.image == UIImage(named: "kagit")) {
             sonucLabel.text = "Siz kazandınız"
             secimOyuncuLabel.isHidden = false
             secimComputerLabel.isHidden = false
             secimComputer.isHidden = false

         }  else if (secimOyuncu.image == UIImage(named: "makas")) && (secimComputer.image == UIImage(named: "makas")) {
             sonucLabel.text = "Sonuç berabere"
             secimOyuncuLabel.isHidden = false
             secimComputerLabel.isHidden = false
             secimComputer.isHidden = false
         }
         
        
        
    }
    
    
    @IBAction func secimButton(_ secim: Any) {
        
        if (secim as AnyObject).tag == 1 {
            
            secimTas.isSelected = true
            secimKagit.isSelected = false
            secimMakas.isSelected = false
            secimOyuncu.image = UIImage(named: "tas")
            secimOyuncu.isHidden = true
            secimComputer.isHidden = true
            
        } else if (secim as AnyObject).tag == 2 {
            
            secimTas.isSelected = false
            secimKagit.isSelected = true
            secimMakas.isSelected = false
            secimOyuncu.image = UIImage(named: "kagit")
            secimOyuncu.isHidden = true
            secimComputer.isHidden = true
            
        } else if (secim as AnyObject).tag == 3 {
           
            secimTas.isSelected = false
            secimKagit.isSelected = false
            secimMakas.isSelected = true
            secimOyuncu.image = UIImage(named: "makas")
            secimOyuncu.isHidden = true
            secimComputer.isHidden = true
            
        }
        
        
        
        
        
    }
    
    
    
}

