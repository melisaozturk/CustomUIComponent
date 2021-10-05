//
//  KeyIdentityCustomView.swift
//  IBDesignable
//
//  Created by melisa öztürk on 4.10.2021.
//

import UIKit

@IBDesignable
class KeyIdentityCustomView: UIButton {
    
    @IBInspectable
    var color: UIColor = .white {
        didSet {
            self.backgroundColor = color
        }
    }
    
    @IBInspectable
    var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
    var borderColor: UIColor = .white {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func prepareForInterfaceBuilder() {
        configureView()
    }
    
    private func configureView() {
        self.backgroundColor = color
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
    }
    
}
