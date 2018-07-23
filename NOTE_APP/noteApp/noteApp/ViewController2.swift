//
//  ViewController2.swift
//  noteApp
//
//  Created by Sayed Abdo on 6/23/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import UIKit
import CoreData
class ViewController2: UIViewController,UITableViewDelegate , UITableViewDataSource {
    @IBOutlet weak var tvlistNotes: UITableView!
    var lisNotes = [MyNotes]();
    override func viewDidLoad() {
        
        super.viewDidLoad()
        loadNotes()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lisNotes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:NoteCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NoteCell
        cell.SetCell(note: lisNotes[indexPath.row])
        return cell
    }
    
    @IBAction func buBack(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    func loadNotes() {
        let fetchRequest:NSFetchRequest<MyNotes> = MyNotes.fetchRequest()
        do{
            lisNotes = try context.fetch(fetchRequest)
            tvlistNotes.reloadData()
        }catch{
        
        }
        
    }
}
