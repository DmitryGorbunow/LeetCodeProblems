import Foundation

protocol MyDelegate {
    func my(number: Int)
}


class My: MyDelegate {
    func my(number: Int) {
        print("My number = \(number)")
    }
}

class You {
    var delegate: MyDelegate?
    
    func newMy() {
        delegate?.my(number: 10)
    }
}

let my = My()
let you = You()
you.delegate = my

you.newMy()
// hello

