//
//  FieldTableViewCell.swift
//  CustomTableViewCell
//
//  Created by Dhika Aditya Are on 08/06/21.
//

import UIKit

class FieldTableViewCell: UITableViewCell, UITextFieldDelegate {

    static let identifier = "FieldTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "FieldTableViewCell", bundle: nil)
    }
    
    @IBOutlet var field: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        field.placeholder = "Enter Something"
        field.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //MARK: return to enter
        textField.resignFirstResponder()
        
        print("\(textField.text ?? "" )")
        return true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //SETELAH ITU MASUK KE VIEW CONTROLER UNTUK REGISTER NIB
}
