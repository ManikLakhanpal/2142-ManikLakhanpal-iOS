//
//  TableViewController.swift
//  tableViewRevision
//
//  Created by Manik Lakhanpal on 21/08/25.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.leftBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        let selected = emojis[indexPath.row]
        
        content.text = "\(selected.symbol) - \(selected.name)"
        content.secondaryText = selected.description
        
        cell.contentConfiguration = content
        cell.showsReorderControl = true
         

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Edit", sender: indexPath)
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            emojis.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
            emojis.insert(emojis[indexPath.row], at: indexPath.row)
            tableView.insertRows(at: [indexPath], with: .automatic)
        }
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        
        let temp = emojis[fromIndexPath.row]
        emojis[fromIndexPath.row] = emojis[to.row]
        emojis[to.row] = temp

    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        
        if indexPath.row % 2 == 0 {
            return .delete
        } else {
            return .insert
        }
    }
    
    @IBSegueAction func addEditEmoji(_ coder: NSCoder, sender: Any?) -> EditTableViewController? {
        if let indexPath = sender as? IndexPath {
            let emojiToEdit = emojis[indexPath.row]
            return EditTableViewController(coder: coder, emoji: emojiToEdit)
        } else {
            // For "Add" button case (no existing emoji)
            return EditTableViewController(coder: coder, emoji: nil)
        }
    }
    
    @IBAction func unwindToEmojiTable(_ segue: UIStoryboardSegue) {
        
    }
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
