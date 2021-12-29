//
//  main.swift
//  NanoChallenge
//
//  Created by Alanoud Mana on 25/05/1443 AH.
//

import Foundation

var myArr2 = [String]()
var listname = String()

print("-----WELCOME IN TO BE DONE-----")

main()

func main() {
    print("------------------------------------------")
    print("What Do You Want to Do?")
    print("------------------------------------------")
    print("1-Create a List")
    print("2-Remove a Completed Task")
    print("3-View My List")
    print("4-Exit")
    
    
    let userupdate = readLine()
    
    switch(userupdate){
        
        
    case ("1") :
        creatList()
        main()
        
    case ("2") :
        updateList()
        main()
        
    case ("3") :
        if (myArr2.count > 0){
            print(myArr2)}
        else{print("------------------------------------------")
            print("You Dont Have a List")
        }
        main()
        
    case ("4"):
        print("Exit")
        
    default:
        print("Invalid Choise")
    }
    
}



func creatList() -> ([String] , String)? {
    
    print("Name Your List")
    let listname = readLine()
    print("How Many Tasks You Will Add?")
    let tasksNum = Int(readLine()!)
    
    var i = 1
    while (i <= tasksNum!) {
        i = i + 1
        
        print("Enter Your Task")
        let taskOne = readLine()
        myArr2.append("\(taskOne!)") }
    
    print("\(listname!) List Have Been Created Successfully!")
    print("------------------------------------------")
    return(myArr2 , listname) as! ([String], String)
    
    
    
}




func updateList(){
    
    
    
    if (myArr2.count > 0){
        print("What Task Have You Completed")
        print("------------------------------------------")
        print(myArr2)
        
        let finshiedTask = readLine()
        
        
        
        switch(finshiedTask){
            
            
        case (myArr2[0]) :
            myArr2.remove(at: 0)
            
        case (myArr2[1]) :
            myArr2.remove(at: 1)
            
            
        case (myArr2[2]) :
            myArr2.remove(at: 2)
            
        case (myArr2[3]) :
            myArr2.remove(at: 3)
            
        default:
            print("None exist Task")
        }
        
        
        print(myArr2)
        
        print("Congratulations Your Tasks Almost Done!")
        
        
        
    }
    else {
        print("------------------------------------------")
        print("You Don't Have a List")
        
        
        
    }}

