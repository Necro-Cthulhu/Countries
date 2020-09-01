//
//  ViewController.swift
//  Countries
//
//  Created by Никита Груздев on 06.08.2020.
//  Copyright © 2020 Никита Груздев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let idCell = "Cell"
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var nameArray = [String]()
    var capitalArray = [String]()
    var imageNameArray = [String]()
    var count = Int()
    
    override func viewDidLoad() {
        
        if tableViewOutlet == nil {
            return
        }
        
        // метод для парсинга
        
        func parse() {
            let url = Bundle.main.url(forResource: "countries", withExtension: "json")
            if let url = url
            {
                let data = try? Data(contentsOf: url)
                do {
                    guard let data = data
                        else { return }
                    let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers) as? NSDictionary
                    let countriesArray = json?.value(forKey: "countriesList") as! NSArray
                    count = countriesArray.count
                    
                    for arrayData in countriesArray
                    {
                        let country = arrayData as! [String:Any]
                        guard let name = country["name"]
                            else { return }
                        nameArray.append(name as! String)
                        guard let capital = country["capital"]
                            else{ return }
                        capitalArray.append(capital as! String)
                        guard let imageName = country["imageName"]
                            else{ return }
                        imageNameArray.append(imageName as! String)
                    }
                }
                    
                catch let error as NSError
                {
                    print(error.localizedDescription)
                }
                
            }
        }
        
        super.viewDidLoad()
        tableViewOutlet?.dataSource = self
        tableViewOutlet.delegate = self
        parse()
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: idCell)
        
        cell.textLabel?.text = nameArray[indexPath.row]
        cell.detailTextLabel?.text = capitalArray[indexPath.row]
        cell.imageView?.image = UIImage(named: imageNameArray[indexPath.row])
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailsController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "detailsController") as! CountryViewController
        navigationController?.pushViewController(detailsController, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}

 


