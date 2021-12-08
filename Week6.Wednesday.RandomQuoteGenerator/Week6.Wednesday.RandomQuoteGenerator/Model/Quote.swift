//
//  Quote.swift
//  Week6.Wednesday.RandomQuoteGenerator
//
//  Created by Connie Xu on 9/29/21.
//

import Foundation

//data representation
struct Quote {
    let message: String
    
    let author: String
}

//Quote(message: "Hey", author: "Connie")


//WEEK 8 - TABLE VIEWS
// UITableView (container of the scrollable content itself)
// UITableViewCell (individual records)
// Position of cells are important

    //Index Path (section and row; int and index 0)
    // (section: 0, row: 0)
    // (section: 0, row: 1)
    // (section: 0, row: 2)

    // (section: 1, row: 0)
    // (section: 1, row: 1)
    // (section: 1, row: 2)

//can only single column of scrollable information

//different styes (enum numbers assigned to cell style)
//basic style: icon, UILabel
//subtitle style: icon, UILabel, UILabel for subtitle
//right detail value 1 : 2 labels
//left detal value 2: label, action (button)

//class UITableView: UIView {
    // var datasource: UITableVIewDataSource?
//}



