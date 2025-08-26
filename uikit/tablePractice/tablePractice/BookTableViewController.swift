//
//  BookTableViewController.swift
//  tablePractice
//
//  Created by Manik Lakhanpal on 25/08/25.
//

import UIKit

class BookTableViewController: UITableViewController {
    
    var books: [Book] = []

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)

        let book = books[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = book.title
        content.secondaryText = book.description
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let book = books[indexPath.row]
        performSegue(withIdentifier: "EditBookSegue", sender: book)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EditBookSegue",
           let destination = segue.destination as? BookFormViewController,
           let book = sender as? Book {
            destination.book = book
        }
    }
    
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        guard let source = segue.source as? BookFormViewController, let book = source.book else { return }
        
        if let indexPath = tableView.indexPathForSelectedRow {
            books.remove(at: indexPath.row)
            books.insert(book, at: indexPath.row)
            
            tableView.deselectRow(at: indexPath, animated: true)
        } else {
            books.append(book)
        }
    }

}
