//
//  PlanetInformation.swift
//  Planet_Information
//
//  Created by Chawan Saeed on 12/5/20.
//  Copyright © 2020 Chawan Saeed. All rights reserved.
//

import UIKit

class PlanetInformation: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var planetImagee: UIImageView!
    @IBOutlet var tableView:UITableView!
   
    var planet: Planets!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.hidesBarsOnSwipe = false
        
        if let imgName = planet {
            planetImagee.image = UIImage(named: imgName.image)
            title = planet.name
        }
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell1", forIndexPath: indexPath) as! PlanetInformationTableViewCell
        
        
        if let planetName = planet {
                cell.planetInformation.text = planetName.about
        }
        
        return cell
    }
    
}
