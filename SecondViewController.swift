//
//  SecondViewController.swift
//  ProfesstionalTeams
//
//  Created by Sidney Teague on 6/29/23.
//

import UIKit

class SecondViewController: UIViewController {

	@IBOutlet weak var lblProTeams: UILabel!
	
	var team: ProTeams?
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		lblProTeams.text = "Professional \(team?.proName) Team"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
