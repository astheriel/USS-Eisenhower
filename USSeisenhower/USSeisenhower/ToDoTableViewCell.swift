//
//  ToDoTableViewCell.swift
//  USSeisenhower
//
//  Created by daisycutter on 04/04/2018.
//  Copyright © 2018 daisycutter. All rights reserved.
//


import UIKit

protocol TodoCellDelegate {
    func didRequestDelete (_ cell:ToDoTableViewCell)
    func didRequestComplete (_ cell:ToDoTableViewCell)
}

class ToDoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var todoLabel: UILabel!
    
    var delegate:TodoCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func completeTodo(_ sender: Any) {
        if let delegateObject = self.delegate {
            delegateObject.didRequestComplete(self)
        }
    }
    
    @IBAction func deleteTodo(_ sender: Any) {
        if let delegateObject = self.delegate {
            delegateObject.didRequestDelete(self)
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
