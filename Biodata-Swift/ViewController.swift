//
//  ViewController.swift
//  Biodata-Swift
//
//  Created by Jian Yao Ang on 10/28/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var biodataTableView: UITableView!
    var biodata = NSArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createBiodataList()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    func createBiodataList()
    {
        var biodata1 = Biodata()
        biodata1.name = "Albus"
        biodata1.age = 12
        biodata1.job = "Professor"
        biodata1.school = "Hogwarts"
        biodata1.magic = "Confundo"
        biodata1.image = UIImage(named: "Albus")
        
        var biodata2 = Biodata()
        biodata2.name = "Voldermort"
        biodata2.age = 22
        biodata2.job = "Master of Dark Arts"
        biodata2.school = "Hogwarts"
        biodata2.magic = "Avada Kedavra"
        biodata2.image = UIImage(named: "Voldermort")
        
        var biodata3 = Biodata()
        biodata3.name = "Harry"
        biodata3.age = 19
        biodata3.job = "Student"
        biodata3.school = "Hogwarts"
        biodata3.magic = "Expelliarmus"
        biodata3.image = UIImage(named: "Harry")
        
        biodata = [biodata1, biodata2, biodata3]
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return biodata.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var theBiodata = Biodata()
        theBiodata = biodata[indexPath.row] as Biodata
        
        var cell = tableView.dequeueReusableCellWithIdentifier("biodataCell") as UITableViewCell
        
        cell.textLabel.text = theBiodata.name
        cell.detailTextLabel!.text = theBiodata.job
        
        return cell
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)
    {
        if segue.identifier == "ToBiodataDetailVC"
        {
            let indexPath = self.biodataTableView.indexPathForSelectedRow()
            var biodata: Biodata = self.biodata[indexPath!.row] as Biodata
            
            var biodataDetailVC:BiodataDetailViewController = BiodataDetailViewController()
            biodataDetailVC = segue.destinationViewController as BiodataDetailViewController
            biodataDetailVC.biodata = biodata
            
        }
    }
    
}

