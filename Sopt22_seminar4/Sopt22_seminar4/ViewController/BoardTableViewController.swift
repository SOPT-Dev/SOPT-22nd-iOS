//
//  BoardTableViewController.swift
//  Sopt22_seminar4
//
//  Created by 이혜진 on 2018. 4. 30..
//  Copyright © 2018년 hyejin. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

// 이미지를 받기위한 Framework
import Kingfisher

class BoardTableViewController: UITableViewController {
    
    var boards: [Board] = [Board]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boardInit()
    }
    
    // MARK: - tableView init
    // 게시판 띄우기
    func boardInit() {
        let URL = "http://13.125.118.111:3009/board"
        
        Alamofire.request(URL, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseData() { res in
            switch res.result {
            case .success:
                if let value = res.result.value {
                    
                    //////// SwiftyJSON : 뭐가 나오는지 확인해주세요 /////////
                    print(JSON(value)["data"][0]["board_content"].string)
                    //////////////////
                    
                    
                    //////// Codable /////////
                    let decoder = JSONDecoder()
                    
                    do {
                        let boardData = try decoder.decode(BoardData.self, from: value)
                        
                        if boardData.message == "Successful Get Board Data" {
                            self.boards = boardData.data
                            self.tableView.reloadData()
                        }
                        
                    } catch {
                        
                    }
                    //////////////////
                }
                
                break
            case .failure(let err):
                print(err.localizedDescription)
                break
            }
        }
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return boards.count
    }
    
    // MARK: abc
    // TODO: def
    // FIXME: tableView cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BoardTableViewCell.reuseIdentifier, for: indexPath) as! BoardTableViewCell
        
        cell.nickNameLabel.text = boards[indexPath.row].user_id
        cell.titleLabel.text = boards[indexPath.row].board_title
        cell.contentLabel.text = boards[indexPath.row].board_content
        
        
        // 받은 날짜를 원하는 포맷에 맞춰 수정
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let date = dateFormatter.date(from: boards[indexPath.row].board_writetime)
        dateFormatter.dateFormat = "MM/dd HH:mm"
        
        cell.dateLabel.text = dateFormatter.string(from: date!)
        
        
        // 이미지 받기
        // with : 이미지 경로
        // placeholder : 경로가 null일 때 기본으로 뜨게 할 이미지(UIImage 타입)
        cell.contentImageView.kf.setImage(with: URL(string: gsno(boards[indexPath.row].board_photo)), placeholder: UIImage())
        
        
        return cell
    }
    
    // 테이블 뷰에서 셀을 터치했을 때 : 게시판 디테일(글 내용, 댓글)뷰가 뜨도록 해주세요.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        
        
        
    }
    
    
}
