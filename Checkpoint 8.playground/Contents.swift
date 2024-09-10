import UIKit

protocol newHome {
    var rooms: Int {get}
    var cost: Int {get set}
    var agent: String {get}
    func summary ()
}

struct House: newHome {
    var rooms: Int
    var cost: Int
    var agent = "RealEstateAgent 1"
    func summary (){
        print("the House price of the property with \(rooms) rooms is \(cost) which was sold by \(agent).")
    }
}

struct Study: newHome {
    var rooms: Int
    var cost: Int
    var agent = "RealEstateAgent 2"
    func summary (){
        print("the Study price of the property with \(rooms) rooms is \(cost) which was sold by \(agent).")
    }
}

extension House {

    init(room: Int) {
        self.rooms = room
        self.cost = room * 100
        }
    }

extension Study {

    init(room: Int) {
        self.rooms = room
        self.cost = room * 200
        }
    }

let H1 = House(room: 5)
let O1 = Study(room: 3)
H1.summary()
O1.summary()
