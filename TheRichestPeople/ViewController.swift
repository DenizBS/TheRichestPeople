//
//  ViewController.swift
//  TheRichestPeople
//
//  Created by Deniz Baran SERBEST on 1.04.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var numbers: [Int] = []
    var Snumbers: [String] = []
    var Years = [info] ()
    var chosenYear : info?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        for i in (2010...2022).reversed() {
            numbers.append(i)
        }
        Snumbers = numbers.map { String($0) }
        
        let Year2022 = info(name: ["","Elon Musk", "Jeff Bezos", "Bernard Arnault", "Bill Gates", "Warren Buffett", "Larry Page", "Sergey Brin", "Larry Ellison", "Steve Ballmer", "Mukesh Ambani"], worth: ["","219 Billion $", "171 Billion $", "158 Billion $", "129 Billion $", "118 Billion $", "111 Billion $", "107 Billion $", "106 Billion $", "91.4 Billion $", "90.7 Billion $"])
        let Year2021 = info(name: ["","Jeff Bezos", "Elon Musk", "Bernard Arnault", "Bill Gates", "Mark Zuckerberg", "Warren Buffett", "Larry Ellison", "Larry Page", "Sergey Brin", "Mukesh Ambani"], worth: ["","177 Billion $", "151 Billion $", "150 Billion $", "124 Billion $", "97.0 Billion $", "96.0 Billion $", "93.0 Billion $", "91.5 Billion $", "89.0 Billion $", "84.5 Billion $"])
        let Year2020 = info(name: ["","Jeff Bezos", "Elon Musk", "Bill Gates", "Bernard Arnault", "Mark Zuckerberg", "Warren Buffett", "Larry Page", "Larry Ellison", "Steve Ballmer", "Sergey Brin"], worth: ["","187 Billion $", "167 Billion $", "131 Billion $", "110 Billion $", "105 Billion $", "85.2 Billion $", "81.4 Billion $", "79.7 Billion $", "79.1 Billion $", "78.8 Billion $"])
        let Year2019 = info(name: ["","Jeff Bezos", "Bill Gates", "Warren Buffett", "Bernard Arnault", "Carlos Slim", "Amancio Ortega", "Larry Ellison", "Mark Zuckerberg", "Michael Bloomberg", "Larry Page"], worth: ["","131 Billion $", "96.5 Billion $", "82.5 Billion $", "76.0 Billion $", "64.0 Billion $", "62.7 Billion $", "62.5 Billion $", "62.3 Billion $", "55.5 Billion $", "50.8 Billion $"])
        let Year2018 = info(name: ["","Jeff Bezos", "Bill Gates", "Warren Buffett", "Bernard Arnault", "Mark Zuckerberg", "Amancio Ortega", "Carlos Slim", "Charles Koch", "David Koch", "Larry Ellison"], worth: ["","112 Billion $", "90.0 Billion $", "84.0 Billion $", "72.0 Billion $", "71.0 Billion $", "70.0 Billion $", "67.1 Billion $", "60.0 Billion $", "60.0 Billion $", "58.5 Billion $"])
        let Year2017 = info(name: ["","Bill Gates", "Warren Buffett", "Jeff Bezos", "Amancio Ortega", "Mark Zuckerberg", "Carlos Slim", "Larry Ellison", "Charles Koch", "David Koch", "Michael Bloomberg"], worth: ["","86.0 Billion $", "75.6 Billion $", "72.8 Billion $", "71.3 Billion $", "56.0 Billion $", "54.5 Billion $", "52.2 Billion $", "48.3 Billion $", "48.3 Billion $", "47.5 Billion $"])
        let Year2016 = info(name: ["","Bill Gates", "Amancio Ortega", "Warren Buffett", "Carlos Slim", "Jeff Bezos", "Mark Zuckerberg", "Larry Ellison", "Michael Bloomberg", "Charles Koch", "David Koch"], worth: ["","75.0 Billion $", "67.0 Billion $", "60.8 Billion $", "50.0 Billion $", "45.2 Billion $", "44.6 Billion $", "43.6 Billion $", "40.0 Billion $", "39.6 Billion $", "39.6 Billion $"])
        let Year2015 = info(name: ["","Bill Gates", "Carlos Slim", "Warren Buffett", "Amancio Ortega", "Larry Ellison", "Charles Koch", "David Koch", "Christy Walton", "Jim Walton", "Liliane Bettencourt"], worth: ["","79.2 Billion $", "77.1 Billion $", "72.7 Billion $", "64.5 Billion $", "54.3 Billion $", "42.9 Billion $", "42.9 Billion $", "41.7 Billion $", "40.6 Billion $", "40.1 Billion $"])
        let Year2014 = info(name: ["","Bill Gates", "Carlos Slim", "Amancio Ortega", "Warren Buffett", "Larry Ellison", "Charles Koch", "David Koch", "Sheldon Adelson", "Christy Walton", "Jim Walton"], worth: ["","76.0 Billion $", "72.0 Billion $", "64.0 Billion $", "58.2 Billion $", "48.0 Billion $", "40.0 Billion $", "40.0 Billion $", "38.0 Billion $", "36.7 Billion $", "34.7 Billion $"])
        let Year2013 = info(name: ["","Carlos Slim", "Bill Gates", "Amancio Ortega", "Warren Buffett", "Larry Ellison", "Charles Koch", "David Koch", "Li Ka-shing", "Liliane Bettencourt", "Bernard Arnault"], worth: ["","73.0 Billion $", "67.0 Billion $", "57.0 Billion $", "53.5 Billion $", "43.0 Billion $", "34.0 Billion $", "34.0 Billion $", "31.0 Billion $", "30.0 Billion $", "29.0 Billion $"])
        let Year2012 = info(name: ["","Carlos Slim", "Bill Gates", "Warren Buffett", "Bernard Arnault", "Amancio Ortega", "Larry Ellison", "Eike Batista", "Stefan Persson", "Li Ka-shing", "Karl Albrecht"], worth: ["","69.0 Billion $", "61.0 Billion $", "44.0 Billion $", "41.0 Billion $", "37.5 Billion $", "36.0 Billion $", "30.0 Billion $", "26.0 Billion $", "25.5 Billion $", "25.4 Billion $"])
        let Year2011 = info(name: ["","Carlos Slim", "Bill Gates", "Warren Buffett", "Bernard Arnault", "Larry Ellison", "Lakshmi Mittal", "Amancio Ortega", "Eike Batista", "Mukesh Ambani", "Christy Walton"], worth: ["","74.0 Billion $", "56.0 Billion $", "50.0 Billion $", "41.0 Billion $", "39.5 Billion $", "31.1 Billion $", "31.0 Billion $", "30.0 Billion $", "27.0 Billion $", "26.5 Billion $"])
        let Year2010 = info(name: ["","Carlos Slim", "Bill Gates", "Warren Buffett", "Mukesh Ambani", "Lakshmi Mittal", "Larry Ellison", "Bernard Arnault", "Eike Batista", "Amancio Ortega", "Karl Albrecht"], worth: ["","53.5 Billion $", "53.0 Billion $", "47.0 Billion $", "29.0 Billion $", "28.7 Billion $", "28.0 Billion $", "27.5 Billion $", "27.0 Billion $", "25.0 Billion $", "23.5 Billion $"])
        
        Years = [Year2022, Year2021, Year2020, Year2019, Year2018, Year2017, Year2016, Year2015, Year2014, Year2013, Year2012, Year2011, Year2010]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = Snumbers[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenYear = Years[indexPath.row]
        performSegue(withIdentifier: "toVC2", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toVC2" {
            let destinationVC = segue.destination as! ViewController2
            destinationVC.selectedYear = chosenYear
        }
    }
    
}

