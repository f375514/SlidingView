//
//  ViewController.swift
//  Alpha01
//
//  Created by Md. Faysal Ahmed on 2/1/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var aView: UIView!
    
    @IBOutlet weak var aViewTrailingConstraint: NSLayoutConstraint!
    
    var items: [UIColor] = [ #colorLiteral(red: 0.9559826255, green: 1, blue: 1, alpha: 1), #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), #colorLiteral(red: 0.1292954087, green: 0.04908708483, blue: 0.5990313292, alpha: 1), #colorLiteral(red: 0.6280214787, green: 0, blue: 0.5465760827, alpha: 1), #colorLiteral(red: 0, green: 0.5852531195, blue: 0, alpha: 1), #colorLiteral(red: 0, green: 0.5352839231, blue: 0.5120356083, alpha: 1), #colorLiteral(red: 0.5745699406, green: 0.002229140839, blue: 0, alpha: 1), #colorLiteral(red: 0.3716196716, green: 0.4066520333, blue: 0.5357112885, alpha: 1), #colorLiteral(red: 0.7282735705, green: 0.7094088197, blue: 0, alpha: 1), #colorLiteral(red: 0.7581916451, green: 0.5256002545, blue: 0.7372977734, alpha: 1), #colorLiteral(red: 0.3721770644, green: 0.7334336638, blue: 0.702003777, alpha: 1), #colorLiteral(red: 0.2638270259, green: 0.2309956253, blue: 0.1985767484, alpha: 1), #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1) ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        collectionView.delegate = self
//        collectionView.dataSource = self
    }
    

    @IBAction func buttonAction(_ sender: Any) {
        
        UIView.animate(withDuration: 0.3) {
            self.aViewTrailingConstraint.constant = self.aViewTrailingConstraint.constant == 0 ? self.view.bounds.width : 0
            self.view.layoutIfNeeded()
        }
    }
    
}


//extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return items.count
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
//        cell.backgroundColor = items[indexPath.row]
//        
//        return cell
//    }
//    
//}
