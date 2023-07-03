//
//  ViewController.swift
//  ProfesstionalTeams
//
//  Created by Sidney Teague on 6/29/23.
//

import UIKit

class ProTeams {
	var proName: String?
	var proCategory: String?
	
	init(prName:String, prCategory:String) {
		self.proName = prName
		self.proCategory = prCategory
	}
}
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return teamArray.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		var cell = tableView.dequeueReusableCell(withIdentifier: "teamstable")
		if cell == nil {
			cell = UITableViewCell(style: .subtitle, reuseIdentifier: "teamstable")
		}
		cell?.textLabel?.text = teamArray[indexPath.row].proName
		cell?.detailTextLabel?.text = teamArray[indexPath.row].proCategory
		
		return cell!
	}
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
		performSegue(withIdentifier: "showdetail", sender: self)
	}

	@IBOutlet weak var tblProTeams: UITableView!
	
	var teamArray = [ProTeams]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		
		//array of professional teams and categories
		let panthers = ProTeams(prName: "Carolina Panthers", prCategory: "Football")
		teamArray.append(panthers)
		let braves = ProTeams(prName: "Atlanta Braves", prCategory: "Baseball")
		teamArray.append(braves)
		let canes = ProTeams(prName: "Carolina Hurricanes", prCategory: "Hockey")
		teamArray.append(canes)
		let cltfc = ProTeams(prName: "Charlotte FC", prCategory: "Soccer")
		teamArray.append(cltfc)
		let lakers = ProTeams(prName: "Los Angeles Lakers", prCategory: "Basketball")
				teamArray.append(lakers)
		let redsox = ProTeams(prName: "Boston Red Sox", prCategory: "Baseball")
		teamArray.append(redsox)
		let pengu = ProTeams(prName: "Pittsburgh Penguins", prCategory: "Hockey")
		teamArray.append(pengu)
		let hornets = ProTeams(prName: "Charlotte Hornets", prCategory: "Basketball")
		teamArray.append(hornets)
		let cfc = ProTeams(prName: "Chelsea FC", prCategory: "Soccer")
		teamArray.append(cfc)
		let niners = ProTeams(prName: "San Franciso 49ers", prCategory: "Football")
		teamArray.append(niners)
		
		tblProTeams.dataSource = self
		tblProTeams.delegate = self
	}

}

