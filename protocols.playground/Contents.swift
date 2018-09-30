import Cocoa

func printTable(_ data:[[String]]){
    for row in data{
        var out = "|"
        for item in row {
            out += "\(item)|"
        }
        print(out)
    }
}

let data = [
    ["Joe","30","6"],
    ["Karen", "40", "18"],
    ["Fred","50","20"]
]

printTable(data)
