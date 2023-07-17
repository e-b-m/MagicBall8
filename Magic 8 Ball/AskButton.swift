//
//  askButton.swift
//  Magic 8 Ball
//
//  Created by emmab on 17/07/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

@IBDesignable
// allows it to be shown on storyboard
class AskButton: UIButton {

    @IBInspectable var borderWidth: CGFloat = 2.0
    var borderColor = UIColor.white.cgColor

    @IBInspectable var titleText: String?
    // exposes title text on story board - so you can edit values from story board 
    {
        didSet {
            self.setTitle(titleText, for: .normal)
            self.setTitleColor(UIColor.black,for: .normal)
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        setup()
    }

    func setup() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2.0
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWidth
    }
}
