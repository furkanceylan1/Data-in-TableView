//
//  ViewController.swift
//  Super Kahramanlar
//
//  Created by Furkan Ceylan on 29.05.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var superHero : [String] = ["Batman","Spider-Man","Hulk","Thor"]
    var superHeroImg : [String] = ["batman","spiderman","hulk","thor"]
    let tableView = UITableView()
    var selectHero = ""
    var selectImg = ""
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHero.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superHero[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            superHero.remove(at: indexPath.row)
            superHeroImg.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.middle)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        view.addSubview(tableView)
        
        self.title = "Super Heroes"
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectImg = superHeroImg[indexPath.row]
        selectHero = superHero[indexPath.row]
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            let destinationVC = segue.destination as! secondViewController
            destinationVC.selectImg = self.selectImg
            destinationVC.selectName = selectHero
        }
    }


}

