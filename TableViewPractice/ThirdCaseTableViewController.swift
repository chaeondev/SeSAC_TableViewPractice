//
//  ThirdCaseTableViewController.swift
//  TableViewPractice
//
//  Created by ChaewonMac on 2023/07/27.
//

import UIKit

class ThirdCaseTableViewController: UITableViewController {
    
    var todoList = ["그립톡 구매하기", "사이다 구매", "아이패드 케이스 최저가 알아보기", "양말"]
    
    @IBOutlet var shoppingTextField: UITextField!
    @IBOutlet var addListView: UIView!
    @IBOutlet var addListButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        designView()
        designTextField()
        designAddButton()
    }
    
    @IBAction func checkButtonTapped(_ sender: UIButton) {
        let notChecked = UIImage(systemName: "checkmark.square")
        let checked = UIImage(systemName: "checkmark.square.fill")
        
        if sender.currentImage == notChecked {
            sender.setImage(checked, for: .normal)
        } else {
            sender.setImage(notChecked, for: .normal)
        }
        
    }
    
    @IBAction func starButtonTapped(_ sender: UIButton) {
        let notStar = UIImage(systemName: "star")
        let star = UIImage(systemName: "star.fill")
        
        if sender.currentImage == notStar {
            sender.setImage(star, for: .normal)
        } else {
            sender.setImage(notStar, for: .normal)
        }
    }
    
    @IBAction func shoppingTextFieldClicked(_ sender: UITextField) {

    }
    
    @IBAction func addListButtonClicked(_ sender: UIButton) {
        guard let text = shoppingTextField.text else {
            return
        }
        
        todoList.insert(text, at: 0)
        tableView.reloadData()
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingCustomCell") as! ShoppingCustomTableViewCell
        cell.backgroundColor = .systemGray6
        cell.layer.borderColor = UIColor.white.cgColor
        cell.layer.borderWidth = 5
        cell.ShoppingContentLabel.text = todoList[indexPath.row]
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
  
    func designView() {
        addListView.layer.cornerRadius = 15
        addListView.layer.borderWidth = 8
        addListView.layer.borderColor = UIColor.white.cgColor
        addListView.backgroundColor = .systemGray6
    }
    
    func designTextField() {
        shoppingTextField.layer.cornerRadius = 10
        shoppingTextField.backgroundColor = .systemGray6
        shoppingTextField.placeholder = "무엇을 구매하실 건가요?"
        shoppingTextField.borderStyle = .none
        
    }
    
    func designAddButton() {
        addListButton.setTitleColor(.black, for: .normal)
//        addListButton.tintColor = .black
        addListButton.layer.cornerRadius = 10
        addListButton.backgroundColor = .systemGray5
    }
}
