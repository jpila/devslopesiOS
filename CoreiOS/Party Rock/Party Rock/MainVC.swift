//
//  ViewController.swift
//  Party Rock
//
//  Created by JOSE PILAPIL on 2017-02-17.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let urlTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zZlAzUFjR_w\" frameborder=\"0\" allowfullscreen></iframe>"
        let p1 = PartyRock(imagURL:
            "", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zZlAzUFjR_w\" frameborder=\"0\" allowfullscreen></iframe>\"", videoTitle: "Where the sun goes down")
        partyRocks.append(p1)
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK : TableView Delegate
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if let cell = tableView.dequeueReusableCell(withIdentifier: "identifier", for: indexPath) as? PartyCell {
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            return cell
        }else {
            
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let party = sender as? PartyRock {
                destination.partyRock = party
            }
        }
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
}

