//
//  BusinessCell.swift
//  Yelp
//
//  Created by Allen Lozano on 10/3/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var picImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var adressLabel: UILabel!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var milesLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    
    var business: Business!{
        didSet{
            nameLabel.text = business.name
            picImageView.setImageWith(business.imageURL!)
            foodLabel.text = business.categories
            adressLabel.text = business.address
            reviewLabel.text = "\(business.reviewCount!) Reviews"
            milesLabel.text = business.distance
        }
    }
    
    override func awakeFromNib() {
        
        
        super.awakeFromNib()
        // Initialization code
        picImageView.layer.cornerRadius = 3
        picImageView.clipsToBounds = true
        nameLabel.preferredMaxLayoutWidth =  nameLabel.frame.size.width
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth =  nameLabel.frame.size.width
        
    
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
