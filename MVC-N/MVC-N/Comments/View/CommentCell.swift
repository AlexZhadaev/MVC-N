//
//  TableViewCell.swift
//  MVC-N
//
//  Created by Жадаев Алексей on 26.05.2021.
//

import UIKit

class CommentCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func configure(with comment: Comment) {
        label.text = comment.name
        textView.text = comment.body
    }
}
