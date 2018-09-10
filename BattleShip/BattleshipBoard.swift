//
//  BattleshipBoard.swift
//  Battleship
//
//  Created by Reid, Jon Carl on 9/9/18.
//  Copyright © 2018 Reid, Jon Carl. All rights reserved.
//

import Foundation

struct BattleshipBoard: CustomStringConvertible{
   
    var numRows: Int
    var numColumns: Int
    var grid: [[Cell]]
    
    
    var description: String{
        var gridString: String = ""
        
        
        for rowIndex in 0..<numRows{
            gridString += "\n"
            
            for columnIndex in 0..<numColumns{
                gridString += "\(grid[rowIndex][columnIndex])"
            }
            
        
        }
        
        
        
        
        return gridString
    }
    
    init(){
        
        numRows = 10
        numColumns = 10
        grid = [[Cell]]()
        
        for rowIndex in 0...numRows{
            var gridRow: [Cell] = Array()
            
            for columnIndex in 1...numColumns{
                let coordinates =  Coordinates(row: rowIndex, column: columnIndex)
                gridRow.append(Cell(coordinates: coordinates, symbol: "-"))
            }
        grid.append(gridRow)
        }
            
        }
    
    
}
