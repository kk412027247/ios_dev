import Cocoa

enum Token {
    case number(Int)
    case plus
}

class Lexer {
    let input: String
    var position: String.Index
    init (input: String){
        self.input = input
        self.position = self.input.startIndex
    }
    
    func peek() -> Character? {
        if position < input.endIndex {
             return input[position]
        }else{
            return nil
        }
    }
    
    func advance() {
        assert(position < input.endIndex, "Cannot advance past endIndex!")
        position = input.index(after: position)
    }
    
    func getNumber() -> Int {
        var value = 0
        while let nextCharacter = peek() {
            switch nextCharacter {
            case "0" ... "9":
                let digitValue = Int(String(nextCharacter))!
                value = 10*value + digitValue
                advance()
            default:
                return value
            }
        }
        return value
    }
   
    
    
    func lex() throws -> [Token] {
        var tokens = [Token]()
        while let nextCharacter = peek(){
            switch nextCharacter {
            case "0" ... "9":
                let value = getNumber()
                tokens.append(.number(value))
            case "+":
                tokens.append(.plus)
                advance()
                
            case " ":
                advance()
                
            default:
                throw Lexer.Error.invalidCharacter(nextCharacter)
            }
        }
        return tokens
    }
    
}
