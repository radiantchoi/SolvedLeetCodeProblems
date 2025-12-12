class Trie {
    private let node: TrieNode

    init() {
        self.node = TrieNode()
    }
    
    func insert(_ word: String) {
        var node = node

        for letter in word {
            if let childNode = node.children[letter] {
                node = childNode
            } else {
                let newNode = TrieNode()
                node.children[letter] = newNode
                node = newNode
            }
        }

        node.isTerminating = true
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
        for letter in quote {
            guard let childNode = node.children[letter] else {
                return false
            }

            node = childNode
        }

        return true
    }
}

class TrieNode {
    var children: [Character: TrieNode]
    var isTerminating: Bool

    init(children: [Character: TrieNode] = [:], isTerminating: Bool = false) {
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