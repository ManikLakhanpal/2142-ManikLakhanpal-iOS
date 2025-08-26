//
//  BookFormViewController.swift
//  tablePractice
//
//  Created by Manik Lakhanpal on 25/08/25.
//

import UIKit

class BookFormViewController: UIViewController {
    
    var book: Book?
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    @IBOutlet weak var lengthTextField: UITextField!
    
    init?(coder: NSCoder, book: Book? = nil) {
        self.book = book
        super.init(coder: coder)
        
    }
    
    required init?(coder: NSCoder) {
        self.book = nil
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    func updateView() {
        guard let book = book else { return }
        
        titleTextField.text = book.title
        authorTextField.text = book.author
        genreTextField.text = book.genre
        lengthTextField.text = book.length
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        guard let title = titleTextField.text, let author = authorTextField.text, let genre = genreTextField.text, let length = lengthTextField.text else { return }
        
        book = Book(author: author, title: title, genre: genre, length: length)
        performSegue(withIdentifier: "unwrapToTableView", sender: self)
        
        
    }
    
}
