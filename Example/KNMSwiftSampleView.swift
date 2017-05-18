//
//  KNMSwiftSampleView.swift
//  KNMNibLoadedViews
//
//  Created by Markus Gasser on 14.02.15.
//  Copyright (c) 2015 konoma GmbH. All rights reserved.
//

import Foundation
import KNMNibLoadedViews


@IBDesignable class KNMSwiftSampleView: KNMNibLoadedView {
    
    @IBOutlet fileprivate var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.label.font = UIFont.boldSystemFont(ofSize: 20.0)
    }
}
