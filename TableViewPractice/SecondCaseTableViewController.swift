//
//  SecondCaseTableViewController.swift
//  TableViewPractice
//
//  Created by ChaewonMac on 2023/07/27.
//

import UIKit

class SecondCaseTableViewController: UITableViewController {
    

    
    var settingList = [["공지사항", "실험실", "버전 정보"], ["개인/보안", "알림", "채팅", "멅티프로필"], ["고객센터/도움말"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 50
        tableView.backgroundColor = .black
        tableView.separatorColor = .systemGray2
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return settingList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "전체설정"
        } else if section == 1 {
            return "개인설정"
        } else {
            return "기타"
        }
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingList[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        cell.textLabel?.text = settingList[indexPath.section][indexPath.row]
        cell.textLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        cell.textLabel?.textColor = .white
        cell.backgroundColor = .black
        
        return cell
        
    }
    
    
    
}
