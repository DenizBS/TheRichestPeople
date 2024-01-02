//
//  ViewController2.swift
//  TheRichestPeople
//
//  Created by Deniz Baran SERBEST on 1.04.2023.
//

import UIKit

class ViewController2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView2: UITableView!
    let column1 = ["RANK", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    var column2: [String] = []
    var column3: [String] = []
    var selectedYear: info?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView2.delegate = self
        tableView2.dataSource = self
        
        tableView2.register(CustomTableViewCell.self, forCellReuseIdentifier: "CustomCell")
        
        column2 = selectedYear!.name
        column3 = selectedYear!.worth
        column2[0] = "NAME"
        column3[0] = "NET WORTH"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return column1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2 = tableView2.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomTableViewCell
        cell2.column1Label.text = column1[indexPath.row]
        cell2.column2Label.text = column2[indexPath.row]
        cell2.column3Label.text = column3[indexPath.row]
        return cell2
    }
    
    class CustomTableViewCell: UITableViewCell {
        
        let column1Label = UILabel()
        let column2Label = UILabel()
        let column3Label = UILabel()
        
        override func layoutSubviews() {
            super.layoutSubviews()
            
            let contentViewWidth = contentView.frame.width
            
            column1Label.frame = CGRect(x: 0, y: 0, width: contentViewWidth / 7, height: contentView.frame.height)
            column2Label.frame = CGRect(x: contentViewWidth / 7, y: 0, width: contentViewWidth * 3/7, height: contentView.frame.height)
            column3Label.frame = CGRect(x: contentViewWidth * 4/7, y: 0, width: contentViewWidth * 3/7, height: contentView.frame.height)
            
            column1Label.textAlignment = .center
            column2Label.textAlignment = .center
            column3Label.textAlignment = .center
            
            contentView.addSubview(column1Label)
            contentView.addSubview(column2Label)
            contentView.addSubview(column3Label)
        }
        
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
    
}
