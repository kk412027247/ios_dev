import UIKit

class TodoList: NSObject {
    fileprivate var items:[String?] = []
    
    func add(_ item: String){
        items.append(item)
    }
    
}

extension TodoList: UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection setion: Int) -> Int {
         return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let item = items[indexPath.row]
        cell.textLabel!.text = item
        return cell
    }
}
