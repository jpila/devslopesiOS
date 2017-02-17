//
//  PartyCell.swift
//  Party Rock
//
//  Created by JOSE PILAPIL on 2017-02-17.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
       // videoPreviewImage
//        
//        let url = URL(string: partyRock.imageURL)!
//       
//        DispatchQueue.global().async {
//            do{
//                let data = try Data(contentsOf: url)
//                
//                DispatchQueue.global().sync {
//                    self.videoPreviewImage.image = UIImage(data: data)
//                }
//            } catch {
//                //handle error
//            }
//        }
       
    }
    
}
