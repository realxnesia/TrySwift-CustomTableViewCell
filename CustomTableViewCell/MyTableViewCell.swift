//
//  MyTableViewCell.swift
//  CustomTableViewCell
//
//  Created by Dhika Aditya Are on 08/06/21.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    //MARK: Wajib ada xib
    static let identifier = "MyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }
    
    public func configure(with title: String, imageName: String){
        myLabel.text = title
        myImageView.image = UIImage(systemName: imageName)
    }
    //MARK: End Wajib data
    
    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
