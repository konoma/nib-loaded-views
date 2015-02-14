//
//  KNMSwiftSampleView.swift
//  KNMNibLoadedViews
//
//  Created by Markus Gasser on 14.02.15.
//  Copyright (c) 2015 konoma GmbH. All rights reserved.
//

import Foundation


@IBDesignable class KNMSwiftSampleView: KNMNibLoadedView {
    
    @IBOutlet private var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.label.font = UIFont.boldSystemFontOfSize(20.0)
    }
}
