//func fib(i: Int) -> Int {
//    if i < 2 { return 1 }
//    else { return fib(i: i - 1) + fib(i: i - 2)}
//}
//
//print(fib(i: 45))


func fib(i: Int) -> Int {
    var arr = [Int]()
    for k in 0...46 {
        if k > 1 {
            arr.append(arr[k-1] + arr[k-2])
        } else if k == 1 {
            arr.append(1)
        } else {
            arr.append(0)
        }
    }
    return arr[i + 1]
}

print(fib(i: 45))

