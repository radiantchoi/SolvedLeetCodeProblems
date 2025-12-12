
class Trie {
    private let node: TrieNode

    init() {
        self.node = TrieNode()
    }
    
    func insert(_ word: String) {
        var node = node
        let spread = word.map { String($0) }

        for i in 0..<spread.count {
            let letter = spread[i]

            if let childNode = node.children[letter] {
                if i == spread.count - 1 {
                    childNode.isTerminating = true
                }

                node = childNode
            } else {
                let newNode = TrieNode()
                if i == spread.count - 1 {
                    newNode.isTerminating = true
                }

                node.children[letter] = newNode
                node = newNode
            }
        }
    }
    
    func search(_ word: String) -> Bool {
        var node = node

        guard traverse(startsWith: &node, quote: word) else { return false }
        guard node.isTerminating else { return false }

        return true
    }
    
    func startsWith(_ prefix: String) -> Bool {
        var node = node
        return traverse(startsWith: &node, quote: prefix)
    }

    private func traverse(startsWith node: inout TrieNode, quote: String) -> Bool {
        let spread = quote.map { String($0) }

        for letter in spread {
            guard let childNode = node.children[letter] else {
                return false
            }

            node = childNode
        }

        return true
    }
}

class TrieNode {
    var children: [String: TrieNode]
    var isTerminating: Bool

    init(children: [String: TrieNode] = [:], isTerminating: Bool = false) {
        self.children = children
        self.isTerminating = isTerminating
    }
}

/**
 * Your Trie object will be instantiated and called as such:
 * let obj = Trie()
 * obj.insert(word)
 * let ret_2: Bool = obj.search(word)
 * let ret_3: Bool = obj.startsWith(prefix)
 */