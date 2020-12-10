
//
//  PlanetTableViewController.swift
//  Planet_Information
//
//  Created by Chawan Saeed on 12/5/20.
//  Copyright © 2020 Chawan Saeed. All rights reserved.
//

import UIKit

class PlanetTableViewController: UITableViewController {
    
    var planetDetail: [Planets] = [
        Planets(name: "SUN", image: "SUN.jpeg", about: "The Sun is the star at the center of the Solar System. It is a nearly perfect sphere of hot plasma, heated to incandescence by nuclear fusion reactions in its core, radiating the energy mainly as light and infrared radiation. It is by far the most important source of energy for life on Earth. Its diameter is about 1.39 million kilometres (864,000 miles), or 109 times that of Earth, and its mass is about 330,000 times that of Earth. It accounts for about 99.86% of the total mass of the Solar System.[20] Roughly three quarters of the Sun's mass consists of hydrogen (~73%); the rest is mostly helium (~25%), with much smaller quantities of heavier elements, including oxygen, carbon, neon, and iron."),
        Planets(name: "MERCURY", image: "MERCURY.jpg", about: "Mercury is the smallest and innermost planet in the Solar System. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the planets in the Solar System. It is named after the Greek god Hermes (Ερμής), translated into Latin Mercurius Mercury, god of commerce, messenger of the gods, mediator between gods and mortals."),
        
        Planets(name: "VENUS", image: "VENUSS.jpg", about: "Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty. As the second-brightest natural object in Earth's night sky after the Moon, Venus can cast shadows and can be, on rare occasion, visible to the naked eye in broad daylight. Venus lies within Earth's orbit, and so never appears to venture far from the Sun, either setting in the west just after dusk or rising in the east a bit before dawn. Venus orbits the Sun every 224.7 Earth days."),
        
        Planets(name: "EARTH", image: "EARTH.jpg", about: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. About 29% of Earth's surface is land consisting of continents and islands. The remaining 71% is covered with water, mostly by oceans but also lakes, rivers and other fresh water, which together constitute the hydrosphere. Much of Earth's polar regions are covered in ice. Earth's outer layer is divided into several rigid tectonic plates that migrate across the surface over many millions of years. Earth's interior remains active with a solid iron inner core, a liquid outer core that generates Earth's magnetic field, and a convecting mantle that drives plate tectonics."),
        Planets(name: "MOON", image: "MOON.jpeg", about: "The Moon is the rounded astronomical body that orbits Earth, the third planet in the Solar System, as the planet's only natural satellite. The Moon, which is of planetary mass and a rocky silicate composition, has no significant atmosphere, hydrosphere or magnetic field. Its surface gravity is about one-sixth of Earth's, at 0.1654 g. At an average orbital distance to Earth of 384,402 km (238,856 mi),[13][14] 1.28 light-seconds or about 10 times Earth's circumference, its gravitational influence produces the planet's tides, and slightly lengthens Earth's day."),
        Planets(name: "MARS", image: "MARS.jpg", about:    "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury. In English, Mars carries the name of the Roman god of war and is often referred to as the Red Planet. The latter refers to the effect of the iron oxide prevalent on Mars's surface, which gives it a reddish appearance distinctive among the astronomical bodies visible to the naked eye. Mars is a terrestrial planet with a thin atmosphere, with surface features reminiscent of the impact craters of the Moon and the valleys, deserts and polar ice caps of Earth."),
        
        Planets(name: "JUPITER", image: "JUPITER.jpg", about:  "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass one-thousandth that of the Sun, but two-and-a-half times that of all the other planets in the Solar System combined. Jupiter is one of the brightest objects visible to the naked eye in the night sky, and has been known to ancient civilizations since before recorded history. It is named after the Roman god Jupiter. When viewed from Earth, Jupiter can be bright enough for its reflected light to cast visible shadows, and is on average the third-brightest natural object in the night sky after the Moon and Venus."),
        
       Planets(name: "SATURN", image: "SATURN.jpg", about: "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine times that of Earth. It only has one-eighth the average density of Earth; however, with its larger volume, Saturn is over 95 times more massive. Saturn is named after the Roman god of wealth and agriculture; its astronomical symbol (♄) represents the god's sickle. The Romans named the seventh day of the week Saturday, Sāturni diēs (Saturn's Day) no later than the 2nd century for the planet Saturn."),
        
        Planets(name: "URANUS", image: "URANUS.jpg", about:  "Uranus is the seventh planet from the Sun. Its name is a reference to the Greek god of the sky, Uranus, who, according to Greek mythology, was the grandfather of Zeus (Jupiter) and father of Cronus (Saturn). It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. Uranus is similar in composition to Neptune, and both have bulk chemical compositions which differ from that of the larger gas giants Jupiter and Saturn. "),
        
        Planets(name: "NEPTUNE", image: "NEPTUNE.jpg", about: "Neptune is the eighth and farthest-known Solar planet from the Sun. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. It is 17 times the mass of Earth, slightly more massive than its near-twin Uranus. Neptune is denser and physically smaller than Uranus because its greater mass causes more gravitational compression of its atmosphere. The planet orbits the Sun once every 164.8 years at an average distance of 30."),
        
        Planets(name: "PLUTO", image: "PLUTO.jpg", about: "Pluto (minor planet designation: 134340 Pluto) is a dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune. It was the first and the largest Kuiper belt object to be discovered. After Pluto was discovered in 1930 it was declared to be the ninth planet from the Sun. Beginning in the 1990s, its status as a planet was questioned following the discovery of several objects of similar size in the Kuiper belt, including the dwarf planet Eris. This led the International Astronomical Union (IAU) in 2006 to formally define the term planet — excluding Pluto and reclassifying it as a dwarf planet.")]
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
            navigationController?.hidesBarsOnSwipe = false

            tableView.estimatedRowHeight = 366.0
            tableView.reloadData()
            
        }
    
    
   
        override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
            let cellIdentifier = "Cell"
            let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! PlanetTableViewCell
            cell.planetName?.text = planetDetail[indexPath.row].name
            cell.planetImage?.image = UIImage(named: planetDetail[indexPath.row].image)
            
            cell.planetImage.clipsToBounds = true
            cell.planetImage.layer.cornerRadius = 60.0
            
            
            return cell
        }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return planetDetail.count
    }
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
        }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlanetDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
            
          let destinationVC = segue.destinationViewController as! PlanetInformation
             
                destinationVC.planet = planetDetail[indexPath.row]
        
            }

        }
        
    }
    
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
            return .LightContent
        }

    

}
