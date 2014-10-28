//
//  BiodataDetailVC.swift
//  Biodata-Swift
//
//  Created by Jian Yao Ang on 10/28/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

import UIKit

class BiodataDetailViewController: UIViewController
{
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var schoolLabel: UILabel!
    @IBOutlet var magicLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    @IBOutlet var characterImage: UIImageView!
    
    var biodata:Biodata = Biodata()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        populatingCharactersDetail()
    }

    func populatingCharactersDetail(){
        
        self.nameLabel.text = self.biodata.name
        self.ageLabel.text = String(format: "%i", biodata.age!)
        self.schoolLabel.text = self.biodata.school
        self.magicLabel.text = self.biodata.magic
        self.jobLabel.text = self.biodata.job
        self.characterImage.image = self.biodata.image
    }
    
}
