//
//  ViewController.swift
//  QRScannerExample
//
//  Created by Hussein on 3/20/18.
//  Copyright © 2018 Hussein. All rights reserved.
//

import UIKit
import QRCodeScannerFramework

class ViewController: UIViewController {
    
    let vc = QRScannerController()
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    @IBAction func scanButton(_ sender: UIButton) {
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        vc.qrScannerDelegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
}
extension ViewController: QrScannerDelegate {
    func getScannedData(data: String) {
        resultsLabel.text = data
    }
}


