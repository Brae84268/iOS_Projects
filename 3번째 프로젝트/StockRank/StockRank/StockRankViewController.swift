//
//  StockRankViewController.swift
//  StockRank
//
//  Created by 소프트웨어컴퓨터 on 2024/01/15.
//

import UIKit

class StockRankViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    let stockList: [StockModel] = StockModel.list
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension StockRankViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stockList.count
    
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StockRankCollectionViewCell", for: indexPath) as? StockRankCollectionViewCell else{
            return UICollectionViewCell()
        }
        let stock = stockList[indexPath.item]
        cell.configure(stock)
    
        return cell
    }
}

extension StockRankViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 80)
    }
}
