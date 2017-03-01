//
//  ViewController.swift
//  TacoPOP
//
//  Created by JOSE PILAPIL on 2017-02-25.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate {


 
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var headerView: HeaderView!
    
    
        var ds: DataService = DataService.instance
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        headerView.addDropShadow()
        
        ds.loadDeliciousTacoData()
        ds.tacoArray.Shuffle()
        ds.delegate = self
        collectionView.delegate = self
        collectionView.dataSource = self
        /*
        let nib = UINib(nibName: "TacoCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
 */
        collectionView.register(TacoCell.self)
    }
    
    func deliciousTacoDataLoaded(){
        print("Delicious Taco Data Loaded")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.tacoArray.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     /*   if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
            cell.configureCell(taco: ds.tacoArray[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
 */
         let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as TacoCell
        cell.configureCell(taco: ds.tacoArray[indexPath.row])
        return cell
    }
    
    func
        collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
        cell.shake()
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 95)
    }
    
}

