class Grafo {
    var adjList: [Int: [Int]]

    init() {
        adjList = [Int: [Int]]()
    }

    func agregaArista(from: Int, to: Int) {
        if adjList[from] == nil {
            adjList[from] = [Int]()
        }
        adjList[from]?.append(to)
    }

    func dfs(inicio: Int) -> [Int] {
        var visitados = Set<Int>()
        var resultado = [Int]()
        dfsUtil(nodo: inicio, visitados: &visitados, resultado: &resultado)
        return resultado
    }

    private func dfsUtil(nodo: Int, visitados: inout Set<Int>, resultado: inout [Int]) {
        visitados.insert(nodo)
        resultado.append(nodo)
        
        if let vecinos = adjList[nodo] {
            for vecino in vecinos {
                if !visitados.contains(vecino) {
                    dfsUtil(nodo: vecino, visitados: &visitados, resultado: &resultado)
                }
            }
        }
    }
}

// Ejemplo de uso
let grafo = Grafo()
grafo.agregaArista(from: 0, to: 1)
grafo.agregaArista(from: 0, to: 2)
grafo.agregaArista(from: 1, to: 2)
grafo.agregaArista(from: 2, to: 0)
grafo.agregaArista(from: 2, to: 3)
grafo.agregaArista(from: 3, to: 3)

let resultadoDFS = grafo.dfs(inicio: 2)
print("Recorrido DFS: \(resultadoDFS)")
