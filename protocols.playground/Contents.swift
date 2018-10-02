import Cocoa


//let data = [
//    ["Joe","30","6"],
//    ["Karen", "40", "18"],
//    ["Fred","50","20"]
//]
//
//
//printTable(data, withColumnLabels: "Employee Name", "Age", "Years of Exprience")

struct Person{
    let name: String
    let age: Int
    let yearsofExpreience: Int
}


protocol TabularDataSource: CustomStringConvertible {
    var numberOfRows: Int{get}
    var numberofColumns: Int{get}
    
    func label(forColumn column: Int) -> String
    
    func itemFor(row: Int, column: Int) -> String
}

struct Department: TabularDataSource {
    let name: String
    var people = [Person]()
    
    
    init(name: String){
        self.name = name
        
    }
    
    mutating func add(_ person: Person){
        people.append(person)
    }
    
    var numberOfRows: Int{
        return people.count
    }
    
    var numberofColumns: Int {
        return 3
    }
    
    var description: String {
        return "Department (\(name)))"
    }
    
    
    func label(forColumn column: Int) -> String {
        switch column {
        case 0: return "Employee Name"
        case 1: return "Age"
        case 2: return "Years of Experience"
        default: fatalError("Invalid column!")
        }
    }
    
    func itemFor(row: Int, column: Int) -> String {
        let person = people[row]
        switch column {
        case 0: return person.name
        case 1: return String(person.age)
        case 2: return String(person.yearsofExpreience)
        default: fatalError("Invalid column!")
        }
    }
    
    
    
    
}

var department = Department(name: "Enginerring")


department.add(Person(name:"Joe", age:30, yearsofExpreience: 6))
department.add(Person(name:"Karen", age:40, yearsofExpreience: 18))
department.add(Person(name:"Fred", age:50, yearsofExpreience: 20))




//func printTable(_ data:[[String]], withColumnLabels columnLabels: String...){
func printTable(_ dataSource: TabularDataSource){
    print("Table: \(dataSource.description)")
    
    var firstRow = "|"
    
    var columnWidths = [Int]()
    
//    for columnLabel in columnLabels{
    for i in 0 ..< dataSource.numberofColumns{
        let columnLabel =  dataSource.label(forColumn: i)
        let columnHeader = " \(columnLabel) |"
        firstRow += columnHeader
        columnWidths.append(columnLabel.count)
    }
    
    print(firstRow)
    
//    for row in data{
    for i in 0 ..< dataSource.numberOfRows{
        var out = "|"
//        for (j, item) in row.enumerated() {
        for j in 0 ..< dataSource.numberofColumns{
        
            let item = dataSource.itemFor(row: i, column: j)
            let paddingNeeded = columnWidths[j] - item.count
            let padding = repeatElement(" ", count: paddingNeeded).joined(separator: "")
            out += " \(padding)\(item) |"
        }
        print(out)
    }
}

printTable(department)

