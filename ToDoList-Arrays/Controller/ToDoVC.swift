//
//  ViewController.swift
//  ToDoList-Arrays
//
//  Created by Andrew Taylor on 16/03/2018.
//  Copyright © 2018 Andrew Taylor. All rights reserved.
//

import UIKit

class ToDoVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var toDoItemsArray: [String] = ["item1","item2","item3"]
    
    @IBOutlet weak var toDoTable: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoItemsArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        let text = toDoItemsArray[indexPath.row]
        print(text)
        cell.textLabel?.text = text
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print(toDoItemsArray)
        // Add this
        toDoTable.delegate = self
        toDoTable.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

